// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cinema.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cinema _$CinemaFromJson(Map<String, dynamic> json) {
  return _Cinema.fromJson(json);
}

/// @nodoc
class _$CinemaTearOff {
  const _$CinemaTearOff();

  _Cinema call({String? id, String? name}) {
    return _Cinema(
      id: id,
      name: name,
    );
  }

  Cinema fromJson(Map<String, Object?> json) {
    return Cinema.fromJson(json);
  }
}

/// @nodoc
const $Cinema = _$CinemaTearOff();

/// @nodoc
mixin _$Cinema {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CinemaCopyWith<Cinema> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CinemaCopyWith<$Res> {
  factory $CinemaCopyWith(Cinema value, $Res Function(Cinema) then) =
      _$CinemaCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$CinemaCopyWithImpl<$Res> implements $CinemaCopyWith<$Res> {
  _$CinemaCopyWithImpl(this._value, this._then);

  final Cinema _value;
  // ignore: unused_field
  final $Res Function(Cinema) _then;

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
abstract class _$CinemaCopyWith<$Res> implements $CinemaCopyWith<$Res> {
  factory _$CinemaCopyWith(_Cinema value, $Res Function(_Cinema) then) =
      __$CinemaCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$CinemaCopyWithImpl<$Res> extends _$CinemaCopyWithImpl<$Res>
    implements _$CinemaCopyWith<$Res> {
  __$CinemaCopyWithImpl(_Cinema _value, $Res Function(_Cinema) _then)
      : super(_value, (v) => _then(v as _Cinema));

  @override
  _Cinema get _value => super._value as _Cinema;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Cinema(
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
class _$_Cinema implements _Cinema {
  const _$_Cinema({this.id, this.name});

  factory _$_Cinema.fromJson(Map<String, dynamic> json) =>
      _$$_CinemaFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Cinema(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Cinema &&
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
  _$CinemaCopyWith<_Cinema> get copyWith =>
      __$CinemaCopyWithImpl<_Cinema>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CinemaToJson(this);
  }
}

abstract class _Cinema implements Cinema {
  const factory _Cinema({String? id, String? name}) = _$_Cinema;

  factory _Cinema.fromJson(Map<String, dynamic> json) = _$_Cinema.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$CinemaCopyWith<_Cinema> get copyWith => throw _privateConstructorUsedError;
}
