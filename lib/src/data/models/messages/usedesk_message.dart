import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:usedesk/src/data/models/socket/message.dart';
import 'package:usedesk/usedesk.dart';

part 'usedesk_message.g.dart';

@immutable
sealed class UsedeskMessageEquatable with EquatableMixin {
  const UsedeskMessageEquatable();
}

sealed class UsedeskMessage extends UsedeskMessageEquatable {
  const UsedeskMessage();
}

@JsonSerializable()
class UserUsedeskMessage extends UsedeskMessage {
  UserUsedeskMessage({
    required this.id,
    required this.createdAt,
    required this.status,
    this.text,
    this.buttons,
    this.file,
    this.name,
    this.type,
    required this.localId,
    this.avatar,
    this.uploadProgress,
  });

  final int id;
  final DateTime createdAt;
  final MessageSentStatus? status;
  final String? text;
  final List<MessageButton>? buttons;
  final MessageFile? file;
  final String? name;
  final MessageType? type;
  final int? localId;
  final String? avatar;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Stream<double>? uploadProgress;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        status,
        text,
        buttons,
        file,
        name,
        type,
        localId,
        avatar,
        uploadProgress,
      ];

  UserUsedeskMessage copyWith({
    int? id,
    DateTime? createdAt,
    MessageSentStatus? status,
    String? text,
    List<MessageButton>? buttons,
    String? avatar,
    MessageFile? file,
    String? name,
    MessageType? type,
    int? localId,
    Stream<double>? uploadProgress,
  }) {
    return UserUsedeskMessage(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      status: status ?? this.status,
      text: text ?? this.text,
      buttons: buttons ?? this.buttons,
      avatar: avatar ?? this.avatar,
      localId: localId ?? this.localId,
      file: file ?? this.file,
      name: name ?? this.name,
      type: type ?? this.type,
      uploadProgress: uploadProgress ?? this.uploadProgress,
    );
  }

  factory UserUsedeskMessage.fromJson(Map<String, dynamic> json) =>
      _$UserUsedeskMessageFromJson(json);

  Map<String, dynamic> toJson() => _$UserUsedeskMessageToJson(this);
}

@JsonSerializable()
class OperatorUsedeskMessage extends UsedeskMessage {
  OperatorUsedeskMessage({
    required this.id,
    required this.createdAt,
    this.text,
    required this.buttons,
    this.avatar,
    this.file,
    this.name,
    this.type,
  });

  final int id;
  final DateTime createdAt;
  final String? text;
  final List<MessageButton>? buttons;
  final String? avatar;
  final MessageFile? file;
  final String? name;
  final MessageType? type;

  @override
  List<Object?> get props => [
        id,
        createdAt,
        text,
        buttons,
        avatar,
        file,
        name,
        type,
      ];

  OperatorUsedeskMessage copyWith({
    int? id,
    DateTime? createdAt,
    String? text,
    List<MessageButton>? buttons,
    String? avatar,
    MessageFile? file,
    String? name,
    MessageType? type,
  }) {
    return OperatorUsedeskMessage(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      text: text ?? this.text,
      buttons: buttons ?? this.buttons,
      avatar: avatar ?? this.avatar,
      file: file ?? this.file,
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }

  factory OperatorUsedeskMessage.fromJson(Map<String, dynamic> json) =>
      _$OperatorUsedeskMessageFromJson(json);

  Map<String, dynamic> toJson() => _$OperatorUsedeskMessageToJson(this);
}
