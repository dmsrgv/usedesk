// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inited_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InitedRequest _$InitedRequestFromJson(Map<String, dynamic> json) {
  return _InitedRequest.fromJson(json);
}

/// @nodoc
mixin _$InitedRequest {
  String get type => throw _privateConstructorUsedError;
  String get companyId => throw _privateConstructorUsedError;
  InitedRequestPayload get payload => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitedRequestCopyWith<InitedRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitedRequestCopyWith<$Res> {
  factory $InitedRequestCopyWith(
          InitedRequest value, $Res Function(InitedRequest) then) =
      _$InitedRequestCopyWithImpl<$Res, InitedRequest>;
  @useResult
  $Res call(
      {String type,
      String companyId,
      InitedRequestPayload payload,
      String? url,
      String? token});

  $InitedRequestPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$InitedRequestCopyWithImpl<$Res, $Val extends InitedRequest>
    implements $InitedRequestCopyWith<$Res> {
  _$InitedRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? companyId = null,
    Object? payload = null,
    Object? url = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as InitedRequestPayload,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InitedRequestPayloadCopyWith<$Res> get payload {
    return $InitedRequestPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitedRequestImplCopyWith<$Res>
    implements $InitedRequestCopyWith<$Res> {
  factory _$$InitedRequestImplCopyWith(
          _$InitedRequestImpl value, $Res Function(_$InitedRequestImpl) then) =
      __$$InitedRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String companyId,
      InitedRequestPayload payload,
      String? url,
      String? token});

  @override
  $InitedRequestPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$InitedRequestImplCopyWithImpl<$Res>
    extends _$InitedRequestCopyWithImpl<$Res, _$InitedRequestImpl>
    implements _$$InitedRequestImplCopyWith<$Res> {
  __$$InitedRequestImplCopyWithImpl(
      _$InitedRequestImpl _value, $Res Function(_$InitedRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? companyId = null,
    Object? payload = null,
    Object? url = freezed,
    Object? token = freezed,
  }) {
    return _then(_$InitedRequestImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      companyId: null == companyId
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as InitedRequestPayload,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$InitedRequestImpl implements _InitedRequest {
  const _$InitedRequestImpl(
      {this.type = '@@server/chat/INIT',
      required this.companyId,
      this.payload = const InitedRequestPayload(),
      this.url,
      this.token});

  factory _$InitedRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitedRequestImplFromJson(json);

  @override
  @JsonKey()
  final String type;
  @override
  final String companyId;
  @override
  @JsonKey()
  final InitedRequestPayload payload;
  @override
  final String? url;
  @override
  final String? token;

  @override
  String toString() {
    return 'InitedRequest(type: $type, companyId: $companyId, payload: $payload, url: $url, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitedRequestImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.companyId, companyId) ||
                other.companyId == companyId) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, type, companyId, payload, url, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitedRequestImplCopyWith<_$InitedRequestImpl> get copyWith =>
      __$$InitedRequestImplCopyWithImpl<_$InitedRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitedRequestImplToJson(
      this,
    );
  }
}

abstract class _InitedRequest implements InitedRequest {
  const factory _InitedRequest(
      {final String type,
      required final String companyId,
      final InitedRequestPayload payload,
      final String? url,
      final String? token}) = _$InitedRequestImpl;

  factory _InitedRequest.fromJson(Map<String, dynamic> json) =
      _$InitedRequestImpl.fromJson;

  @override
  String get type;
  @override
  String get companyId;
  @override
  InitedRequestPayload get payload;
  @override
  String? get url;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$InitedRequestImplCopyWith<_$InitedRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

InitedRequestPayload _$InitedRequestPayloadFromJson(Map<String, dynamic> json) {
  return _InitedRequestPayload.fromJson(json);
}

/// @nodoc
mixin _$InitedRequestPayload {
  String get sdk => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InitedRequestPayloadCopyWith<InitedRequestPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitedRequestPayloadCopyWith<$Res> {
  factory $InitedRequestPayloadCopyWith(InitedRequestPayload value,
          $Res Function(InitedRequestPayload) then) =
      _$InitedRequestPayloadCopyWithImpl<$Res, InitedRequestPayload>;
  @useResult
  $Res call({String sdk, String type, String version});
}

/// @nodoc
class _$InitedRequestPayloadCopyWithImpl<$Res,
        $Val extends InitedRequestPayload>
    implements $InitedRequestPayloadCopyWith<$Res> {
  _$InitedRequestPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sdk = null,
    Object? type = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      sdk: null == sdk
          ? _value.sdk
          : sdk // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitedRequestPayloadImplCopyWith<$Res>
    implements $InitedRequestPayloadCopyWith<$Res> {
  factory _$$InitedRequestPayloadImplCopyWith(_$InitedRequestPayloadImpl value,
          $Res Function(_$InitedRequestPayloadImpl) then) =
      __$$InitedRequestPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sdk, String type, String version});
}

/// @nodoc
class __$$InitedRequestPayloadImplCopyWithImpl<$Res>
    extends _$InitedRequestPayloadCopyWithImpl<$Res, _$InitedRequestPayloadImpl>
    implements _$$InitedRequestPayloadImplCopyWith<$Res> {
  __$$InitedRequestPayloadImplCopyWithImpl(_$InitedRequestPayloadImpl _value,
      $Res Function(_$InitedRequestPayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sdk = null,
    Object? type = null,
    Object? version = null,
  }) {
    return _then(_$InitedRequestPayloadImpl(
      sdk: null == sdk
          ? _value.sdk
          : sdk // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitedRequestPayloadImpl implements _InitedRequestPayload {
  const _$InitedRequestPayloadImpl(
      {this.sdk = 'iOS', this.type = 'sdk', this.version = '2.3.0'});

  factory _$InitedRequestPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitedRequestPayloadImplFromJson(json);

  @override
  @JsonKey()
  final String sdk;
  @override
  @JsonKey()
  final String type;
  @override
  @JsonKey()
  final String version;

  @override
  String toString() {
    return 'InitedRequestPayload(sdk: $sdk, type: $type, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitedRequestPayloadImpl &&
            (identical(other.sdk, sdk) || other.sdk == sdk) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sdk, type, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitedRequestPayloadImplCopyWith<_$InitedRequestPayloadImpl>
      get copyWith =>
          __$$InitedRequestPayloadImplCopyWithImpl<_$InitedRequestPayloadImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitedRequestPayloadImplToJson(
      this,
    );
  }
}

abstract class _InitedRequestPayload implements InitedRequestPayload {
  const factory _InitedRequestPayload(
      {final String sdk,
      final String type,
      final String version}) = _$InitedRequestPayloadImpl;

  factory _InitedRequestPayload.fromJson(Map<String, dynamic> json) =
      _$InitedRequestPayloadImpl.fromJson;

  @override
  String get sdk;
  @override
  String get type;
  @override
  String get version;
  @override
  @JsonKey(ignore: true)
  _$$InitedRequestPayloadImplCopyWith<_$InitedRequestPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}
