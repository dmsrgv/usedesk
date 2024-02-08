// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inited_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitedResponseImpl _$$InitedResponseImplFromJson(Map<String, dynamic> json) =>
    _$InitedResponseImpl(
      type: json['type'] as String,
      token: json['token'] as String,
      setup: Setup.fromJson(json['setup'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InitedResponseImplToJson(
        _$InitedResponseImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'token': instance.token,
      'setup': instance.setup.toJson(),
    };

_$SetupImpl _$$SetupImplFromJson(Map<String, dynamic> json) => _$SetupImpl(
      waitingEmail: json['waitingEmail'] as bool,
      client: json['client'] == null
          ? null
          : SetupClient.fromJson(json['client'] as Map<String, dynamic>),
      callbackSettings: json['callback_settings'] == null
          ? null
          : SetupCallbackSettings.fromJson(
              json['callback_settings'] as Map<String, dynamic>),
      ticket: json['ticket'] == null
          ? null
          : SetupTicket.fromJson(json['ticket'] as Map<String, dynamic>),
      noOperators: json['noOperators'] as bool? ?? true,
      messages: (json['messages'] as List<dynamic>?)
              ?.map((e) => Message<dynamic>.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SetupImplToJson(_$SetupImpl instance) =>
    <String, dynamic>{
      'waitingEmail': instance.waitingEmail,
      'client': instance.client?.toJson(),
      'callback_settings': instance.callbackSettings?.toJson(),
      'ticket': instance.ticket?.toJson(),
      'noOperators': instance.noOperators,
      'messages': instance.messages.map((e) => e.toJson()).toList(),
    };

_$SetupTicketImpl _$$SetupTicketImplFromJson(Map<String, dynamic> json) =>
    _$SetupTicketImpl(
      id: json['id'] as int,
      assigneeId: json['assignee_id'] as int?,
      clientId: json['client_id'] as int,
      companyId: json['company_id'] as int,
      email: json['email'] as String?,
      subject: json['subject'] as String?,
      channelId: json['channel_id'] as int,
      publishedAt: DateTime.parse(json['published_at'] as String),
      statusUpdatedAt: DateTime.parse(json['status_updated_at'] as String),
      channel: json['channel'] as String,
      priority: json['priority'] as String,
      type: json['type'] as String,
      statusId: json['status_id'] as int,
    );

Map<String, dynamic> _$$SetupTicketImplToJson(_$SetupTicketImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'assignee_id': instance.assigneeId,
      'client_id': instance.clientId,
      'company_id': instance.companyId,
      'email': instance.email,
      'subject': instance.subject,
      'channel_id': instance.channelId,
      'published_at': instance.publishedAt.toIso8601String(),
      'status_updated_at': instance.statusUpdatedAt.toIso8601String(),
      'channel': instance.channel,
      'priority': instance.priority,
      'type': instance.type,
      'status_id': instance.statusId,
    };

_$SetupCallbackSettingsImpl _$$SetupCallbackSettingsImplFromJson(
        Map<String, dynamic> json) =>
    _$SetupCallbackSettingsImpl(
      workType: json['work_type'] as String,
      callbackTitle: json['callback_title'] as String,
      callbackGreeting: json['callback_greeting'] as String,
      topics: json['topics'] as List<dynamic>,
      topicsTitle: json['topics_title'] as String,
      topicsRequired: json['topics_required'] as int,
      customFields: json['custom_fields'] as List<dynamic>,
    );

Map<String, dynamic> _$$SetupCallbackSettingsImplToJson(
        _$SetupCallbackSettingsImpl instance) =>
    <String, dynamic>{
      'work_type': instance.workType,
      'callback_title': instance.callbackTitle,
      'callback_greeting': instance.callbackGreeting,
      'topics': instance.topics,
      'topics_title': instance.topicsTitle,
      'topics_required': instance.topicsRequired,
      'custom_fields': instance.customFields,
    };

_$SetupClientImpl _$$SetupClientImplFromJson(Map<String, dynamic> json) =>
    _$SetupClientImpl(
      chat: json['chat'] as int,
      email: json['email'] as String?,
      pic: json['pic'] as String?,
    );

Map<String, dynamic> _$$SetupClientImplToJson(_$SetupClientImpl instance) =>
    <String, dynamic>{
      'chat': instance.chat,
      'email': instance.email,
      'pic': instance.pic,
    };
