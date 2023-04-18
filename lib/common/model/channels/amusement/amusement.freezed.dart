// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'amusement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Amusement _$AmusementFromJson(Map<String, dynamic> json) {
  return _Amusement.fromJson(json);
}

/// @nodoc
class _$AmusementTearOff {
  const _$AmusementTearOff();

  _Amusement call({String? id, String? name}) {
    return _Amusement(
      id: id,
      name: name,
    );
  }

  Amusement fromJson(Map<String, Object?> json) {
    return Amusement.fromJson(json);
  }
}

/// @nodoc
const $Amusement = _$AmusementTearOff();

/// @nodoc
mixin _$Amusement {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmusementCopyWith<Amusement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmusementCopyWith<$Res> {
  factory $AmusementCopyWith(Amusement value, $Res Function(Amusement) then) =
      _$AmusementCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$AmusementCopyWithImpl<$Res> implements $AmusementCopyWith<$Res> {
  _$AmusementCopyWithImpl(this._value, this._then);

  final Amusement _value;
  // ignore: unused_field
  final $Res Function(Amusement) _then;

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
abstract class _$AmusementCopyWith<$Res> implements $AmusementCopyWith<$Res> {
  factory _$AmusementCopyWith(
          _Amusement value, $Res Function(_Amusement) then) =
      __$AmusementCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$AmusementCopyWithImpl<$Res> extends _$AmusementCopyWithImpl<$Res>
    implements _$AmusementCopyWith<$Res> {
  __$AmusementCopyWithImpl(_Amusement _value, $Res Function(_Amusement) _then)
      : super(_value, (v) => _then(v as _Amusement));

  @override
  _Amusement get _value => super._value as _Amusement;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Amusement(
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
class _$_Amusement implements _Amusement {
  const _$_Amusement({this.id, this.name});

  factory _$_Amusement.fromJson(Map<String, dynamic> json) =>
      _$$_AmusementFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Amusement(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Amusement &&
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
  _$AmusementCopyWith<_Amusement> get copyWith =>
      __$AmusementCopyWithImpl<_Amusement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AmusementToJson(this);
  }
}

abstract class _Amusement implements Amusement {
  const factory _Amusement({String? id, String? name}) = _$_Amusement;

  factory _Amusement.fromJson(Map<String, dynamic> json) =
      _$_Amusement.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$AmusementCopyWith<_Amusement> get copyWith =>
      throw _privateConstructorUsedError;
}
