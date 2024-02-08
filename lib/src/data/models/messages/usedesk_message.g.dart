// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usedesk_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsedeskMessage _$UsedeskMessageFromJson(Map<String, dynamic> json) =>
    UsedeskMessage(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      status: $enumDecodeNullable(_$MessageSentStatusEnumMap, json['status']),
      text: json['text'] as String?,
      buttons: (json['buttons'] as List<dynamic>?)
          ?.map((e) => MessageButton.fromJson(e as Map<String, dynamic>))
          .toList(),
      file: json['file'] == null
          ? null
          : MessageFile.fromJson(json['file'] as Map<String, dynamic>),
      name: json['name'] as String?,
      type: $enumDecodeNullable(_$MessageTypeEnumMap, json['type']),
      localId: json['localId'] as int?,
      avatar: json['avatar'] as String?,
      fromClient: json['fromClient'] as bool,
    );

Map<String, dynamic> _$UsedeskMessageToJson(UsedeskMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'status': _$MessageSentStatusEnumMap[instance.status],
      'text': instance.text,
      'buttons': instance.buttons?.map((e) => e.toJson()).toList(),
      'file': instance.file?.toJson(),
      'name': instance.name,
      'type': _$MessageTypeEnumMap[instance.type],
      'fromClient': instance.fromClient,
      'localId': instance.localId,
      'avatar': instance.avatar,
    };

const _$MessageSentStatusEnumMap = {
  MessageSentStatus.sending: 'sending',
  MessageSentStatus.success: 'success',
  MessageSentStatus.failed: 'failed',
};

const _$MessageTypeEnumMap = {
  MessageType.operatorToClient: 'operator_to_client',
  MessageType.clientToOperator: 'client_to_operator',
  MessageType.clientToBot: 'client_to_bot',
  MessageType.botToClient: 'bot_to_client',
};
