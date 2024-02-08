import 'package:usedesk/src/data/models/messages/base.dart';
import 'package:usedesk/src/data/models/messages/usedesk_message.dart';
import 'package:usedesk/src/data/models/socket/message.dart';

extension MessageConverter<T> on Message<T> {
  UsedeskMessage convert() {
    return UsedeskMessage(
      id: id,
      createdAt: createdAt,
      status: MessageSentStatus.success,
      text: text,
      buttons: buttons,
      avatar: payload?.avatar,
      localId: payload?.messageId,
      file: file,
      name: name,
      type: type,
      fromClient: type == MessageType.clientToBot ||
          type == MessageType.clientToOperator,
    );
  }

  static UsedeskMessage convertToTypedMessage(Message message) {
    return message.convert();
  }
}
