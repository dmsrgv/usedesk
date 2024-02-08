// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_client_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetClientResponseImpl _$$SetClientResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SetClientResponseImpl(
      type: json['type'] as String,
      state: SetClientResponseState.fromJson(
          json['state'] as Map<String, dynamic>),
      reset: json['reset'] as bool?,
    );

Map<String, dynamic> _$$SetClientResponseImplToJson(
        _$SetClientResponseImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'state': instance.state.toJson(),
      'reset': instance.reset,
    };

_$SetClientResponseStateImpl _$$SetClientResponseStateImplFromJson(
        Map<String, dynamic> json) =>
    _$SetClientResponseStateImpl(
      client: SetClientResponseStateClient.fromJson(
          json['client'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SetClientResponseStateImplToJson(
        _$SetClientResponseStateImpl instance) =>
    <String, dynamic>{
      'client': instance.client.toJson(),
    };

_$SetClientResponseStateClientImpl _$$SetClientResponseStateClientImplFromJson(
        Map<String, dynamic> json) =>
    _$SetClientResponseStateClientImpl(
      token: json['token'] as String?,
      email: json['email'] as String?,
      chat: json['chat'] as int?,
    );

Map<String, dynamic> _$$SetClientResponseStateClientImplToJson(
        _$SetClientResponseStateClientImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'email': instance.email,
      'chat': instance.chat,
    };
