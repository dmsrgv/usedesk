// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_client_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetClientResponse _$SetClientResponseFromJson(Map<String, dynamic> json) {
  return _SetClientResponse.fromJson(json);
}

/// @nodoc
mixin _$SetClientResponse {
  String get type => throw _privateConstructorUsedError;
  SetClientResponseState get state => throw _privateConstructorUsedError;
  bool? get reset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetClientResponseCopyWith<SetClientResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetClientResponseCopyWith<$Res> {
  factory $SetClientResponseCopyWith(
          SetClientResponse value, $Res Function(SetClientResponse) then) =
      _$SetClientResponseCopyWithImpl<$Res, SetClientResponse>;
  @useResult
  $Res call({String type, SetClientResponseState state, bool? reset});

  $SetClientResponseStateCopyWith<$Res> get state;
}

/// @nodoc
class _$SetClientResponseCopyWithImpl<$Res, $Val extends SetClientResponse>
    implements $SetClientResponseCopyWith<$Res> {
  _$SetClientResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? state = null,
    Object? reset = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as SetClientResponseState,
      reset: freezed == reset
          ? _value.reset
          : reset // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SetClientResponseStateCopyWith<$Res> get state {
    return $SetClientResponseStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetClientResponseImplCopyWith<$Res>
    implements $SetClientResponseCopyWith<$Res> {
  factory _$$SetClientResponseImplCopyWith(_$SetClientResponseImpl value,
          $Res Function(_$SetClientResponseImpl) then) =
      __$$SetClientResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, SetClientResponseState state, bool? reset});

  @override
  $SetClientResponseStateCopyWith<$Res> get state;
}

