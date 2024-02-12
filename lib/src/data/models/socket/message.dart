import 'dart:developer';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'chat.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message<C> with _$Message<C> {
  const factory Message({
    required int id,
    required MessageType type,
    required DateTime createdAt,
    String? text,
    String? name,
    dynamic user,
    MessagePayload? payload,
    // ignore: invalid_annotation_target
    @JsonKey(
      fromJson: Message._chatFromJson,
      toJson: Message._chatToJson,
    )
    C? chat,
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false, includeToJson: false)
    List<MessageButton>? buttons,
    MessageFile? file,
  }) = _Message<C>;

  factory Message.fromJson(Map<String, dynamic> json) => () {
        final matches = RegExp(r'\{{button\:([^\}}]*)\}}')
            .allMatches(json.containsKey('text') ? json['text'] : '');

        String? newText = json.containsKey('text') ? json['text'] : null;

        final buttons = matches.map((match) {
          final sections = match.group(1)!.split(';');

          final button = MessageButton(
            text: sections[0],
          );

          newText = newText?.replaceFirst(match.group(0)!, '');

          return button;
        }).toList();

        return _$MessageFromJson<C>(json).copyWith(
          buttons: buttons,
          text: newText,
        );
      }();

  static _chatFromJson(dynamic data) {
    if (data == null) {
      return null;
    } else if (data is Map) {
      return Chat.fromJson(data as Map<String, dynamic>);
    }
    return data as int;
  }

  static _chatToJson(dynamic chat) {
    if (chat == null) {
      return null;
    } else if (chat is Chat) {
      return chat.toJson();
    }
    return chat as int;
  }
}

@freezed
class MessageFile with _$MessageFile {
  const factory MessageFile({
    required String name,
    required String type,
    required String content,
    required String size,
    required String dataType,
    // ignore: invalid_annotation_target
    @JsonKey(includeFromJson: false, includeToJson: false) Uint8List? bytes,
  }) = _MessageFile;

  factory MessageFile.fromJson(Map<String, dynamic> json) =>
      _$MessageFileFromJson(json);
}

@freezed
class MessagePayload with _$MessagePayload {
  const factory MessagePayload({
    String? avatar,
    String? userRating,
    // ignore: invalid_annotation_target
    @JsonKey(
      name: 'message_id',
      fromJson: MessagePayload._messageIdFromJson,
    )
    int? messageId,
  }) = _MessagePayload;

  factory MessagePayload.fromJson(Map<String, dynamic> json) =>
      _$MessagePayloadFromJson(json);

  static int? _messageIdFromJson(dynamic data) {
    if (data == null) {
      return null;
    }
    return int.tryParse(data);
  }
}

@freezed
class MessageButton with _$MessageButton {
  const factory MessageButton({
    required String text,
  }) = _MessageButton;

  factory MessageButton.fromJson(Map<String, dynamic> json) =>
      _$MessageButtonFromJson(json);
}

@JsonEnum(fieldRename: FieldRename.snake)
enum MessageType {
  operatorToClient,
  clientToOperator,
  clientToBot,
  botToClient,
}
