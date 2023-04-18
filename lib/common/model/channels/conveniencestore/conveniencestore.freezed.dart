// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'conveniencestore.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Conveniencestore _$ConveniencestoreFromJson(Map<String, dynamic> json) {
  return _Conveniencestore.fromJson(json);
}

/// @nodoc
class _$ConveniencestoreTearOff {
  const _$ConveniencestoreTearOff();

  _Conveniencestore call({String? id, String? name}) {
    return _Conveniencestore(
      id: id,
      name: name,
    );
  }

  Conveniencestore fromJson(Map<String, Object?> json) {
    return Conveniencestore.fromJson(json);
  }
}

/// @nodoc
const $Conveniencestore = _$ConveniencestoreTearOff();

/// @nodoc
mixin _$Conveniencestore {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConveniencestoreCopyWith<Conveniencestore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConveniencestoreCopyWith<$Res> {
  factory $ConveniencestoreCopyWith(
          Conveniencestore value, $Res Function(Conveniencestore) then) =
      _$ConveniencestoreCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$ConveniencestoreCopyWithImpl<$Res>
    implements $ConveniencestoreCopyWith<$Res> {
  _$ConveniencestoreCopyWithImpl(this._value, this._then);

  final Conveniencestore _value;
  // ignore: unused_field
  final $Res Function(Conveniencestore) _then;

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
abstract class _$ConveniencestoreCopyWith<$Res>
    implements $ConveniencestoreCopyWith<$Res> {
  factory _$ConveniencestoreCopyWith(
          _Conveniencestore value, $Res Function(_Conveniencestore) then) =
      __$ConveniencestoreCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$ConveniencestoreCopyWithImpl<$Res>
    extends _$ConveniencestoreCopyWithImpl<$Res>
    implements _$ConveniencestoreCopyWith<$Res> {
  __$ConveniencestoreCopyWithImpl(
      _Conveniencestore _value, $Res Function(_Conveniencestore) _then)
      : super(_value, (v) => _then(v as _Conveniencestore));

  @override
  _Conveniencestore get _value => super._value as _Conveniencestore;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Conveniencestore(
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
class _$_Conveniencestore implements _Conveniencestore {
  const _$_Conveniencestore({this.id, this.name});

  factory _$_Conveniencestore.fromJson(Map<String, dynamic> json) =>
      _$$_ConveniencestoreFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Conveniencestore(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Conveniencestore &&
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
  _$ConveniencestoreCopyWith<_Conveniencestore> get copyWith =>
      __$ConveniencestoreCopyWithImpl<_Conveniencestore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConveniencestoreToJson(this);
  }
}

abstract class _Conveniencestore implements Conveniencestore {
  const factory _Conveniencestore({String? id, String? name}) =
      _$_Conveniencestore;

  factory _Conveniencestore.fromJson(Map<String, dynamic> json) =
      _$_Conveniencestore.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$ConveniencestoreCopyWith<_Conveniencestore> get copyWith =>
      throw _privateConstructorUsedError;
}