/// @nodoc
class __$$SetClientResponseImplCopyWithImpl<$Res>
    extends _$SetClientResponseCopyWithImpl<$Res, _$SetClientResponseImpl>
    implements _$$SetClientResponseImplCopyWith<$Res> {
  __$$SetClientResponseImplCopyWithImpl(_$SetClientResponseImpl _value,
      $Res Function(_$SetClientResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? state = null,
    Object? reset = freezed,
  }) {
    return _then(_$SetClientResponseImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as SetClientResponseState,
      reset: freezed == reset
          ? _value.reset
          : reset // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetClientResponseImpl implements _SetClientResponse {
  const _$SetClientResponseImpl(
      {required this.type, required this.state, this.reset});

  factory _$SetClientResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetClientResponseImplFromJson(json);

  @override
  final String type;
  @override
  final SetClientResponseState state;
  @override
  final bool? reset;

  @override
  String toString() {
    return 'SetClientResponse(type: $type, state: $state, reset: $reset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetClientResponseImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.reset, reset) || other.reset == reset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, state, reset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetClientResponseImplCopyWith<_$SetClientResponseImpl> get copyWith =>
      __$$SetClientResponseImplCopyWithImpl<_$SetClientResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetClientResponseImplToJson(
      this,
    );
  }
}

abstract class _SetClientResponse implements SetClientResponse, BaseResponse {
  const factory _SetClientResponse(
      {required final String type,
      required final SetClientResponseState state,
      final bool? reset}) = _$SetClientResponseImpl;

  factory _SetClientResponse.fromJson(Map<String, dynamic> json) =
      _$SetClientResponseImpl.fromJson;

  @override
  String get type;
  @override
  SetClientResponseState get state;
  @override
  bool? get reset;
  @override
  @JsonKey(ignore: true)
  _$$SetClientResponseImplCopyWith<_$SetClientResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SetClientResponseState _$SetClientResponseStateFromJson(
    Map<String, dynamic> json) {
  return _SetClientResponseState.fromJson(json);
}

/// @nodoc
mixin _$SetClientResponseState {
  SetClientResponseStateClient get client => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetClientResponseStateCopyWith<SetClientResponseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetClientResponseStateCopyWith<$Res> {
  factory $SetClientResponseStateCopyWith(SetClientResponseState value,
          $Res Function(SetClientResponseState) then) =
      _$SetClientResponseStateCopyWithImpl<$Res, SetClientResponseState>;
  @useResult
  $Res call({SetClientResponseStateClient client});

  $SetClientResponseStateClientCopyWith<$Res> get client;
}

/// @nodoc
class _$SetClientResponseStateCopyWithImpl<$Res,
        $Val extends SetClientResponseState>
    implements $SetClientResponseStateCopyWith<$Res> {
  _$SetClientResponseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_value.copyWith(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as SetClientResponseStateClient,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SetClientResponseStateClientCopyWith<$Res> get client {
    return $SetClientResponseStateClientCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetClientResponseStateImplCopyWith<$Res>
    implements $SetClientResponseStateCopyWith<$Res> {
  factory _$$SetClientResponseStateImplCopyWith(
          _$SetClientResponseStateImpl value,
          $Res Function(_$SetClientResponseStateImpl) then) =
      __$$SetClientResponseStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SetClientResponseStateClient client});

  @override
  $SetClientResponseStateClientCopyWith<$Res> get client;
}

/// @nodoc
class __$$SetClientResponseStateImplCopyWithImpl<$Res>
    extends _$SetClientResponseStateCopyWithImpl<$Res,
        _$SetClientResponseStateImpl>
    implements _$$SetClientResponseStateImplCopyWith<$Res> {
  __$$SetClientResponseStateImplCopyWithImpl(
      _$SetClientResponseStateImpl _value,
      $Res Function(_$SetClientResponseStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? client = null,
  }) {
    return _then(_$SetClientResponseStateImpl(
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as SetClientResponseStateClient,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetClientResponseStateImpl implements _SetClientResponseState {
  const _$SetClientResponseStateImpl({required this.client});

  factory _$SetClientResponseStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetClientResponseStateImplFromJson(json);

  @override
  final SetClientResponseStateClient client;

  @override
  String toString() {
    return 'SetClientResponseState(client: $client)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetClientResponseStateImpl &&
            (identical(other.client, client) || other.client == client));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetClientResponseStateImplCopyWith<_$SetClientResponseStateImpl>
      get copyWith => __$$SetClientResponseStateImplCopyWithImpl<
          _$SetClientResponseStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetClientResponseStateImplToJson(
      this,
    );
  }
}

abstract class _SetClientResponseState implements SetClientResponseState {
  const factory _SetClientResponseState(
          {required final SetClientResponseStateClient client}) =
      _$SetClientResponseStateImpl;

  factory _SetClientResponseState.fromJson(Map<String, dynamic> json) =
      _$SetClientResponseStateImpl.fromJson;

  @override
  SetClientResponseStateClient get client;
  @override
  @JsonKey(ignore: true)
  _$$SetClientResponseStateImplCopyWith<_$SetClientResponseStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SetClientResponseStateClient _$SetClientResponseStateClientFromJson(
    Map<String, dynamic> json) {
  return _SetClientResponseStateClient.fromJson(json);
}

/// @nodoc
mixin _$SetClientResponseStateClient {
  String? get token => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get chat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SetClientResponseStateClientCopyWith<SetClientResponseStateClient>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetClientResponseStateClientCopyWith<$Res> {
  factory $SetClientResponseStateClientCopyWith(
          SetClientResponseStateClient value,
          $Res Function(SetClientResponseStateClient) then) =
      _$SetClientResponseStateClientCopyWithImpl<$Res,
          SetClientResponseStateClient>;
  @useResult
  $Res call({String? token, String? email, int? chat});
}

/// @nodoc
class _$SetClientResponseStateClientCopyWithImpl<$Res,
        $Val extends SetClientResponseStateClient>
    implements $SetClientResponseStateClientCopyWith<$Res> {
  _$SetClientResponseStateClientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? email = freezed,
    Object? chat = freezed,
  }) {
    return _then(_value.copyWith(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetClientResponseStateClientImplCopyWith<$Res>
    implements $SetClientResponseStateClientCopyWith<$Res> {
  factory _$$SetClientResponseStateClientImplCopyWith(
          _$SetClientResponseStateClientImpl value,
          $Res Function(_$SetClientResponseStateClientImpl) then) =
      __$$SetClientResponseStateClientImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? token, String? email, int? chat});
}

/// @nodoc
class __$$SetClientResponseStateClientImplCopyWithImpl<$Res>
    extends _$SetClientResponseStateClientCopyWithImpl<$Res,
        _$SetClientResponseStateClientImpl>
    implements _$$SetClientResponseStateClientImplCopyWith<$Res> {
  __$$SetClientResponseStateClientImplCopyWithImpl(
      _$SetClientResponseStateClientImpl _value,
      $Res Function(_$SetClientResponseStateClientImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
    Object? email = freezed,
    Object? chat = freezed,
  }) {
    return _then(_$SetClientResponseStateClientImpl(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetClientResponseStateClientImpl
    implements _SetClientResponseStateClient {
  const _$SetClientResponseStateClientImpl({this.token, this.email, this.chat});

  factory _$SetClientResponseStateClientImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SetClientResponseStateClientImplFromJson(json);

  @override
  final String? token;
  @override
  final String? email;
  @override
  final int? chat;

  @override
  String toString() {
    return 'SetClientResponseStateClient(token: $token, email: $email, chat: $chat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetClientResponseStateClientImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.chat, chat) || other.chat == chat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, email, chat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetClientResponseStateClientImplCopyWith<
          _$SetClientResponseStateClientImpl>
      get copyWith => __$$SetClientResponseStateClientImplCopyWithImpl<
          _$SetClientResponseStateClientImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetClientResponseStateClientImplToJson(
      this,
    );
  }
}

abstract class _SetClientResponseStateClient
    implements SetClientResponseStateClient {
  const factory _SetClientResponseStateClient(
      {final String? token,
      final String? email,
      final int? chat}) = _$SetClientResponseStateClientImpl;

  factory _SetClientResponseStateClient.fromJson(Map<String, dynamic> json) =
      _$SetClientResponseStateClientImpl.fromJson;

  @override
  String? get token;
  @override
  String? get email;
  @override
  int? get chat;
  @override
  @JsonKey(ignore: true)
  _$$SetClientResponseStateClientImplCopyWith<
          _$SetClientResponseStateClientImpl>
      get copyWith => throw _privateConstructorUsedError;
}
