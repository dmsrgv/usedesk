import 'dart:typed_data';

import 'package:usedesk/src/data/models/messages/usedesk_message.dart';

import 'data/interfaces/usedesk_chat_socket_callbacks.dart';
import 'data/models/_converters/message.dart';
import 'data/models/api/additional_fields/additional_fields_request.dart';
import 'data/models/configuration/chat_api_configuration.dart';
import 'data/models/configuration/identify_configuration.dart';
import 'data/models/socket/error/error_response.dart';
import 'data/models/socket/inited/inited_request.dart';
import 'data/models/socket/inited/inited_response.dart';
import 'data/models/socket/message/message_request.dart';
import 'data/models/socket/message/message_response.dart';
import 'data/models/socket/set_client/set_client_request.dart';
import 'data/models/socket/set_client/set_client_response.dart';
import 'data/resources/usedesk_chat_repository.dart';
import 'data/resources/usedesk_chat_socket_provider.dart';
import 'data/resources/usedesk_chat_storage_provider.dart';
import 'utils/network.dart';

class UsedeskChatNetwork implements UsedeskChatSocketCallbacks {
  UsedeskChatNetwork({
    required this.repository,
    required this.storage,
    required this.apiConfig,
    required this.companyId,
    required this.channelId,
    required this.debug,
    required String? token,
  }) : _clientToken = token {
    _socket = UsedeskChatSocketProvider(
      apiConfig: apiConfig,
      callbacks: this,
      debug: debug,
    );
  }

  final UsedeskChatRepository repository;
  final UsedeskChatStorageProvider storage;
  final ChatApiConfiguration apiConfig;
  final String companyId;
  final String? channelId;
  final bool debug;

  late UsedeskChatSocketProvider _socket;
  String? _clientToken;
  IdentifyConfiguration? _identify;
  bool _isInited = false;

  bool get isConnected => _socket.isConnected;

  String? get token => _clientToken;

  bool get isInited => _isInited;

  set identify(IdentifyConfiguration? config) {
    _identify = config;
  }

  void init() async {
    _socket.init();
  }

  void connect() {
    _socket.connect();
  }

  void disconnect() {
    _socket.disconnect();
  }

  void dispose() {
    _socket.dispose();
  }

  void sendText(String text, int? localId) {
    if (text.isEmpty) {
      return;
    }
    _socket.send(
      MessageRequest(
        message: MessageRequestTextMessage(
          text: text,
          payload: localId != null
              ? MessageRequestTextMessagePayload(
                  messageId: localId.toString(),
                )
              : null,
        ),
      ).toJson(),
    );
  }

  Future<bool> sendFile(
    String filename,
    Uint8List bytes,
    int? localId, {
    void Function(double percentage)? progress,
  }) async {
    if (_clientToken == null) {
      return Future.value(false);
    }
    return Network.uploadFiles(
      url: apiConfig.urlToSendFile,
      fields: {
        'chat_token': _clientToken!,
        if (localId != null) 'message_id': localId.toString(),
      },
      files: [
        NetworkFileField(
          filename: filename,
          bytes: bytes,
          fieldName: 'file',
          tempPath: await storage.prepareUploadCache(filename, bytes),
        )
      ],
      progress: (receivedLength, contentLength) {
        var percentage = receivedLength / contentLength * 100;
        percentage = percentage % 1 == 0
            ? double.parse(percentage.toStringAsFixed(0))
            : double.parse(percentage.toStringAsFixed(2));

        progress?.call(percentage);
      },
    );
  }

  @override
  void onConnect() {
    if (debug) {
      print('[UsedeskChat] socket connected');
    }

    final combinedCompanyId = (channelId?.isNotEmpty ?? false)
        ? '${companyId}_$channelId'
        : companyId;

    _socket.send(
      InitedRequest(
        companyId: combinedCompanyId,
        url: apiConfig.urlChat,
        token: _clientToken,
        payload: InitedRequestPayload(
            //   sdk: 'Flutter ${getOperatingSystem()}',
            ),
      ).toJson(),
    );
  }

  @override
  void onDisconnect() {
    if (debug) {
      print('[UsedeskChat] socket disconnect');
    }
    repository.markFailedMessages();
    repository.saveFailedMessages();
  }

  @override
  void onConnectError(dynamic error) {
    print('[UsedeskChat] error: $error');
  }

  @override
  void onInited(InitedResponse response) {
    if (response.token.isNotEmpty) {
      _setToken(response.token);
    }

    repository.initMessages(
      response.setup.messages
          .where((message) {
            // Temporary ignore online status message
            return !(message.file == null && (message.text?.isEmpty ?? true));
          })
          .map(MessageConverter.convertToTypedMessage)
          .toList(),
    );

    if (_identify != null) {
      _socket.send(
        SetClientRequest(
          payload: SetClientRequestPayload(
            token: _clientToken,
            email: _identify!.email,
            username: _identify!.name,
            phone: _identify!.phoneNumber,
            additionalId: _identify!.additionalId,
          ),
        ).toJson(),
      );
    }
    _isInited = true;
  }

  @override
  void onError(ErrorResponse response) {
    print(response);
  }

  @override
  void onMessage(MessageResponse response) {
    // Temporary ignore online status message
    if (response.message.file == null &&
        (response.message.text?.isEmpty ?? true)) {
      return;
    }

    repository.addMessage(
      MessageConverter.convertToTypedMessage(response.message),
    );
  }

  @override
  void onSetClient(SetClientResponse response) {
    if (response.state.client.token != null) {
      _setToken(response.state.client.token!);
    }
  }

  @override
  void onFeedback(Map<String, dynamic> rawData) {
    throw Exception('Feedback response now not supports');
  }

  Future<void> _setToken(String token) async {
    _clientToken = token;
  }

  Future<void> reSendMessages() async {
    List<UsedeskMessage> messages = await repository.cachedMessages();
    if (messages.isEmpty) {
      messages = repository.failedMessages();
    }
    for (final message in messages) {
      repository.addToQueueForDeletion(message);
      if (message.text == null) break;

      sendText(message.text!, message.localId);
    }
  }

  Future<void> sendAdditionalFields({required Map<int, String> fields}) async {
    if (_clientToken == null || fields.isEmpty || !isConnected) {
      return;
    }
    int statusCode = 429;

    final fieldsItems = fields.entries
        .map((entry) => AdditionalFieldsItemRequest(
              id: entry.key.toString(),
              value: entry.value,
            ))
        .toList();
    try {
      do {
        final response = await Network.post(
          '${apiConfig.urlApi}/v1/addFieldsToChat',
          AdditionalFieldsRequest(
            chatToken: _clientToken!,
            additionalFields: fieldsItems,
          ).toJson(),
        );

        statusCode = response.statusCode;

        await Future.delayed(Duration(seconds: 1));
      } while (statusCode != 200);
    } catch (_) {
      rethrow;
    }
  }
}
