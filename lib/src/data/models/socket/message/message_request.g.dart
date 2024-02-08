// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageRequestImpl _$$MessageRequestImplFromJson(Map<String, dynamic> json) =>
    _$MessageRequestImpl(
      type: json['type'] as String? ?? '@@server/chat/SEND_MESSAGE',
      message: MessageRequestTextMessage.fromJson(
          json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessageRequestImplToJson(
        _$MessageRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'message': instance.message.toJson(),
    };

_$MessageRequestTextMessageImpl _$$MessageRequestTextMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageRequestTextMessageImpl(
      text: json['text'] as String,
      payload: json['payload'] == null
          ? const MessageRequestTextMessagePayload()
          : MessageRequestTextMessagePayload.fromJson(
              json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessageRequestTextMessageImplToJson(
        _$MessageRequestTextMessageImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'payload': instance.payload?.toJson(),
    };

_$MessageRequestTextMessagePayloadImpl
    _$$MessageRequestTextMessagePayloadImplFromJson(
            Map<String, dynamic> json) =>
        _$MessageRequestTextMessagePayloadImpl(
          messageId: json['message_id'] as String?,
        );

Map<String, dynamic> _$$MessageRequestTextMessagePayloadImplToJson(
        _$MessageRequestTextMessagePayloadImpl instance) =>
    <String, dynamic>{
      'message_id': instance.messageId,
    };
