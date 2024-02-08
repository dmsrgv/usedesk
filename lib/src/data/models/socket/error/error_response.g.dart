// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ErrorResponseImpl _$$ErrorResponseImplFromJson(Map<String, dynamic> json) =>
    _$ErrorResponseImpl(
      type: json['type'] as String,
      code: json['code'] as int,
      message: json['message'] as String,
      statusMessage: json['statusMessage'] as String,
    );

Map<String, dynamic> _$$ErrorResponseImplToJson(_$ErrorResponseImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'code': instance.code,
      'message': instance.message,
      'statusMessage': instance.statusMessage,
    };
