// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'additional_fields_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdditionalFieldsRequest _$AdditionalFieldsRequestFromJson(
    Map<String, dynamic> json) {
  return _AdditionalFieldsRequest.fromJson(json);
}

/// @nodoc
mixin _$AdditionalFieldsRequest {
  String get chatToken => throw _privateConstructorUsedError;
  List<AdditionalFieldsItemRequest> get additionalFields =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalFieldsRequestCopyWith<AdditionalFieldsRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalFieldsRequestCopyWith<$Res> {
  factory $AdditionalFieldsRequestCopyWith(AdditionalFieldsRequest value,
          $Res Function(AdditionalFieldsRequest) then) =
      _$AdditionalFieldsRequestCopyWithImpl<$Res, AdditionalFieldsRequest>;
  @useResult
  $Res call(
      {String chatToken, List<AdditionalFieldsItemRequest> additionalFields});
}

/// @nodoc
class _$AdditionalFieldsRequestCopyWithImpl<$Res,
        $Val extends AdditionalFieldsRequest>
    implements $AdditionalFieldsRequestCopyWith<$Res> {
  _$AdditionalFieldsRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatToken = null,
    Object? additionalFields = null,
  }) {
    return _then(_value.copyWith(
      chatToken: null == chatToken
          ? _value.chatToken
          : chatToken // ignore: cast_nullable_to_non_nullable
              as String,
      additionalFields: null == additionalFields
          ? _value.additionalFields
          : additionalFields // ignore: cast_nullable_to_non_nullable
              as List<AdditionalFieldsItemRequest>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdditionalFieldsRequestImplCopyWith<$Res>
    implements $AdditionalFieldsRequestCopyWith<$Res> {
  factory _$$AdditionalFieldsRequestImplCopyWith(
          _$AdditionalFieldsRequestImpl value,
          $Res Function(_$AdditionalFieldsRequestImpl) then) =
      __$$AdditionalFieldsRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String chatToken, List<AdditionalFieldsItemRequest> additionalFields});
}

/// @nodoc
class __$$AdditionalFieldsRequestImplCopyWithImpl<$Res>
    extends _$AdditionalFieldsRequestCopyWithImpl<$Res,
        _$AdditionalFieldsRequestImpl>
    implements _$$AdditionalFieldsRequestImplCopyWith<$Res> {
  __$$AdditionalFieldsRequestImplCopyWithImpl(
      _$AdditionalFieldsRequestImpl _value,
      $Res Function(_$AdditionalFieldsRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatToken = null,
    Object? additionalFields = null,
  }) {
    return _then(_$AdditionalFieldsRequestImpl(
      chatToken: null == chatToken
          ? _value.chatToken
          : chatToken // ignore: cast_nullable_to_non_nullable
              as String,
      additionalFields: null == additionalFields
          ? _value._additionalFields
          : additionalFields // ignore: cast_nullable_to_non_nullable
              as List<AdditionalFieldsItemRequest>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$AdditionalFieldsRequestImpl implements _AdditionalFieldsRequest {
  const _$AdditionalFieldsRequestImpl(
      {required this.chatToken,
      required final List<AdditionalFieldsItemRequest> additionalFields})
      : _additionalFields = additionalFields;

  factory _$AdditionalFieldsRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdditionalFieldsRequestImplFromJson(json);

  @override
  final String chatToken;
  final List<AdditionalFieldsItemRequest> _additionalFields;
  @override
  List<AdditionalFieldsItemRequest> get additionalFields {
    if (_additionalFields is EqualUnmodifiableListView)
      return _additionalFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_additionalFields);
  }

  @override
  String toString() {
    return 'AdditionalFieldsRequest(chatToken: $chatToken, additionalFields: $additionalFields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionalFieldsRequestImpl &&
            (identical(other.chatToken, chatToken) ||
                other.chatToken == chatToken) &&
            const DeepCollectionEquality()
                .equals(other._additionalFields, _additionalFields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, chatToken,
      const DeepCollectionEquality().hash(_additionalFields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionalFieldsRequestImplCopyWith<_$AdditionalFieldsRequestImpl>
      get copyWith => __$$AdditionalFieldsRequestImplCopyWithImpl<
          _$AdditionalFieldsRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalFieldsRequestImplToJson(
      this,
    );
  }
}

abstract class _AdditionalFieldsRequest implements AdditionalFieldsRequest {
  const factory _AdditionalFieldsRequest(
          {required final String chatToken,
          required final List<AdditionalFieldsItemRequest> additionalFields}) =
      _$AdditionalFieldsRequestImpl;

  factory _AdditionalFieldsRequest.fromJson(Map<String, dynamic> json) =
      _$AdditionalFieldsRequestImpl.fromJson;

  @override
  String get chatToken;
  @override
  List<AdditionalFieldsItemRequest> get additionalFields;
  @override
  @JsonKey(ignore: true)
  _$$AdditionalFieldsRequestImplCopyWith<_$AdditionalFieldsRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AdditionalFieldsItemRequest _$AdditionalFieldsItemRequestFromJson(
    Map<String, dynamic> json) {
  return _AdditionalFieldsItemRequest.fromJson(json);
}

/// @nodoc
mixin _$AdditionalFieldsItemRequest {
  String get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdditionalFieldsItemRequestCopyWith<AdditionalFieldsItemRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdditionalFieldsItemRequestCopyWith<$Res> {
  factory $AdditionalFieldsItemRequestCopyWith(
          AdditionalFieldsItemRequest value,
          $Res Function(AdditionalFieldsItemRequest) then) =
      _$AdditionalFieldsItemRequestCopyWithImpl<$Res,
          AdditionalFieldsItemRequest>;
  @useResult
  $Res call({String id, String value});
}

/// @nodoc
class _$AdditionalFieldsItemRequestCopyWithImpl<$Res,
        $Val extends AdditionalFieldsItemRequest>
    implements $AdditionalFieldsItemRequestCopyWith<$Res> {
  _$AdditionalFieldsItemRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdditionalFieldsItemRequestImplCopyWith<$Res>
    implements $AdditionalFieldsItemRequestCopyWith<$Res> {
  factory _$$AdditionalFieldsItemRequestImplCopyWith(
          _$AdditionalFieldsItemRequestImpl value,
          $Res Function(_$AdditionalFieldsItemRequestImpl) then) =
      __$$AdditionalFieldsItemRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String value});
}

/// @nodoc
class __$$AdditionalFieldsItemRequestImplCopyWithImpl<$Res>
    extends _$AdditionalFieldsItemRequestCopyWithImpl<$Res,
        _$AdditionalFieldsItemRequestImpl>
    implements _$$AdditionalFieldsItemRequestImplCopyWith<$Res> {
  __$$AdditionalFieldsItemRequestImplCopyWithImpl(
      _$AdditionalFieldsItemRequestImpl _value,
      $Res Function(_$AdditionalFieldsItemRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? value = null,
  }) {
    return _then(_$AdditionalFieldsItemRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$AdditionalFieldsItemRequestImpl
    implements _AdditionalFieldsItemRequest {
  const _$AdditionalFieldsItemRequestImpl(
      {required this.id, required this.value});

  factory _$AdditionalFieldsItemRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$AdditionalFieldsItemRequestImplFromJson(json);

  @override
  final String id;
  @override
  final String value;

  @override
  String toString() {
    return 'AdditionalFieldsItemRequest(id: $id, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdditionalFieldsItemRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdditionalFieldsItemRequestImplCopyWith<_$AdditionalFieldsItemRequestImpl>
      get copyWith => __$$AdditionalFieldsItemRequestImplCopyWithImpl<
          _$AdditionalFieldsItemRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdditionalFieldsItemRequestImplToJson(
      this,
    );
  }
}

abstract class _AdditionalFieldsItemRequest
    implements AdditionalFieldsItemRequest {
  const factory _AdditionalFieldsItemRequest(
      {required final String id,
      required final String value}) = _$AdditionalFieldsItemRequestImpl;

  factory _AdditionalFieldsItemRequest.fromJson(Map<String, dynamic> json) =
      _$AdditionalFieldsItemRequestImpl.fromJson;

  @override
  String get id;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$$AdditionalFieldsItemRequestImplCopyWith<_$AdditionalFieldsItemRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
