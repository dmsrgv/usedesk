// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_fields_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdditionalFieldsRequestImpl _$$AdditionalFieldsRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AdditionalFieldsRequestImpl(
      chatToken: json['chat_token'] as String,
      additionalFields: (json['additional_fields'] as List<dynamic>)
          .map((e) =>
              AdditionalFieldsItemRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AdditionalFieldsRequestImplToJson(
        _$AdditionalFieldsRequestImpl instance) =>
    <String, dynamic>{
      'chat_token': instance.chatToken,
      'additional_fields':
          instance.additionalFields.map((e) => e.toJson()).toList(),
    };

_$AdditionalFieldsItemRequestImpl _$$AdditionalFieldsItemRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AdditionalFieldsItemRequestImpl(
      id: json['id'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$AdditionalFieldsItemRequestImplToJson(
        _$AdditionalFieldsItemRequestImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
    };
