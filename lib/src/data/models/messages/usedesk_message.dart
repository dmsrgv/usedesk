import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:usedesk/src/data/models/socket/message.dart';
import 'package:usedesk/usedesk.dart';

part 'usedesk_message.g.dart';

@JsonSerializable()
class UsedeskMessage with EquatableMixin {
  UsedeskMessage({
    required this.id,
    required this.createdAt,
    this.status,
    this.text,
    this.buttons,
    this.file,
    this.name,
    this.type,
    this.localId,
    this.avatar,
    this.uploadProgress,
    required this.fromClient,
  });

  final int id;
  final DateTime createdAt;
  final MessageSentStatus? status;
  final String? text;
  final List<MessageButton>? buttons;
  final MessageFile? file;
  final String? name;
  final MessageType? type;
  final bool fromClient;
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
        fromClient,
      ];

  UsedeskMessage copyWith({
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
    bool? fromClient,
  }) {
    return UsedeskMessage(
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
      fromClient: fromClient ?? this.fromClient,
    );
  }

  factory UsedeskMessage.fromJson(Map<String, dynamic> json) =>
      _$UsedeskMessageFromJson(json);

  Map<String, dynamic> toJson() => _$UsedeskMessageToJson(this);
}
