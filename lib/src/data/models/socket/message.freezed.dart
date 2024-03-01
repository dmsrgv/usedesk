// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Message<C> _$MessageFromJson<C>(Map<String, dynamic> json) {
  return _Message<C>.fromJson(json);
}

/// @nodoc
mixin _$Message<C> {
  int get id => throw _privateConstructorUsedError;
  MessageType get type => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  dynamic get user => throw _privateConstructorUsedError;
  MessagePayload? get payload =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(fromJson: Message._chatFromJson, toJson: Message._chatToJson)
  C? get chat =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<MessageButton>? get buttons => throw _privateConstructorUsedError;
  MessageFile? get file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<C, Message<C>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<C, $Res> {
  factory $MessageCopyWith(Message<C> value, $Res Function(Message<C>) then) =
      _$MessageCopyWithImpl<C, $Res, Message<C>>;
  @useResult
  $Res call(
      {int id,
      MessageType type,
      DateTime createdAt,
      String? text,
      String? name,
      dynamic user,
      MessagePayload? payload,
      @JsonKey(fromJson: Message._chatFromJson, toJson: Message._chatToJson)
      C? chat,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<MessageButton>? buttons,
      MessageFile? file});

  $MessagePayloadCopyWith<$Res>? get payload;
  $MessageFileCopyWith<$Res>? get file;
}

/// @nodoc
class _$MessageCopyWithImpl<C, $Res, $Val extends Message<C>>
    implements $MessageCopyWith<C, $Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? createdAt = null,
    Object? text = freezed,
    Object? name = freezed,
    Object? user = freezed,
    Object? payload = freezed,
    Object? chat = freezed,
    Object? buttons = freezed,
    Object? file = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as MessagePayload?,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as C?,
      buttons: freezed == buttons
          ? _value.buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as List<MessageButton>?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as MessageFile?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessagePayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $MessagePayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageFileCopyWith<$Res>? get file {
    if (_value.file == null) {
      return null;
    }

    return $MessageFileCopyWith<$Res>(_value.file!, (value) {
      return _then(_value.copyWith(file: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageImplCopyWith<C, $Res>
    implements $MessageCopyWith<C, $Res> {
  factory _$$MessageImplCopyWith(
          _$MessageImpl<C> value, $Res Function(_$MessageImpl<C>) then) =
      __$$MessageImplCopyWithImpl<C, $Res>;
  @override
  @useResult
  $Res call(
      {int id,
      MessageType type,
      DateTime createdAt,
      String? text,
      String? name,
      dynamic user,
      MessagePayload? payload,
      @JsonKey(fromJson: Message._chatFromJson, toJson: Message._chatToJson)
      C? chat,
      @JsonKey(includeFromJson: false, includeToJson: false)
      List<MessageButton>? buttons,
      MessageFile? file});

  @override
  $MessagePayloadCopyWith<$Res>? get payload;
  @override
  $MessageFileCopyWith<$Res>? get file;
}

/// @nodoc
class __$$MessageImplCopyWithImpl<C, $Res>
    extends _$MessageCopyWithImpl<C, $Res, _$MessageImpl<C>>
    implements _$$MessageImplCopyWith<C, $Res> {
  __$$MessageImplCopyWithImpl(
      _$MessageImpl<C> _value, $Res Function(_$MessageImpl<C>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? createdAt = null,
    Object? text = freezed,
    Object? name = freezed,
    Object? user = freezed,
    Object? payload = freezed,
    Object? chat = freezed,
    Object? buttons = freezed,
    Object? file = freezed,
  }) {
    return _then(_$MessageImpl<C>(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as MessageType,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as dynamic,
      payload: freezed == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as MessagePayload?,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as C?,
      buttons: freezed == buttons
          ? _value._buttons
          : buttons // ignore: cast_nullable_to_non_nullable
              as List<MessageButton>?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as MessageFile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageImpl<C> implements _Message<C> {
  const _$MessageImpl(
      {required this.id,
      required this.type,
      required this.createdAt,
      this.text,
      this.name,
      this.user,
      this.payload,
      @JsonKey(fromJson: Message._chatFromJson, toJson: Message._chatToJson)
      this.chat,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<MessageButton>? buttons,
      this.file})
      : _buttons = buttons;

  factory _$MessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageImplFromJson(json);

  @override
  final int id;
  @override
  final MessageType type;
  @override
  final DateTime createdAt;
  @override
  final String? text;
  @override
  final String? name;
  @override
  final dynamic user;
  @override
  final MessagePayload? payload;
// ignore: invalid_annotation_target
  @override
  @JsonKey(fromJson: Message._chatFromJson, toJson: Message._chatToJson)
  final C? chat;
// ignore: invalid_annotation_target
  final List<MessageButton>? _buttons;
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<MessageButton>? get buttons {
    final value = _buttons;
    if (value == null) return null;
    if (_buttons is EqualUnmodifiableListView) return _buttons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final MessageFile? file;

  @override
  String toString() {
    return 'Message<$C>(id: $id, type: $type, createdAt: $createdAt, text: $text, name: $name, user: $user, payload: $payload, chat: $chat, buttons: $buttons, file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageImpl<C> &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            (identical(other.payload, payload) || other.payload == payload) &&
            const DeepCollectionEquality().equals(other.chat, chat) &&
            const DeepCollectionEquality().equals(other._buttons, _buttons) &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      type,
      createdAt,
      text,
      name,
      const DeepCollectionEquality().hash(user),
      payload,
      const DeepCollectionEquality().hash(chat),
      const DeepCollectionEquality().hash(_buttons),
      file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageImplCopyWith<C, _$MessageImpl<C>> get copyWith =>
      __$$MessageImplCopyWithImpl<C, _$MessageImpl<C>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageImplToJson<C>(
      this,
    );
  }
}

abstract class _Message<C> implements Message<C> {
  const factory _Message(
      {required final int id,
      required final MessageType type,
      required final DateTime createdAt,
      final String? text,
      final String? name,
      final dynamic user,
      final MessagePayload? payload,
      @JsonKey(fromJson: Message._chatFromJson, toJson: Message._chatToJson)
      final C? chat,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final List<MessageButton>? buttons,
      final MessageFile? file}) = _$MessageImpl<C>;

  factory _Message.fromJson(Map<String, dynamic> json) =
      _$MessageImpl<C>.fromJson;

  @override
  int get id;
  @override
  MessageType get type;
  @override
  DateTime get createdAt;
  @override
  String? get text;
  @override
  String? get name;
  @override
  dynamic get user;
  @override
  MessagePayload? get payload;
  @override // ignore: invalid_annotation_target
  @JsonKey(fromJson: Message._chatFromJson, toJson: Message._chatToJson)
  C? get chat;
  @override // ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  List<MessageButton>? get buttons;
  @override
  MessageFile? get file;
  @override
  @JsonKey(ignore: true)
  _$$MessageImplCopyWith<C, _$MessageImpl<C>> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageFile _$MessageFileFromJson(Map<String, dynamic> json) {
  return _MessageFile.fromJson(json);
}

/// @nodoc
mixin _$MessageFile {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  String? get dataType =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Uint8List? get bytes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageFileCopyWith<MessageFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageFileCopyWith<$Res> {
  factory $MessageFileCopyWith(
          MessageFile value, $Res Function(MessageFile) then) =
      _$MessageFileCopyWithImpl<$Res, MessageFile>;
  @useResult
  $Res call(
      {String name,
      String type,
      String content,
      String size,
      String? dataType,
      @JsonKey(includeFromJson: false, includeToJson: false) Uint8List? bytes});
}

/// @nodoc
class _$MessageFileCopyWithImpl<$Res, $Val extends MessageFile>
    implements $MessageFileCopyWith<$Res> {
  _$MessageFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? content = null,
    Object? size = null,
    Object? dataType = freezed,
    Object? bytes = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      dataType: freezed == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as String?,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageFileImplCopyWith<$Res>
    implements $MessageFileCopyWith<$Res> {
  factory _$$MessageFileImplCopyWith(
          _$MessageFileImpl value, $Res Function(_$MessageFileImpl) then) =
      __$$MessageFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String type,
      String content,
      String size,
      String? dataType,
      @JsonKey(includeFromJson: false, includeToJson: false) Uint8List? bytes});
}

/// @nodoc
class __$$MessageFileImplCopyWithImpl<$Res>
    extends _$MessageFileCopyWithImpl<$Res, _$MessageFileImpl>
    implements _$$MessageFileImplCopyWith<$Res> {
  __$$MessageFileImplCopyWithImpl(
      _$MessageFileImpl _value, $Res Function(_$MessageFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? content = null,
    Object? size = null,
    Object? dataType = freezed,
    Object? bytes = freezed,
  }) {
    return _then(_$MessageFileImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      dataType: freezed == dataType
          ? _value.dataType
          : dataType // ignore: cast_nullable_to_non_nullable
              as String?,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageFileImpl implements _MessageFile {
  const _$MessageFileImpl(
      {required this.name,
      required this.type,
      required this.content,
      required this.size,
      required this.dataType,
      @JsonKey(includeFromJson: false, includeToJson: false) this.bytes});

  factory _$MessageFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageFileImplFromJson(json);

  @override
  final String name;
  @override
  final String type;
  @override
  final String content;
  @override
  final String size;
  @override
  final String? dataType;
// ignore: invalid_annotation_target
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final Uint8List? bytes;

  @override
  String toString() {
    return 'MessageFile(name: $name, type: $type, content: $content, size: $size, dataType: $dataType, bytes: $bytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageFileImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.dataType, dataType) ||
                other.dataType == dataType) &&
            const DeepCollectionEquality().equals(other.bytes, bytes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, content, size,
      dataType, const DeepCollectionEquality().hash(bytes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageFileImplCopyWith<_$MessageFileImpl> get copyWith =>
      __$$MessageFileImplCopyWithImpl<_$MessageFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageFileImplToJson(
      this,
    );
  }
}

abstract class _MessageFile implements MessageFile {
  const factory _MessageFile(
      {required final String name,
      required final String type,
      required final String content,
      required final String size,
      required final String? dataType,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final Uint8List? bytes}) = _$MessageFileImpl;

  factory _MessageFile.fromJson(Map<String, dynamic> json) =
      _$MessageFileImpl.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  String get content;
  @override
  String get size;
  @override
  String? get dataType;
  @override // ignore: invalid_annotation_target
  @JsonKey(includeFromJson: false, includeToJson: false)
  Uint8List? get bytes;
  @override
  @JsonKey(ignore: true)
  _$$MessageFileImplCopyWith<_$MessageFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessagePayload _$MessagePayloadFromJson(Map<String, dynamic> json) {
  return _MessagePayload.fromJson(json);
}

/// @nodoc
mixin _$MessagePayload {
  String? get avatar => throw _privateConstructorUsedError;
  String? get userRating =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'message_id', fromJson: MessagePayload._messageIdFromJson)
  int? get messageId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagePayloadCopyWith<MessagePayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagePayloadCopyWith<$Res> {
  factory $MessagePayloadCopyWith(
          MessagePayload value, $Res Function(MessagePayload) then) =
      _$MessagePayloadCopyWithImpl<$Res, MessagePayload>;
  @useResult
  $Res call(
      {String? avatar,
      String? userRating,
      @JsonKey(name: 'message_id', fromJson: MessagePayload._messageIdFromJson)
      int? messageId});
}

/// @nodoc
class _$MessagePayloadCopyWithImpl<$Res, $Val extends MessagePayload>
    implements $MessagePayloadCopyWith<$Res> {
  _$MessagePayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? userRating = freezed,
    Object? messageId = freezed,
  }) {
    return _then(_value.copyWith(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessagePayloadImplCopyWith<$Res>
    implements $MessagePayloadCopyWith<$Res> {
  factory _$$MessagePayloadImplCopyWith(_$MessagePayloadImpl value,
          $Res Function(_$MessagePayloadImpl) then) =
      __$$MessagePayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? avatar,
      String? userRating,
      @JsonKey(name: 'message_id', fromJson: MessagePayload._messageIdFromJson)
      int? messageId});
}

/// @nodoc
class __$$MessagePayloadImplCopyWithImpl<$Res>
    extends _$MessagePayloadCopyWithImpl<$Res, _$MessagePayloadImpl>
    implements _$$MessagePayloadImplCopyWith<$Res> {
  __$$MessagePayloadImplCopyWithImpl(
      _$MessagePayloadImpl _value, $Res Function(_$MessagePayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? avatar = freezed,
    Object? userRating = freezed,
    Object? messageId = freezed,
  }) {
    return _then(_$MessagePayloadImpl(
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      userRating: freezed == userRating
          ? _value.userRating
          : userRating // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessagePayloadImpl implements _MessagePayload {
  const _$MessagePayloadImpl(
      {this.avatar,
      this.userRating,
      @JsonKey(name: 'message_id', fromJson: MessagePayload._messageIdFromJson)
      this.messageId});

  factory _$MessagePayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessagePayloadImplFromJson(json);

  @override
  final String? avatar;
  @override
  final String? userRating;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'message_id', fromJson: MessagePayload._messageIdFromJson)
  final int? messageId;

  @override
  String toString() {
    return 'MessagePayload(avatar: $avatar, userRating: $userRating, messageId: $messageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessagePayloadImpl &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.userRating, userRating) ||
                other.userRating == userRating) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, avatar, userRating, messageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessagePayloadImplCopyWith<_$MessagePayloadImpl> get copyWith =>
      __$$MessagePayloadImplCopyWithImpl<_$MessagePayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessagePayloadImplToJson(
      this,
    );
  }
}

abstract class _MessagePayload implements MessagePayload {
  const factory _MessagePayload(
      {final String? avatar,
      final String? userRating,
      @JsonKey(name: 'message_id', fromJson: MessagePayload._messageIdFromJson)
      final int? messageId}) = _$MessagePayloadImpl;

  factory _MessagePayload.fromJson(Map<String, dynamic> json) =
      _$MessagePayloadImpl.fromJson;

  @override
  String? get avatar;
  @override
  String? get userRating;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'message_id', fromJson: MessagePayload._messageIdFromJson)
  int? get messageId;
  @override
  @JsonKey(ignore: true)
  _$$MessagePayloadImplCopyWith<_$MessagePayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageButton _$MessageButtonFromJson(Map<String, dynamic> json) {
  return _MessageButton.fromJson(json);
}

/// @nodoc
mixin _$MessageButton {
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageButtonCopyWith<MessageButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageButtonCopyWith<$Res> {
  factory $MessageButtonCopyWith(
          MessageButton value, $Res Function(MessageButton) then) =
      _$MessageButtonCopyWithImpl<$Res, MessageButton>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$MessageButtonCopyWithImpl<$Res, $Val extends MessageButton>
    implements $MessageButtonCopyWith<$Res> {
  _$MessageButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessageButtonImplCopyWith<$Res>
    implements $MessageButtonCopyWith<$Res> {
  factory _$$MessageButtonImplCopyWith(
          _$MessageButtonImpl value, $Res Function(_$MessageButtonImpl) then) =
      __$$MessageButtonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$MessageButtonImplCopyWithImpl<$Res>
    extends _$MessageButtonCopyWithImpl<$Res, _$MessageButtonImpl>
    implements _$$MessageButtonImplCopyWith<$Res> {
  __$$MessageButtonImplCopyWithImpl(
      _$MessageButtonImpl _value, $Res Function(_$MessageButtonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$MessageButtonImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageButtonImpl implements _MessageButton {
  const _$MessageButtonImpl({required this.text});

  factory _$MessageButtonImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageButtonImplFromJson(json);

  @override
  final String text;

  @override
  String toString() {
    return 'MessageButton(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageButtonImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageButtonImplCopyWith<_$MessageButtonImpl> get copyWith =>
      __$$MessageButtonImplCopyWithImpl<_$MessageButtonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageButtonImplToJson(
      this,
    );
  }
}

abstract class _MessageButton implements MessageButton {
  const factory _MessageButton({required final String text}) =
      _$MessageButtonImpl;

  factory _MessageButton.fromJson(Map<String, dynamic> json) =
      _$MessageButtonImpl.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$MessageButtonImplCopyWith<_$MessageButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
