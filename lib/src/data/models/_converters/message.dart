import 'package:usedesk/src/data/models/messages/base.dart';
import 'package:usedesk/src/data/models/messages/usedesk_message.dart';
import 'package:usedesk/src/data/models/socket/message.dart';

extension MessageConverter<T> on Message<T> {
  UsedeskMessage convert() {
    final fromClient =
        type == MessageType.clientToOperator || type == MessageType.clientToBot;
    if (fromClient) {
      return UserUsedeskMessage(
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
      );
    } else {
      return OperatorUsedeskMessage(
        id: id,
        createdAt: createdAt,
        text: text,
        buttons: buttons,
        avatar: payload?.avatar,
        file: file,
        name: name,
        type: type,
      );
    }
  }

  static UsedeskMessage convertToTypedMessage(Message message) {
    return message.convert();
  }
}
