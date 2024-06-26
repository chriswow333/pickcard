// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'streaming.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Streaming _$StreamingFromJson(Map<String, dynamic> json) {
  return _Streaming.fromJson(json);
}

/// @nodoc
class _$StreamingTearOff {
  const _$StreamingTearOff();

  _Streaming call({String? id, String? name}) {
    return _Streaming(
      id: id,
      name: name,
    );
  }

  Streaming fromJson(Map<String, Object?> json) {
    return Streaming.fromJson(json);
  }
}

/// @nodoc
const $Streaming = _$StreamingTearOff();

/// @nodoc
mixin _$Streaming {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamingCopyWith<Streaming> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamingCopyWith<$Res> {
  factory $StreamingCopyWith(Streaming value, $Res Function(Streaming) then) =
      _$StreamingCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$StreamingCopyWithImpl<$Res> implements $StreamingCopyWith<$Res> {
  _$StreamingCopyWithImpl(this._value, this._then);

  final Streaming _value;
  // ignore: unused_field
  final $Res Function(Streaming) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$StreamingCopyWith<$Res> implements $StreamingCopyWith<$Res> {
  factory _$StreamingCopyWith(
          _Streaming value, $Res Function(_Streaming) then) =
      __$StreamingCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$StreamingCopyWithImpl<$Res> extends _$StreamingCopyWithImpl<$Res>
    implements _$StreamingCopyWith<$Res> {
  __$StreamingCopyWithImpl(_Streaming _value, $Res Function(_Streaming) _then)
      : super(_value, (v) => _then(v as _Streaming));

  @override
  _Streaming get _value => super._value as _Streaming;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Streaming(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Streaming implements _Streaming {
  const _$_Streaming({this.id, this.name});

  factory _$_Streaming.fromJson(Map<String, dynamic> json) =>
      _$$_StreamingFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Streaming(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Streaming &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$StreamingCopyWith<_Streaming> get copyWith =>
      __$StreamingCopyWithImpl<_Streaming>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StreamingToJson(this);
  }
}

abstract class _Streaming implements Streaming {
  const factory _Streaming({String? id, String? name}) = _$_Streaming;

  factory _Streaming.fromJson(Map<String, dynamic> json) =
      _$_Streaming.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$StreamingCopyWith<_Streaming> get copyWith =>
      throw _privateConstructorUsedError;
}
