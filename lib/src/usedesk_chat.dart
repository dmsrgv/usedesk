import 'dart:async';
import 'dart:typed_data';

import 'package:filesize/filesize.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart' as p;
import 'package:usedesk/src/data/models/messages/usedesk_message.dart';

import 'usedesk_chat_network.dart';
import 'data/models/configuration/chat_api_configuration.dart';
import 'data/models/configuration/identify_configuration.dart';
import 'data/models/messages/base.dart';
import 'data/models/socket/message.dart';
import 'data/resources/usedesk_chat_repository.dart';
import 'data/resources/usedesk_chat_storage_provider.dart';

class UsedeskChat {
  UsedeskChat._({
    required UsedeskChatNetwork api,
    required UsedeskChatRepository repository,
    required this.debug,
  })  : _api = api,
        _repository = repository;

  final UsedeskChatNetwork _api;
  final UsedeskChatRepository _repository;
  final bool debug;

  List<UsedeskMessage> get messages => _repository.messages;
  Stream<UsedeskMessage> get onMessageStream => _repository.onMessageStream;
  Stream<List<UsedeskMessage>> get messagesStream => _repository.messagesStream;

  static Future<UsedeskChat> init({
    required UsedeskChatStorageProvider storage,
    required String token,
    required String companyId,
    String? channelId,
    ChatApiConfiguration apiConfig = const ChatApiConfiguration(),
    bool debug = false,
  }) async {
    final repository = UsedeskChatRepository(
      storage: storage is UsedeskChatCachedStorage ? storage : null,
    );
    final api = UsedeskChatNetwork(
      repository: repository,
      storage: storage,
      companyId: companyId,
      channelId: channelId,
      apiConfig: apiConfig,
      token: token,
      debug: debug,
    )..init();
    return UsedeskChat._(
      api: api,
      repository: repository,
      debug: debug,
    );
  }

  set identify(IdentifyConfiguration config) {
    _api.identify = config;
  }

  set additionalFields(Map<String, String> fields) {
    _api.additionalFields = fields;
  }

  void connect() {
    _api.connect();
  }

  void disconnect() {
    _api.disconnect();
  }

  void sendText(String text, [int? localId]) {
    if (localId != null) {
      _repository.addMessage(UsedeskMessage(
        id: -localId,
        localId: localId,
        createdAt: DateTime.now(),
        text: text,
        status: _api.isConnected
            ? MessageSentStatus.sending
            : MessageSentStatus.failed,
        buttons: [],
        fromClient: true,
      ));
      _repository.saveFailedMessages();
    }
    if (_api.isConnected) {
      _api.sendText(text, localId);
    }
  }

  Future<bool> sendFile(
    String filename,
    Uint8List bytes, [
    int? localId,
  ]) async {
    _validateConnect();
    StreamController<double>? uploadProgress;
    Stream<double>? uploadProgressStream;
    if (localId != null) {
      final mime = lookupMimeType(filename) ?? '';
      final extension = p.extension(filename);

      final file = MessageFile(
        name: filename,
        size: filesize(bytes.length),
        content: '__loading__',
        type: extension,
        bytes: bytes,
      );
      final status = _api.isConnected
          ? MessageSentStatus.sending
          : MessageSentStatus.failed;

      uploadProgress = StreamController<double>()..add(0);
      uploadProgressStream = uploadProgress.stream.asBroadcastStream();

      if (mime.startsWith('image')) {
        _repository.addMessage(
          UsedeskMessage(
            id: -localId,
            localId: localId,
            createdAt: DateTime.now().toUtc(),
            file: file,
            status: status,
            uploadProgress: uploadProgressStream,
            fromClient: true,
          ),
        );
      } else {
        _repository.addMessage(
          UsedeskMessage(
            id: -localId,
            localId: localId,
            createdAt: DateTime.now().toUtc(),
            file: file,
            status: status,
            uploadProgress: uploadProgressStream,
            fromClient: true,
          ),
        );
      }
    }
    bool result = true;

    Future<void> close() async {
      uploadProgress?.close();
      return _repository.storage?.removeUploadCache(filename);
    }

    try {
      result = await _api.sendFile(
        filename,
        bytes,
        localId,
        progress: (percentage) async {
          if (!(uploadProgress?.isClosed ?? true)) {
            uploadProgress?.add(percentage);
          }

          if (percentage == 100) {
            await close();
          }
        },
      );
    } catch (_) {
      await close();
    }
    return result;
  }

  Future<void> reset() async {
    _api.identify = null;
    if (_api.storage is UsedeskChatCachedStorage) {
      (_api.storage as UsedeskChatCachedStorage).clearMessages();
    }
  }

  void dispose() {
    _repository.dispose();
    _api.dispose();
  }

  void _validateConnect() {
    if (!_api.isConnected) {
      throw Exception('UsedeskChat not connected');
    }
  }
}
