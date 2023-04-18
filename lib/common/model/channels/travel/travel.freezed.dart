// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'travel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Travel _$TravelFromJson(Map<String, dynamic> json) {
  return _Travel.fromJson(json);
}

/// @nodoc
class _$TravelTearOff {
  const _$TravelTearOff();

  _Travel call({String? id, String? name}) {
    return _Travel(
      id: id,
      name: name,
    );
  }

  Travel fromJson(Map<String, Object?> json) {
    return Travel.fromJson(json);
  }
}

/// @nodoc
const $Travel = _$TravelTearOff();

/// @nodoc
mixin _$Travel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelCopyWith<Travel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelCopyWith<$Res> {
  factory $TravelCopyWith(Travel value, $Res Function(Travel) then) =
      _$TravelCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$TravelCopyWithImpl<$Res> implements $TravelCopyWith<$Res> {
  _$TravelCopyWithImpl(this._value, this._then);

  final Travel _value;
  // ignore: unused_field
  final $Res Function(Travel) _then;

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
abstract class _$TravelCopyWith<$Res> implements $TravelCopyWith<$Res> {
  factory _$TravelCopyWith(_Travel value, $Res Function(_Travel) then) =
      __$TravelCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$TravelCopyWithImpl<$Res> extends _$TravelCopyWithImpl<$Res>
    implements _$TravelCopyWith<$Res> {
  __$TravelCopyWithImpl(_Travel _value, $Res Function(_Travel) _then)
      : super(_value, (v) => _then(v as _Travel));

  @override
  _Travel get _value => super._value as _Travel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Travel(
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
class _$_Travel implements _Travel {
  const _$_Travel({this.id, this.name});

  factory _$_Travel.fromJson(Map<String, dynamic> json) =>
      _$$_TravelFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Travel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Travel &&
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
  _$TravelCopyWith<_Travel> get copyWith =>
      __$TravelCopyWithImpl<_Travel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TravelToJson(this);
  }
}

abstract class _Travel implements Travel {
  const factory _Travel({String? id, String? name}) = _$_Travel;

  factory _Travel.fromJson(Map<String, dynamic> json) = _$_Travel.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$TravelCopyWith<_Travel> get copyWith => throw _privateConstructorUsedError;
}
