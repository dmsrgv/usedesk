// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_client_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetClientRequestImpl _$$SetClientRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SetClientRequestImpl(
      type: json['type'] as String? ?? '@@server/chat/SET_CLIENT',
      payload: SetClientRequestPayload.fromJson(
          json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SetClientRequestImplToJson(
        _$SetClientRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'payload': instance.payload.toJson(),
    };

_$SetClientRequestPayloadImpl _$$SetClientRequestPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$SetClientRequestPayloadImpl(
      token: json['token'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      note: json['note'] as String?,
      phone: json['phone'] as int?,
      additionalId: json['additional_id'] as String?,
    );

Map<String, dynamic> _$$SetClientRequestPayloadImplToJson(
        _$SetClientRequestPayloadImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'email': instance.email,
      'username': instance.username,
      'note': instance.note,
      'phone': instance.phone,
      'additional_id': instance.additionalId,
    };
