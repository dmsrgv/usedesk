// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageImpl<C> _$$MessageImplFromJson<C>(Map<String, dynamic> json) =>
    _$MessageImpl<C>(
      id: json['id'] as int,
      type: $enumDecode(_$MessageTypeEnumMap, json['type']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      text: json['text'] as String?,
      name: json['name'] as String?,
      user: json['user'],
      payload: json['payload'] == null
          ? null
          : MessagePayload.fromJson(json['payload'] as Map<String, dynamic>),
      chat: Message._chatFromJson(json['chat']),
      file: json['file'] == null
          ? null
          : MessageFile.fromJson(json['file'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessageImplToJson<C>(_$MessageImpl<C> instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$MessageTypeEnumMap[instance.type]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'text': instance.text,
      'name': instance.name,
      'user': instance.user,
      'payload': instance.payload?.toJson(),
      'chat': Message._chatToJson(instance.chat),
      'file': instance.file?.toJson(),
    };

const _$MessageTypeEnumMap = {
  MessageType.operatorToClient: 'operator_to_client',
  MessageType.clientToOperator: 'client_to_operator',
  MessageType.clientToBot: 'client_to_bot',
  MessageType.botToClient: 'bot_to_client',
};

_$MessageFileImpl _$$MessageFileImplFromJson(Map<String, dynamic> json) =>
    _$MessageFileImpl(
      name: json['name'] as String,
      type: json['type'] as String,
      content: json['content'] as String,
      size: json['size'] as String,
    );

Map<String, dynamic> _$$MessageFileImplToJson(_$MessageFileImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'content': instance.content,
      'size': instance.size,
    };

_$MessagePayloadImpl _$$MessagePayloadImplFromJson(Map<String, dynamic> json) =>
    _$MessagePayloadImpl(
      avatar: json['avatar'] as String?,
      userRating: json['userRating'] as String?,
      messageId: MessagePayload._messageIdFromJson(json['message_id']),
    );

Map<String, dynamic> _$$MessagePayloadImplToJson(
        _$MessagePayloadImpl instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'userRating': instance.userRating,
      'message_id': instance.messageId,
    };

_$MessageButtonImpl _$$MessageButtonImplFromJson(Map<String, dynamic> json) =>
    _$MessageButtonImpl(
      text: json['text'] as String,
      isShow: json['isShow'] as bool,
      url: json['url'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$MessageButtonImplToJson(_$MessageButtonImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'isShow': instance.isShow,
      'url': instance.url,
      'type': instance.type,
    };
