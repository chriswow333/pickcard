// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'publicutility.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Publicutility _$PublicutilityFromJson(Map<String, dynamic> json) {
  return _Publicutility.fromJson(json);
}

/// @nodoc
class _$PublicutilityTearOff {
  const _$PublicutilityTearOff();

  _Publicutility call({String? id, String? name}) {
    return _Publicutility(
      id: id,
      name: name,
    );
  }

  Publicutility fromJson(Map<String, Object?> json) {
    return Publicutility.fromJson(json);
  }
}

/// @nodoc
const $Publicutility = _$PublicutilityTearOff();

/// @nodoc
mixin _$Publicutility {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublicutilityCopyWith<Publicutility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicutilityCopyWith<$Res> {
  factory $PublicutilityCopyWith(
          Publicutility value, $Res Function(Publicutility) then) =
      _$PublicutilityCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$PublicutilityCopyWithImpl<$Res>
    implements $PublicutilityCopyWith<$Res> {
  _$PublicutilityCopyWithImpl(this._value, this._then);

  final Publicutility _value;
  // ignore: unused_field
  final $Res Function(Publicutility) _then;

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
abstract class _$PublicutilityCopyWith<$Res>
    implements $PublicutilityCopyWith<$Res> {
  factory _$PublicutilityCopyWith(
          _Publicutility value, $Res Function(_Publicutility) then) =
      __$PublicutilityCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$PublicutilityCopyWithImpl<$Res>
    extends _$PublicutilityCopyWithImpl<$Res>
    implements _$PublicutilityCopyWith<$Res> {
  __$PublicutilityCopyWithImpl(
      _Publicutility _value, $Res Function(_Publicutility) _then)
      : super(_value, (v) => _then(v as _Publicutility));

  @override
  _Publicutility get _value => super._value as _Publicutility;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Publicutility(
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
class _$_Publicutility implements _Publicutility {
  const _$_Publicutility({this.id, this.name});

  factory _$_Publicutility.fromJson(Map<String, dynamic> json) =>
      _$$_PublicutilityFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Publicutility(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Publicutility &&
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
  _$PublicutilityCopyWith<_Publicutility> get copyWith =>
      __$PublicutilityCopyWithImpl<_Publicutility>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PublicutilityToJson(this);
  }
}

abstract class _Publicutility implements Publicutility {
  const factory _Publicutility({String? id, String? name}) = _$_Publicutility;

  factory _Publicutility.fromJson(Map<String, dynamic> json) =
      _$_Publicutility.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$PublicutilityCopyWith<_Publicutility> get copyWith =>
      throw _privateConstructorUsedError;
}
