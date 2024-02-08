import 'dart:async';
import 'dart:convert';

import 'package:usedesk/src/data/models/messages/base.dart';
import 'package:usedesk/src/data/models/messages/usedesk_message.dart';
import 'package:usedesk/src/data/resources/usedesk_chat_storage_provider.dart';

class UsedeskChatRepository {
  UsedeskChatRepository({
    required this.storage,
  });

  bool _disposed = false;
  final UsedeskChatCachedStorage? storage;

  final List<UsedeskMessage> _messages = [];
  final List<UsedeskMessage> _queueForDeletion = [];
  final _onMessageStreamController =
      StreamController<UsedeskMessage>.broadcast();
  final _messagesController =
      StreamController<List<UsedeskMessage>>.broadcast();

  List<UsedeskMessage> get messages => _messages;
  Stream<UsedeskMessage> get onMessageStream =>
      _onMessageStreamController.stream.asBroadcastStream();
  Stream<List<UsedeskMessage>> get messagesStream =>
      _messagesController.stream.asBroadcastStream();

  void initMessages(List<UsedeskMessage> messages) {
    final failedMessages = _messages
        .whereType<UsedeskMessage>()
        .where((message) => message.status == MessageSentStatus.failed)
        .toList();
    if (_messages.isNotEmpty) {
      _messages.clear();
    }
    if (messages != _messages) {
      _messages.addAll({...messages, ...failedMessages});
      _messagesController.sink.add(_messages);
    }
  }

  void addMessage(UsedeskMessage message) {
    final index = _messages.indexWhere((existMessage) {
      if (message.fromClient && existMessage.fromClient) {
        final clientMessage = message;
        final clientExistMessage = existMessage;
        if (clientMessage.localId != null &&
            clientExistMessage.localId != null) {
          return clientMessage.localId == clientExistMessage.localId;
        }
      }
      return message.id == existMessage.id;
    });
    if (index == -1) {
      _messages.add(message);
    } else {
      _messages[index] = message;
    }
    _onMessageStreamController.sink.add(message);
    _messagesController.sink.add(_messages);

    if (storage != null && message.localId != null && message.fromClient) {
      final clientMessage = message;
      final cachedMessageIndex = _queueForDeletion.indexWhere(
          (messageForDeletion) =>
              messageForDeletion.localId == clientMessage.localId);

      if (cachedMessageIndex == -1) {
        return;
      }
      final cachedMessage = _queueForDeletion[cachedMessageIndex];
      if (cachedMessage.localId != null &&
          clientMessage.status == MessageSentStatus.success) {
        storage!.removeMessage(cachedMessage.localId!);
        _queueForDeletion.removeAt(cachedMessageIndex);
      }
    }
  }

  void markFailedMessages() {
    for (int i = 0; i < _messages.length; i++) {
      final message = _messages[i];
      if (message.status == MessageSentStatus.sending &&
          message.localId != null &&
          message.fromClient) {
        _messages[i] = message.copyWith(
          status: MessageSentStatus.failed,
        );
      }
    }
    if (!_disposed) {
      _messagesController.sink.add(_messages);
    }
  }

  void saveFailedMessages() {
    if (storage == null) {
      return;
    }
    final messages = _messages
        .whereType<UsedeskMessage>()
        .where((message) => message.status == MessageSentStatus.failed);
    storage!.cacheMessages([
      for (final message in messages)
        if (message.localId != null)
          UsedeskChatCacheMessage(
            localId: message.localId!,
            json: jsonEncode(message.toJson()),
          )
    ]);
  }

  List<UsedeskMessage> failedMessages() {
    return _messages
        .whereType<UsedeskMessage>()
        .where((message) => message.status == MessageSentStatus.failed)
        .toList();
  }

  Future<List<UsedeskMessage>> cachedMessages() async {
    if (storage == null) {
      return [];
    }

    final messagesData = await storage!.loadMessages() ?? [];
    final messages = messagesData
        .map(jsonDecode)
        .cast<Map<String, dynamic>>()
        .map(UsedeskMessage.fromJson)
        .toList();
    return messages;
  }

  void addToQueueForDeletion(UsedeskMessage message) {
    _queueForDeletion.add(message);
  }

  void dispose() {
    _disposed = true;
    _onMessageStreamController.close();
    _messagesController.close();
  }
}
