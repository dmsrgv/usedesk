// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inited_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InitedResponse _$InitedResponseFromJson(Map<String, dynamic> json) {
  return _InitedResponse.fromJson(json);
}

/// @nodoc
mixin _$InitedResponse {
  String get type => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  Setup get setup => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitedResponseCopyWith<InitedResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitedResponseCopyWith<$Res> {
  factory $InitedResponseCopyWith(
          InitedResponse value, $Res Function(InitedResponse) then) =
      _$InitedResponseCopyWithImpl<$Res, InitedResponse>;
  @useResult
  $Res call({String type, String token, Setup setup});

  $SetupCopyWith<$Res> get setup;
}

/// @nodoc
class _$InitedResponseCopyWithImpl<$Res, $Val extends InitedResponse>
    implements $InitedResponseCopyWith<$Res> {
  _$InitedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? token = null,
    Object? setup = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      setup: null == setup
          ? _value.setup
          : setup // ignore: cast_nullable_to_non_nullable
              as Setup,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SetupCopyWith<$Res> get setup {
    return $SetupCopyWith<$Res>(_value.setup, (value) {
      return _then(_value.copyWith(setup: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitedResponseImplCopyWith<$Res>
    implements $InitedResponseCopyWith<$Res> {
  factory _$$InitedResponseImplCopyWith(_$InitedResponseImpl value,
          $Res Function(_$InitedResponseImpl) then) =
      __$$InitedResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String token, Setup setup});

  @override
  $SetupCopyWith<$Res> get setup;
}

/// @nodoc
class __$$InitedResponseImplCopyWithImpl<$Res>
    extends _$InitedResponseCopyWithImpl<$Res, _$InitedResponseImpl>
    implements _$$InitedResponseImplCopyWith<$Res> {
  __$$InitedResponseImplCopyWithImpl(
      _$InitedResponseImpl _value, $Res Function(_$InitedResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? token = null,
    Object? setup = null,
  }) {
    return _then(_$InitedResponseImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      setup: null == setup
          ? _value.setup
          : setup // ignore: cast_nullable_to_non_nullable
              as Setup,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitedResponseImpl implements _InitedResponse {
  const _$InitedResponseImpl(
      {required this.type, required this.token, required this.setup});

  factory _$InitedResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitedResponseImplFromJson(json);

  @override
  final String type;
  @override
  final String token;
  @override
  final Setup setup;

  @override
  String toString() {
    return 'InitedResponse(type: $type, token: $token, setup: $setup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitedResponseImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.setup, setup) || other.setup == setup));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, token, setup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitedResponseImplCopyWith<_$InitedResponseImpl> get copyWith =>
      __$$InitedResponseImplCopyWithImpl<_$InitedResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitedResponseImplToJson(
      this,
    );
  }
}

abstract class _InitedResponse implements InitedResponse, BaseResponse {
  const factory _InitedResponse(
      {required final String type,
      required final String token,
      required final Setup setup}) = _$InitedResponseImpl;

  factory _InitedResponse.fromJson(Map<String, dynamic> json) =
      _$InitedResponseImpl.fromJson;

  @override
  String get type;
  @override
  String get token;
  @override
  Setup get setup;
  @override
  @JsonKey(ignore: true)
  _$$InitedResponseImplCopyWith<_$InitedResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Setup _$SetupFromJson(Map<String, dynamic> json) {
  return _Setup.fromJson(json);
}

/// @nodoc
mixin _$Setup {
  bool get waitingEmail => throw _privateConstructorUsedError;
  SetupClient? get client =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'callback_settings')
  SetupCallbackSettings? get callbackSettings =>
      throw _privateConstructorUsedError;
  SetupTicket? get ticket => throw _privateConstructorUsedError;
  bool get noOperators => throw _privateConstructorUsedError;
  List<Message> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetupCopyWith<Setup> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetupCopyWith<$Res> {
  factory $SetupCopyWith(Setup value, $Res Function(Setup) then) =
      _$SetupCopyWithImpl<$Res, Setup>;
  @useResult
  $Res call(
      {bool waitingEmail,
      SetupClient? client,
      @JsonKey(name: 'callback_settings')
      SetupCallbackSettings? callbackSettings,
      SetupTicket? ticket,
      bool noOperators,
      List<Message> messages});

  $SetupClientCopyWith<$Res>? get client;
  $SetupCallbackSettingsCopyWith<$Res>? get callbackSettings;
  $SetupTicketCopyWith<$Res>? get ticket;
}

/// @nodoc
class _$SetupCopyWithImpl<$Res, $Val extends Setup>
    implements $SetupCopyWith<$Res> {
  _$SetupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waitingEmail = null,
    Object? client = freezed,
    Object? callbackSettings = freezed,
    Object? ticket = freezed,
    Object? noOperators = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      waitingEmail: null == waitingEmail
          ? _value.waitingEmail
          : waitingEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as SetupClient?,
      callbackSettings: freezed == callbackSettings
          ? _value.callbackSettings
          : callbackSettings // ignore: cast_nullable_to_non_nullable
              as SetupCallbackSettings?,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as SetupTicket?,
      noOperators: null == noOperators
          ? _value.noOperators
          : noOperators // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SetupClientCopyWith<$Res>? get client {
    if (_value.client == null) {
      return null;
    }

    return $SetupClientCopyWith<$Res>(_value.client!, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SetupCallbackSettingsCopyWith<$Res>? get callbackSettings {
    if (_value.callbackSettings == null) {
      return null;
    }

    return $SetupCallbackSettingsCopyWith<$Res>(_value.callbackSettings!,
        (value) {
      return _then(_value.copyWith(callbackSettings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SetupTicketCopyWith<$Res>? get ticket {
    if (_value.ticket == null) {
      return null;
    }

    return $SetupTicketCopyWith<$Res>(_value.ticket!, (value) {
      return _then(_value.copyWith(ticket: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetupImplCopyWith<$Res> implements $SetupCopyWith<$Res> {
  factory _$$SetupImplCopyWith(
          _$SetupImpl value, $Res Function(_$SetupImpl) then) =
      __$$SetupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool waitingEmail,
      SetupClient? client,
      @JsonKey(name: 'callback_settings')
      SetupCallbackSettings? callbackSettings,
      SetupTicket? ticket,
      bool noOperators,
      List<Message> messages});

  @override
  $SetupClientCopyWith<$Res>? get client;
  @override
  $SetupCallbackSettingsCopyWith<$Res>? get callbackSettings;
  @override
  $SetupTicketCopyWith<$Res>? get ticket;
}

/// @nodoc
class __$$SetupImplCopyWithImpl<$Res>
    extends _$SetupCopyWithImpl<$Res, _$SetupImpl>
    implements _$$SetupImplCopyWith<$Res> {
  __$$SetupImplCopyWithImpl(
      _$SetupImpl _value, $Res Function(_$SetupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waitingEmail = null,
    Object? client = freezed,
    Object? callbackSettings = freezed,
    Object? ticket = freezed,
    Object? noOperators = null,
    Object? messages = null,
  }) {
    return _then(_$SetupImpl(
      waitingEmail: null == waitingEmail
          ? _value.waitingEmail
          : waitingEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      client: freezed == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as SetupClient?,
      callbackSettings: freezed == callbackSettings
          ? _value.callbackSettings
          : callbackSettings // ignore: cast_nullable_to_non_nullable
              as SetupCallbackSettings?,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as SetupTicket?,
      noOperators: null == noOperators
          ? _value.noOperators
          : noOperators // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetupImpl implements _Setup {
  const _$SetupImpl(
      {required this.waitingEmail,
      this.client,
      @JsonKey(name: 'callback_settings') this.callbackSettings,
      this.ticket,
      this.noOperators = true,
      final List<Message> messages = const []})
      : _messages = messages;

  factory _$SetupImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetupImplFromJson(json);

  @override
  final bool waitingEmail;
  @override
  final SetupClient? client;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'callback_settings')
  final SetupCallbackSettings? callbackSettings;
  @override
  final SetupTicket? ticket;
  @override
  @JsonKey()
  final bool noOperators;
  final List<Message> _messages;
  @override
  @JsonKey()
  List<Message> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'Setup(waitingEmail: $waitingEmail, client: $client, callbackSettings: $callbackSettings, ticket: $ticket, noOperators: $noOperators, messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetupImpl &&
            (identical(other.waitingEmail, waitingEmail) ||
                other.waitingEmail == waitingEmail) &&
            (identical(other.client, client) || other.client == client) &&
            (identical(other.callbackSettings, callbackSettings) ||
                other.callbackSettings == callbackSettings) &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.noOperators, noOperators) ||
                other.noOperators == noOperators) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      waitingEmail,
      client,
      callbackSettings,
      ticket,
      noOperators,
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetupImplCopyWith<_$SetupImpl> get copyWith =>
      __$$SetupImplCopyWithImpl<_$SetupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetupImplToJson(
      this,
    );
  }
}

abstract class _Setup implements Setup {
  const factory _Setup(
      {required final bool waitingEmail,
      final SetupClient? client,
      @JsonKey(name: 'callback_settings')
      final SetupCallbackSettings? callbackSettings,
      final SetupTicket? ticket,
      final bool noOperators,
      final List<Message> messages}) = _$SetupImpl;

  factory _Setup.fromJson(Map<String, dynamic> json) = _$SetupImpl.fromJson;

  @override
  bool get waitingEmail;
  @override
  SetupClient? get client;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'callback_settings')
  SetupCallbackSettings? get callbackSettings;
  @override
  SetupTicket? get ticket;
  @override
  bool get noOperators;
  @override
  List<Message> get messages;
  @override
  @JsonKey(ignore: true)
  _$$SetupImplCopyWith<_$SetupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SetupTicket _$SetupTicketFromJson(Map<String, dynamic> json) {
  return _SetupTicket.fromJson(json);
}

/// @nodoc
mixin _$SetupTicket {
  int get id => throw _privateConstructorUsedError;
  int? get assigneeId => throw _privateConstructorUsedError;
  int get clientId => throw _privateConstructorUsedError;
  int get companyId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  int get channelId => throw _privateConstructorUsedError;
  DateTime get publishedAt => throw _privateConstructorUsedError;
  DateTime get statusUpdatedAt => throw _privateConstructorUsedError;
  String get channel => throw _privateConstructorUsedError;
  String get priority => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int get statusId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetupTicketCopyWith<SetupTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetupTicketCopyWith<$Res> {
  factory $SetupTicketCopyWith(
          SetupTicket value, $Res Function(SetupTicket) then) =
      _$SetupTicketCopyWithImpl<$Res, SetupTicket>;
  @useResult
  $Res call(
      {int id,
      int? assigneeId,
      int clientId,
      int companyId,
      String? email,
      String? subject,
      int channelId,
      DateTime publishedAt,
      DateTime statusUpdatedAt,
      String channel,
      String priority,
      String type,
      int statusId});
}

/// @nodoc
class _$SetupTicketCopyWithImpl<$Res, $Val extends SetupTicket>
    implements $SetupTicketCopyWith<$Res> {
  _$SetupTicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? assigneeId = freezed,
    Object? clientId = null,
    Object? companyId = null,
    Object? email = freezed,
    Object? subject = freezed,
    Object? channelId = null,
    Object? publishedAt = null,
    Object? statusUpdatedAt = null,
    Object? channel = null,
    Object? priority = null,
    Object? type = null,
    Object? statusId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      assigneeId: freezed == assigneeId
          ? _value.assigneeId
          : assigneeId // ignore: cast_nullable_to_non_nullable
              as int?,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as int,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      statusUpdatedAt: null == statusUpdatedAt
          ? _value.statusUpdatedAt
          : statusUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetupTicketImplCopyWith<$Res>
    implements $SetupTicketCopyWith<$Res> {
  factory _$$SetupTicketImplCopyWith(
          _$SetupTicketImpl value, $Res Function(_$SetupTicketImpl) then) =
      __$$SetupTicketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int? assigneeId,
      int clientId,
      int companyId,
      String? email,
      String? subject,
      int channelId,
      DateTime publishedAt,
      DateTime statusUpdatedAt,
      String channel,
      String priority,
      String type,
      int statusId});
}

/// @nodoc
class __$$SetupTicketImplCopyWithImpl<$Res>
    extends _$SetupTicketCopyWithImpl<$Res, _$SetupTicketImpl>
    implements _$$SetupTicketImplCopyWith<$Res> {
  __$$SetupTicketImplCopyWithImpl(
      _$SetupTicketImpl _value, $Res Function(_$SetupTicketImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? assigneeId = freezed,
    Object? clientId = null,
    Object? companyId = null,
    Object? email = freezed,
    Object? subject = freezed,
    Object? channelId = null,
    Object? publishedAt = null,
    Object? statusUpdatedAt = null,
    Object? channel = null,
    Object? priority = null,
    Object? type = null,
    Object? statusId = null,
  }) {
    return _then(_$SetupTicketImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      assigneeId: freezed == assigneeId
          ? _value.assigneeId
          : assigneeId // ignore: cast_nullable_to_non_nullable
              as int?,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as int,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as int,
      publishedAt: null == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      statusUpdatedAt: null == statusUpdatedAt
          ? _value.statusUpdatedAt
          : statusUpdatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as String,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      statusId: null == statusId
          ? _value.statusId
          : statusId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$SetupTicketImpl implements _SetupTicket {
  const _$SetupTicketImpl(
      {required this.id,
      required this.assigneeId,
      required this.clientId,
      required this.companyId,
      required this.email,
      required this.subject,
      required this.channelId,
      required this.publishedAt,
      required this.statusUpdatedAt,
      required this.channel,
      required this.priority,
      required this.type,
      required this.statusId});

  factory _$SetupTicketImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetupTicketImplFromJson(json);

  @override
  final int id;
  @override
  final int? assigneeId;
  @override
  final int clientId;
  @override
  final int companyId;
  @override
  final String? email;
  @override
  final String? subject;
  @override
  final int channelId;
  @override
  final DateTime publishedAt;
  @override
  final DateTime statusUpdatedAt;
  @override
  final String channel;
  @override
  final String priority;
  @override
  final String type;
  @override
  final int statusId;

  @override
  String toString() {
    return 'SetupTicket(id: $id, assigneeId: $assigneeId, clientId: $clientId, companyId: $companyId, email: $email, subject: $subject, channelId: $channelId, publishedAt: $publishedAt, statusUpdatedAt: $statusUpdatedAt, channel: $channel, priority: $priority, type: $type, statusId: $statusId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetupTicketImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.assigneeId, assigneeId) ||
                other.assigneeId == assigneeId) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt) &&
            (identical(other.statusUpdatedAt, statusUpdatedAt) ||
                other.statusUpdatedAt == statusUpdatedAt) &&
            (identical(other.channel, channel) || other.channel == channel) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.statusId, statusId) ||
                other.statusId == statusId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      assigneeId,
      clientId,
      companyId,
      email,
      subject,
      channelId,
      publishedAt,
      statusUpdatedAt,
      channel,
      priority,
      type,
      statusId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetupTicketImplCopyWith<_$SetupTicketImpl> get copyWith =>
      __$$SetupTicketImplCopyWithImpl<_$SetupTicketImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetupTicketImplToJson(
      this,
    );
  }
}

abstract class _SetupTicket implements SetupTicket {
  const factory _SetupTicket(
      {required final int id,
      required final int? assigneeId,
      required final int clientId,
      required final int companyId,
      required final String? email,
      required final String? subject,
      required final int channelId,
      required final DateTime publishedAt,
      required final DateTime statusUpdatedAt,
      required final String channel,
      required final String priority,
      required final String type,
      required final int statusId}) = _$SetupTicketImpl;

  factory _SetupTicket.fromJson(Map<String, dynamic> json) =
      _$SetupTicketImpl.fromJson;

  @override
  int get id;
  @override
  int? get assigneeId;
  @override
  int get clientId;
  @override
  int get companyId;
  @override
  String? get email;
  @override
  String? get subject;
  @override
  int get channelId;
  @override
  DateTime get publishedAt;
  @override
  DateTime get statusUpdatedAt;
  @override
  String get channel;
  @override
  String get priority;
  @override
  String get type;
  @override
  int get statusId;
  @override
  @JsonKey(ignore: true)
  _$$SetupTicketImplCopyWith<_$SetupTicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SetupCallbackSettings _$SetupCallbackSettingsFromJson(
    Map<String, dynamic> json) {
  return _SetupCallbackSettings.fromJson(json);
}

/// @nodoc
mixin _$SetupCallbackSettings {
  String get workType => throw _privateConstructorUsedError;
  String get callbackTitle => throw _privateConstructorUsedError;
  String get callbackGreeting => throw _privateConstructorUsedError;
  List<dynamic> get topics => throw _privateConstructorUsedError;
  String get topicsTitle => throw _privateConstructorUsedError;
  int get topicsRequired => throw _privateConstructorUsedError;
  List<dynamic> get customFields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetupCallbackSettingsCopyWith<SetupCallbackSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetupCallbackSettingsCopyWith<$Res> {
  factory $SetupCallbackSettingsCopyWith(SetupCallbackSettings value,
          $Res Function(SetupCallbackSettings) then) =
      _$SetupCallbackSettingsCopyWithImpl<$Res, SetupCallbackSettings>;
  @useResult
  $Res call(
      {String workType,
      String callbackTitle,
      String callbackGreeting,
      List<dynamic> topics,
      String topicsTitle,
      int topicsRequired,
      List<dynamic> customFields});
}

/// @nodoc
class _$SetupCallbackSettingsCopyWithImpl<$Res,
        $Val extends SetupCallbackSettings>
    implements $SetupCallbackSettingsCopyWith<$Res> {
  _$SetupCallbackSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workType = null,
    Object? callbackTitle = null,
    Object? callbackGreeting = null,
    Object? topics = null,
    Object? topicsTitle = null,
    Object? topicsRequired = null,
    Object? customFields = null,
  }) {
    return _then(_value.copyWith(
      workType: null == workType
          ? _value.workType
          : workType // ignore: cast_nullable_to_non_nullable
              as String,
      callbackTitle: null == callbackTitle
          ? _value.callbackTitle
          : callbackTitle // ignore: cast_nullable_to_non_nullable
              as String,
      callbackGreeting: null == callbackGreeting
          ? _value.callbackGreeting
          : callbackGreeting // ignore: cast_nullable_to_non_nullable
              as String,
      topics: null == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      topicsTitle: null == topicsTitle
          ? _value.topicsTitle
          : topicsTitle // ignore: cast_nullable_to_non_nullable
              as String,
      topicsRequired: null == topicsRequired
          ? _value.topicsRequired
          : topicsRequired // ignore: cast_nullable_to_non_nullable
              as int,
      customFields: null == customFields
          ? _value.customFields
          : customFields // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetupCallbackSettingsImplCopyWith<$Res>
    implements $SetupCallbackSettingsCopyWith<$Res> {
  factory _$$SetupCallbackSettingsImplCopyWith(
          _$SetupCallbackSettingsImpl value,
          $Res Function(_$SetupCallbackSettingsImpl) then) =
      __$$SetupCallbackSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String workType,
      String callbackTitle,
      String callbackGreeting,
      List<dynamic> topics,
      String topicsTitle,
      int topicsRequired,
      List<dynamic> customFields});
}

/// @nodoc
class __$$SetupCallbackSettingsImplCopyWithImpl<$Res>
    extends _$SetupCallbackSettingsCopyWithImpl<$Res,
        _$SetupCallbackSettingsImpl>
    implements _$$SetupCallbackSettingsImplCopyWith<$Res> {
  __$$SetupCallbackSettingsImplCopyWithImpl(_$SetupCallbackSettingsImpl _value,
      $Res Function(_$SetupCallbackSettingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workType = null,
    Object? callbackTitle = null,
    Object? callbackGreeting = null,
    Object? topics = null,
    Object? topicsTitle = null,
    Object? topicsRequired = null,
    Object? customFields = null,
  }) {
    return _then(_$SetupCallbackSettingsImpl(
      workType: null == workType
          ? _value.workType
          : workType // ignore: cast_nullable_to_non_nullable
              as String,
      callbackTitle: null == callbackTitle
          ? _value.callbackTitle
          : callbackTitle // ignore: cast_nullable_to_non_nullable
              as String,
      callbackGreeting: null == callbackGreeting
          ? _value.callbackGreeting
          : callbackGreeting // ignore: cast_nullable_to_non_nullable
              as String,
      topics: null == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      topicsTitle: null == topicsTitle
          ? _value.topicsTitle
          : topicsTitle // ignore: cast_nullable_to_non_nullable
              as String,
      topicsRequired: null == topicsRequired
          ? _value.topicsRequired
          : topicsRequired // ignore: cast_nullable_to_non_nullable
              as int,
      customFields: null == customFields
          ? _value._customFields
          : customFields // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$SetupCallbackSettingsImpl implements _SetupCallbackSettings {
  const _$SetupCallbackSettingsImpl(
      {required this.workType,
      required this.callbackTitle,
      required this.callbackGreeting,
      required final List<dynamic> topics,
      required this.topicsTitle,
      required this.topicsRequired,
      required final List<dynamic> customFields})
      : _topics = topics,
        _customFields = customFields;

  factory _$SetupCallbackSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetupCallbackSettingsImplFromJson(json);

  @override
  final String workType;
  @override
  final String callbackTitle;
  @override
  final String callbackGreeting;
  final List<dynamic> _topics;
  @override
  List<dynamic> get topics {
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_topics);
  }

  @override
  final String topicsTitle;
  @override
  final int topicsRequired;
  final List<dynamic> _customFields;
  @override
  List<dynamic> get customFields {
    if (_customFields is EqualUnmodifiableListView) return _customFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customFields);
  }

  @override
  String toString() {
    return 'SetupCallbackSettings(workType: $workType, callbackTitle: $callbackTitle, callbackGreeting: $callbackGreeting, topics: $topics, topicsTitle: $topicsTitle, topicsRequired: $topicsRequired, customFields: $customFields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetupCallbackSettingsImpl &&
            (identical(other.workType, workType) ||
                other.workType == workType) &&
            (identical(other.callbackTitle, callbackTitle) ||
                other.callbackTitle == callbackTitle) &&
            (identical(other.callbackGreeting, callbackGreeting) ||
                other.callbackGreeting == callbackGreeting) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            (identical(other.topicsTitle, topicsTitle) ||
                other.topicsTitle == topicsTitle) &&
            (identical(other.topicsRequired, topicsRequired) ||
                other.topicsRequired == topicsRequired) &&
            const DeepCollectionEquality()
                .equals(other._customFields, _customFields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      workType,
      callbackTitle,
      callbackGreeting,
      const DeepCollectionEquality().hash(_topics),
      topicsTitle,
      topicsRequired,
      const DeepCollectionEquality().hash(_customFields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetupCallbackSettingsImplCopyWith<_$SetupCallbackSettingsImpl>
      get copyWith => __$$SetupCallbackSettingsImplCopyWithImpl<
          _$SetupCallbackSettingsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetupCallbackSettingsImplToJson(
      this,
    );
  }
}

abstract class _SetupCallbackSettings implements SetupCallbackSettings {
  const factory _SetupCallbackSettings(
      {required final String workType,
      required final String callbackTitle,
      required final String callbackGreeting,
      required final List<dynamic> topics,
      required final String topicsTitle,
      required final int topicsRequired,
      required final List<dynamic> customFields}) = _$SetupCallbackSettingsImpl;

  factory _SetupCallbackSettings.fromJson(Map<String, dynamic> json) =
      _$SetupCallbackSettingsImpl.fromJson;

  @override
  String get workType;
  @override
  String get callbackTitle;
  @override
  String get callbackGreeting;
  @override
  List<dynamic> get topics;
  @override
  String get topicsTitle;
  @override
  int get topicsRequired;
  @override
  List<dynamic> get customFields;
  @override
  @JsonKey(ignore: true)
  _$$SetupCallbackSettingsImplCopyWith<_$SetupCallbackSettingsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SetupClient _$SetupClientFromJson(Map<String, dynamic> json) {
  return _SetupClient.fromJson(json);
}

/// @nodoc
mixin _$SetupClient {
  int get chat => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get pic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetupClientCopyWith<SetupClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetupClientCopyWith<$Res> {
  factory $SetupClientCopyWith(
          SetupClient value, $Res Function(SetupClient) then) =
      _$SetupClientCopyWithImpl<$Res, SetupClient>;
  @useResult
  $Res call({int chat, String? email, String? pic});
}

/// @nodoc
class _$SetupClientCopyWithImpl<$Res, $Val extends SetupClient>
    implements $SetupClientCopyWith<$Res> {
  _$SetupClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? email = freezed,
    Object? pic = freezed,
  }) {
    return _then(_value.copyWith(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetupClientImplCopyWith<$Res>
    implements $SetupClientCopyWith<$Res> {
  factory _$$SetupClientImplCopyWith(
          _$SetupClientImpl value, $Res Function(_$SetupClientImpl) then) =
      __$$SetupClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int chat, String? email, String? pic});
}

/// @nodoc
class __$$SetupClientImplCopyWithImpl<$Res>
    extends _$SetupClientCopyWithImpl<$Res, _$SetupClientImpl>
    implements _$$SetupClientImplCopyWith<$Res> {
  __$$SetupClientImplCopyWithImpl(
      _$SetupClientImpl _value, $Res Function(_$SetupClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chat = null,
    Object? email = freezed,
    Object? pic = freezed,
  }) {
    return _then(_$SetupClientImpl(
      chat: null == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as int,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetupClientImpl implements _SetupClient {
  const _$SetupClientImpl({required this.chat, this.email, this.pic});

  factory _$SetupClientImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetupClientImplFromJson(json);

  @override
  final int chat;
  @override
  final String? email;
  @override
  final String? pic;

  @override
  String toString() {
    return 'SetupClient(chat: $chat, email: $email, pic: $pic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetupClientImpl &&
            (identical(other.chat, chat) || other.chat == chat) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.pic, pic) || other.pic == pic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chat, email, pic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetupClientImplCopyWith<_$SetupClientImpl> get copyWith =>
      __$$SetupClientImplCopyWithImpl<_$SetupClientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetupClientImplToJson(
      this,
    );
  }
}

abstract class _SetupClient implements SetupClient {
  const factory _SetupClient(
      {required final int chat,
      final String? email,
      final String? pic}) = _$SetupClientImpl;

  factory _SetupClient.fromJson(Map<String, dynamic> json) =
      _$SetupClientImpl.fromJson;

  @override
  int get chat;
  @override
  String? get email;
  @override
  String? get pic;
  @override
  @JsonKey(ignore: true)
  _$$SetupClientImplCopyWith<_$SetupClientImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
