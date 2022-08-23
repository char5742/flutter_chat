// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return _Chat.fromJson(json);
}

/// @nodoc
mixin _$Chat {
  String get key => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  DateTime get created => throw _privateConstructorUsedError;
  String get senderKey => throw _privateConstructorUsedError;
  String get recieverKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res>;
  $Res call(
      {String key,
      String data,
      DateTime created,
      String senderKey,
      String recieverKey});
}

/// @nodoc
class _$ChatCopyWithImpl<$Res> implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  final Chat _value;
  // ignore: unused_field
  final $Res Function(Chat) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? data = freezed,
    Object? created = freezed,
    Object? senderKey = freezed,
    Object? recieverKey = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      senderKey: senderKey == freezed
          ? _value.senderKey
          : senderKey // ignore: cast_nullable_to_non_nullable
              as String,
      recieverKey: recieverKey == freezed
          ? _value.recieverKey
          : recieverKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$$_ChatCopyWith(_$_Chat value, $Res Function(_$_Chat) then) =
      __$$_ChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String key,
      String data,
      DateTime created,
      String senderKey,
      String recieverKey});
}

/// @nodoc
class __$$_ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res>
    implements _$$_ChatCopyWith<$Res> {
  __$$_ChatCopyWithImpl(_$_Chat _value, $Res Function(_$_Chat) _then)
      : super(_value, (v) => _then(v as _$_Chat));

  @override
  _$_Chat get _value => super._value as _$_Chat;

  @override
  $Res call({
    Object? key = freezed,
    Object? data = freezed,
    Object? created = freezed,
    Object? senderKey = freezed,
    Object? recieverKey = freezed,
  }) {
    return _then(_$_Chat(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      senderKey: senderKey == freezed
          ? _value.senderKey
          : senderKey // ignore: cast_nullable_to_non_nullable
              as String,
      recieverKey: recieverKey == freezed
          ? _value.recieverKey
          : recieverKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chat implements _Chat {
  const _$_Chat(
      {required this.key,
      required this.data,
      required this.created,
      required this.senderKey,
      required this.recieverKey});

  factory _$_Chat.fromJson(Map<String, dynamic> json) => _$$_ChatFromJson(json);

  @override
  final String key;
  @override
  final String data;
  @override
  final DateTime created;
  @override
  final String senderKey;
  @override
  final String recieverKey;

  @override
  String toString() {
    return 'Chat(key: $key, data: $data, created: $created, senderKey: $senderKey, recieverKey: $recieverKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chat &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.created, created) &&
            const DeepCollectionEquality().equals(other.senderKey, senderKey) &&
            const DeepCollectionEquality()
                .equals(other.recieverKey, recieverKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(created),
      const DeepCollectionEquality().hash(senderKey),
      const DeepCollectionEquality().hash(recieverKey));

  @JsonKey(ignore: true)
  @override
  _$$_ChatCopyWith<_$_Chat> get copyWith =>
      __$$_ChatCopyWithImpl<_$_Chat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatToJson(
      this,
    );
  }
}

abstract class _Chat implements Chat {
  const factory _Chat(
      {required final String key,
      required final String data,
      required final DateTime created,
      required final String senderKey,
      required final String recieverKey}) = _$_Chat;

  factory _Chat.fromJson(Map<String, dynamic> json) = _$_Chat.fromJson;

  @override
  String get key;
  @override
  String get data;
  @override
  DateTime get created;
  @override
  String get senderKey;
  @override
  String get recieverKey;
  @override
  @JsonKey(ignore: true)
  _$$_ChatCopyWith<_$_Chat> get copyWith => throw _privateConstructorUsedError;
}
