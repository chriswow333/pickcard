// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mall.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Mall _$MallFromJson(Map<String, dynamic> json) {
  return _Mall.fromJson(json);
}

/// @nodoc
class _$MallTearOff {
  const _$MallTearOff();

  _Mall call({String? id, String? name}) {
    return _Mall(
      id: id,
      name: name,
    );
  }

  Mall fromJson(Map<String, Object?> json) {
    return Mall.fromJson(json);
  }
}

/// @nodoc
const $Mall = _$MallTearOff();

/// @nodoc
mixin _$Mall {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MallCopyWith<Mall> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MallCopyWith<$Res> {
  factory $MallCopyWith(Mall value, $Res Function(Mall) then) =
      _$MallCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$MallCopyWithImpl<$Res> implements $MallCopyWith<$Res> {
  _$MallCopyWithImpl(this._value, this._then);

  final Mall _value;
  // ignore: unused_field
  final $Res Function(Mall) _then;

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
abstract class _$MallCopyWith<$Res> implements $MallCopyWith<$Res> {
  factory _$MallCopyWith(_Mall value, $Res Function(_Mall) then) =
      __$MallCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$MallCopyWithImpl<$Res> extends _$MallCopyWithImpl<$Res>
    implements _$MallCopyWith<$Res> {
  __$MallCopyWithImpl(_Mall _value, $Res Function(_Mall) _then)
      : super(_value, (v) => _then(v as _Mall));

  @override
  _Mall get _value => super._value as _Mall;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Mall(
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
class _$_Mall implements _Mall {
  const _$_Mall({this.id, this.name});

  factory _$_Mall.fromJson(Map<String, dynamic> json) => _$$_MallFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Mall(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Mall &&
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
  _$MallCopyWith<_Mall> get copyWith =>
      __$MallCopyWithImpl<_Mall>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MallToJson(this);
  }
}

abstract class _Mall implements Mall {
  const factory _Mall({String? id, String? name}) = _$_Mall;

  factory _Mall.fromJson(Map<String, dynamic> json) = _$_Mall.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$MallCopyWith<_Mall> get copyWith => throw _privateConstructorUsedError;
}
