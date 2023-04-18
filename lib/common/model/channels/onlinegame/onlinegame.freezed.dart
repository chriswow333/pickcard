// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onlinegame.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Onlinegame _$OnlinegameFromJson(Map<String, dynamic> json) {
  return _Onlinegame.fromJson(json);
}

/// @nodoc
class _$OnlinegameTearOff {
  const _$OnlinegameTearOff();

  _Onlinegame call({String? id, String? name}) {
    return _Onlinegame(
      id: id,
      name: name,
    );
  }

  Onlinegame fromJson(Map<String, Object?> json) {
    return Onlinegame.fromJson(json);
  }
}

/// @nodoc
const $Onlinegame = _$OnlinegameTearOff();

/// @nodoc
mixin _$Onlinegame {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnlinegameCopyWith<Onlinegame> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlinegameCopyWith<$Res> {
  factory $OnlinegameCopyWith(
          Onlinegame value, $Res Function(Onlinegame) then) =
      _$OnlinegameCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$OnlinegameCopyWithImpl<$Res> implements $OnlinegameCopyWith<$Res> {
  _$OnlinegameCopyWithImpl(this._value, this._then);

  final Onlinegame _value;
  // ignore: unused_field
  final $Res Function(Onlinegame) _then;

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
abstract class _$OnlinegameCopyWith<$Res> implements $OnlinegameCopyWith<$Res> {
  factory _$OnlinegameCopyWith(
          _Onlinegame value, $Res Function(_Onlinegame) then) =
      __$OnlinegameCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$OnlinegameCopyWithImpl<$Res> extends _$OnlinegameCopyWithImpl<$Res>
    implements _$OnlinegameCopyWith<$Res> {
  __$OnlinegameCopyWithImpl(
      _Onlinegame _value, $Res Function(_Onlinegame) _then)
      : super(_value, (v) => _then(v as _Onlinegame));

  @override
  _Onlinegame get _value => super._value as _Onlinegame;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Onlinegame(
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
class _$_Onlinegame implements _Onlinegame {
  const _$_Onlinegame({this.id, this.name});

  factory _$_Onlinegame.fromJson(Map<String, dynamic> json) =>
      _$$_OnlinegameFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Onlinegame(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Onlinegame &&
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
  _$OnlinegameCopyWith<_Onlinegame> get copyWith =>
      __$OnlinegameCopyWithImpl<_Onlinegame>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnlinegameToJson(this);
  }
}

abstract class _Onlinegame implements Onlinegame {
  const factory _Onlinegame({String? id, String? name}) = _$_Onlinegame;

  factory _Onlinegame.fromJson(Map<String, dynamic> json) =
      _$_Onlinegame.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$OnlinegameCopyWith<_Onlinegame> get copyWith =>
      throw _privateConstructorUsedError;
}
