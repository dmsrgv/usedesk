// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inited_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitedRequestImpl _$$InitedRequestImplFromJson(Map<String, dynamic> json) =>
    _$InitedRequestImpl(
      type: json['type'] as String? ?? '@@server/chat/INIT',
      companyId: json['company_id'] as String,
      payload: json['payload'] == null
          ? const InitedRequestPayload()
          : InitedRequestPayload.fromJson(
              json['payload'] as Map<String, dynamic>),
      url: json['url'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$InitedRequestImplToJson(_$InitedRequestImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'company_id': instance.companyId,
      'payload': instance.payload.toJson(),
      'url': instance.url,
      'token': instance.token,
    };

_$InitedRequestPayloadImpl _$$InitedRequestPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$InitedRequestPayloadImpl(
      sdk: json['sdk'] as String? ?? 'iOS',
      type: json['type'] as String? ?? 'sdk',
      version: json['version'] as String? ?? '2.3.0',
    );

Map<String, dynamic> _$$InitedRequestPayloadImplToJson(
        _$InitedRequestPayloadImpl instance) =>
    <String, dynamic>{
      'sdk': instance.sdk,
      'type': instance.type,
      'version': instance.version,
    };
