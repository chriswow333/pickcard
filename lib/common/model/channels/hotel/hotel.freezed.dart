// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hotel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hotel _$HotelFromJson(Map<String, dynamic> json) {
  return _Hotel.fromJson(json);
}

/// @nodoc
class _$HotelTearOff {
  const _$HotelTearOff();

  _Hotel call({String? id, String? name}) {
    return _Hotel(
      id: id,
      name: name,
    );
  }

  Hotel fromJson(Map<String, Object?> json) {
    return Hotel.fromJson(json);
  }
}

/// @nodoc
const $Hotel = _$HotelTearOff();

/// @nodoc
mixin _$Hotel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HotelCopyWith<Hotel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelCopyWith<$Res> {
  factory $HotelCopyWith(Hotel value, $Res Function(Hotel) then) =
      _$HotelCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$HotelCopyWithImpl<$Res> implements $HotelCopyWith<$Res> {
  _$HotelCopyWithImpl(this._value, this._then);

  final Hotel _value;
  // ignore: unused_field
  final $Res Function(Hotel) _then;

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
abstract class _$HotelCopyWith<$Res> implements $HotelCopyWith<$Res> {
  factory _$HotelCopyWith(_Hotel value, $Res Function(_Hotel) then) =
      __$HotelCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$HotelCopyWithImpl<$Res> extends _$HotelCopyWithImpl<$Res>
    implements _$HotelCopyWith<$Res> {
  __$HotelCopyWithImpl(_Hotel _value, $Res Function(_Hotel) _then)
      : super(_value, (v) => _then(v as _Hotel));

  @override
  _Hotel get _value => super._value as _Hotel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Hotel(
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
class _$_Hotel implements _Hotel {
  const _$_Hotel({this.id, this.name});

  factory _$_Hotel.fromJson(Map<String, dynamic> json) =>
      _$$_HotelFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Hotel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Hotel &&
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
  _$HotelCopyWith<_Hotel> get copyWith =>
      __$HotelCopyWithImpl<_Hotel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HotelToJson(this);
  }
}

abstract class _Hotel implements Hotel {
  const factory _Hotel({String? id, String? name}) = _$_Hotel;

  factory _Hotel.fromJson(Map<String, dynamic> json) = _$_Hotel.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$HotelCopyWith<_Hotel> get copyWith => throw _privateConstructorUsedError;
}
