// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sport _$SportFromJson(Map<String, dynamic> json) {
  return _Sport.fromJson(json);
}

/// @nodoc
class _$SportTearOff {
  const _$SportTearOff();

  _Sport call({String? id, String? name}) {
    return _Sport(
      id: id,
      name: name,
    );
  }

  Sport fromJson(Map<String, Object?> json) {
    return Sport.fromJson(json);
  }
}

/// @nodoc
const $Sport = _$SportTearOff();

/// @nodoc
mixin _$Sport {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SportCopyWith<Sport> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SportCopyWith<$Res> {
  factory $SportCopyWith(Sport value, $Res Function(Sport) then) =
      _$SportCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$SportCopyWithImpl<$Res> implements $SportCopyWith<$Res> {
  _$SportCopyWithImpl(this._value, this._then);

  final Sport _value;
  // ignore: unused_field
  final $Res Function(Sport) _then;

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
abstract class _$SportCopyWith<$Res> implements $SportCopyWith<$Res> {
  factory _$SportCopyWith(_Sport value, $Res Function(_Sport) then) =
      __$SportCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$SportCopyWithImpl<$Res> extends _$SportCopyWithImpl<$Res>
    implements _$SportCopyWith<$Res> {
  __$SportCopyWithImpl(_Sport _value, $Res Function(_Sport) _then)
      : super(_value, (v) => _then(v as _Sport));

  @override
  _Sport get _value => super._value as _Sport;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Sport(
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
class _$_Sport implements _Sport {
  const _$_Sport({this.id, this.name});

  factory _$_Sport.fromJson(Map<String, dynamic> json) =>
      _$$_SportFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Sport(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Sport &&
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
  _$SportCopyWith<_Sport> get copyWith =>
      __$SportCopyWithImpl<_Sport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SportToJson(this);
  }
}

abstract class _Sport implements Sport {
  const factory _Sport({String? id, String? name}) = _$_Sport;

  factory _Sport.fromJson(Map<String, dynamic> json) = _$_Sport.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$SportCopyWith<_Sport> get copyWith => throw _privateConstructorUsedError;
}
