// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appstore.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Appstore _$AppstoreFromJson(Map<String, dynamic> json) {
  return _Appstore.fromJson(json);
}

/// @nodoc
class _$AppstoreTearOff {
  const _$AppstoreTearOff();

  _Appstore call({String? id, String? name}) {
    return _Appstore(
      id: id,
      name: name,
    );
  }

  Appstore fromJson(Map<String, Object?> json) {
    return Appstore.fromJson(json);
  }
}

/// @nodoc
const $Appstore = _$AppstoreTearOff();

/// @nodoc
mixin _$Appstore {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppstoreCopyWith<Appstore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppstoreCopyWith<$Res> {
  factory $AppstoreCopyWith(Appstore value, $Res Function(Appstore) then) =
      _$AppstoreCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$AppstoreCopyWithImpl<$Res> implements $AppstoreCopyWith<$Res> {
  _$AppstoreCopyWithImpl(this._value, this._then);

  final Appstore _value;
  // ignore: unused_field
  final $Res Function(Appstore) _then;

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
abstract class _$AppstoreCopyWith<$Res> implements $AppstoreCopyWith<$Res> {
  factory _$AppstoreCopyWith(_Appstore value, $Res Function(_Appstore) then) =
      __$AppstoreCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$AppstoreCopyWithImpl<$Res> extends _$AppstoreCopyWithImpl<$Res>
    implements _$AppstoreCopyWith<$Res> {
  __$AppstoreCopyWithImpl(_Appstore _value, $Res Function(_Appstore) _then)
      : super(_value, (v) => _then(v as _Appstore));

  @override
  _Appstore get _value => super._value as _Appstore;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Appstore(
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
class _$_Appstore implements _Appstore {
  const _$_Appstore({this.id, this.name});

  factory _$_Appstore.fromJson(Map<String, dynamic> json) =>
      _$$_AppstoreFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Appstore(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Appstore &&
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
  _$AppstoreCopyWith<_Appstore> get copyWith =>
      __$AppstoreCopyWithImpl<_Appstore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppstoreToJson(this);
  }
}

abstract class _Appstore implements Appstore {
  const factory _Appstore({String? id, String? name}) = _$_Appstore;

  factory _Appstore.fromJson(Map<String, dynamic> json) = _$_Appstore.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$AppstoreCopyWith<_Appstore> get copyWith =>
      throw _privateConstructorUsedError;
}
