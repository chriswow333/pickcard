// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ecommerce.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ecommerce _$EcommerceFromJson(Map<String, dynamic> json) {
  return _Ecommerce.fromJson(json);
}

/// @nodoc
class _$EcommerceTearOff {
  const _$EcommerceTearOff();

  _Ecommerce call({String? id, String? name}) {
    return _Ecommerce(
      id: id,
      name: name,
    );
  }

  Ecommerce fromJson(Map<String, Object?> json) {
    return Ecommerce.fromJson(json);
  }
}

/// @nodoc
const $Ecommerce = _$EcommerceTearOff();

/// @nodoc
mixin _$Ecommerce {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EcommerceCopyWith<Ecommerce> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EcommerceCopyWith<$Res> {
  factory $EcommerceCopyWith(Ecommerce value, $Res Function(Ecommerce) then) =
      _$EcommerceCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$EcommerceCopyWithImpl<$Res> implements $EcommerceCopyWith<$Res> {
  _$EcommerceCopyWithImpl(this._value, this._then);

  final Ecommerce _value;
  // ignore: unused_field
  final $Res Function(Ecommerce) _then;

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
abstract class _$EcommerceCopyWith<$Res> implements $EcommerceCopyWith<$Res> {
  factory _$EcommerceCopyWith(
          _Ecommerce value, $Res Function(_Ecommerce) then) =
      __$EcommerceCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$EcommerceCopyWithImpl<$Res> extends _$EcommerceCopyWithImpl<$Res>
    implements _$EcommerceCopyWith<$Res> {
  __$EcommerceCopyWithImpl(_Ecommerce _value, $Res Function(_Ecommerce) _then)
      : super(_value, (v) => _then(v as _Ecommerce));

  @override
  _Ecommerce get _value => super._value as _Ecommerce;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Ecommerce(
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
class _$_Ecommerce implements _Ecommerce {
  const _$_Ecommerce({this.id, this.name});

  factory _$_Ecommerce.fromJson(Map<String, dynamic> json) =>
      _$$_EcommerceFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Ecommerce(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ecommerce &&
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
  _$EcommerceCopyWith<_Ecommerce> get copyWith =>
      __$EcommerceCopyWithImpl<_Ecommerce>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EcommerceToJson(this);
  }
}

abstract class _Ecommerce implements Ecommerce {
  const factory _Ecommerce({String? id, String? name}) = _$_Ecommerce;

  factory _Ecommerce.fromJson(Map<String, dynamic> json) =
      _$_Ecommerce.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$EcommerceCopyWith<_Ecommerce> get copyWith =>
      throw _privateConstructorUsedError;
}
