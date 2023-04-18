// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'supermarket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Supermarket _$SupermarketFromJson(Map<String, dynamic> json) {
  return _Supermarket.fromJson(json);
}

/// @nodoc
class _$SupermarketTearOff {
  const _$SupermarketTearOff();

  _Supermarket call({String? id, String? name}) {
    return _Supermarket(
      id: id,
      name: name,
    );
  }

  Supermarket fromJson(Map<String, Object?> json) {
    return Supermarket.fromJson(json);
  }
}

/// @nodoc
const $Supermarket = _$SupermarketTearOff();

/// @nodoc
mixin _$Supermarket {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupermarketCopyWith<Supermarket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupermarketCopyWith<$Res> {
  factory $SupermarketCopyWith(
          Supermarket value, $Res Function(Supermarket) then) =
      _$SupermarketCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$SupermarketCopyWithImpl<$Res> implements $SupermarketCopyWith<$Res> {
  _$SupermarketCopyWithImpl(this._value, this._then);

  final Supermarket _value;
  // ignore: unused_field
  final $Res Function(Supermarket) _then;

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
abstract class _$SupermarketCopyWith<$Res>
    implements $SupermarketCopyWith<$Res> {
  factory _$SupermarketCopyWith(
          _Supermarket value, $Res Function(_Supermarket) then) =
      __$SupermarketCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$SupermarketCopyWithImpl<$Res> extends _$SupermarketCopyWithImpl<$Res>
    implements _$SupermarketCopyWith<$Res> {
  __$SupermarketCopyWithImpl(
      _Supermarket _value, $Res Function(_Supermarket) _then)
      : super(_value, (v) => _then(v as _Supermarket));

  @override
  _Supermarket get _value => super._value as _Supermarket;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Supermarket(
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
class _$_Supermarket implements _Supermarket {
  const _$_Supermarket({this.id, this.name});

  factory _$_Supermarket.fromJson(Map<String, dynamic> json) =>
      _$$_SupermarketFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Supermarket(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Supermarket &&
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
  _$SupermarketCopyWith<_Supermarket> get copyWith =>
      __$SupermarketCopyWithImpl<_Supermarket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SupermarketToJson(this);
  }
}

abstract class _Supermarket implements Supermarket {
  const factory _Supermarket({String? id, String? name}) = _$_Supermarket;

  factory _Supermarket.fromJson(Map<String, dynamic> json) =
      _$_Supermarket.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$SupermarketCopyWith<_Supermarket> get copyWith =>
      throw _privateConstructorUsedError;
}
