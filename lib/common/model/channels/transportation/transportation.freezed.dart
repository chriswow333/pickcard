// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transportation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Transportation _$TransportationFromJson(Map<String, dynamic> json) {
  return _Transportation.fromJson(json);
}

/// @nodoc
class _$TransportationTearOff {
  const _$TransportationTearOff();

  _Transportation call({String? id, String? name}) {
    return _Transportation(
      id: id,
      name: name,
    );
  }

  Transportation fromJson(Map<String, Object?> json) {
    return Transportation.fromJson(json);
  }
}

/// @nodoc
const $Transportation = _$TransportationTearOff();

/// @nodoc
mixin _$Transportation {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransportationCopyWith<Transportation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransportationCopyWith<$Res> {
  factory $TransportationCopyWith(
          Transportation value, $Res Function(Transportation) then) =
      _$TransportationCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$TransportationCopyWithImpl<$Res>
    implements $TransportationCopyWith<$Res> {
  _$TransportationCopyWithImpl(this._value, this._then);

  final Transportation _value;
  // ignore: unused_field
  final $Res Function(Transportation) _then;

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
abstract class _$TransportationCopyWith<$Res>
    implements $TransportationCopyWith<$Res> {
  factory _$TransportationCopyWith(
          _Transportation value, $Res Function(_Transportation) then) =
      __$TransportationCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$TransportationCopyWithImpl<$Res>
    extends _$TransportationCopyWithImpl<$Res>
    implements _$TransportationCopyWith<$Res> {
  __$TransportationCopyWithImpl(
      _Transportation _value, $Res Function(_Transportation) _then)
      : super(_value, (v) => _then(v as _Transportation));

  @override
  _Transportation get _value => super._value as _Transportation;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Transportation(
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
class _$_Transportation implements _Transportation {
  const _$_Transportation({this.id, this.name});

  factory _$_Transportation.fromJson(Map<String, dynamic> json) =>
      _$$_TransportationFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Transportation(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Transportation &&
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
  _$TransportationCopyWith<_Transportation> get copyWith =>
      __$TransportationCopyWithImpl<_Transportation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransportationToJson(this);
  }
}

abstract class _Transportation implements Transportation {
  const factory _Transportation({String? id, String? name}) = _$_Transportation;

  factory _Transportation.fromJson(Map<String, dynamic> json) =
      _$_Transportation.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$TransportationCopyWith<_Transportation> get copyWith =>
      throw _privateConstructorUsedError;
}
