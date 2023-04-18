// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'insurance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Insurance _$InsuranceFromJson(Map<String, dynamic> json) {
  return _Insurance.fromJson(json);
}

/// @nodoc
class _$InsuranceTearOff {
  const _$InsuranceTearOff();

  _Insurance call({String? id, String? name}) {
    return _Insurance(
      id: id,
      name: name,
    );
  }

  Insurance fromJson(Map<String, Object?> json) {
    return Insurance.fromJson(json);
  }
}

/// @nodoc
const $Insurance = _$InsuranceTearOff();

/// @nodoc
mixin _$Insurance {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InsuranceCopyWith<Insurance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsuranceCopyWith<$Res> {
  factory $InsuranceCopyWith(Insurance value, $Res Function(Insurance) then) =
      _$InsuranceCopyWithImpl<$Res>;
  $Res call({String? id, String? name});
}

/// @nodoc
class _$InsuranceCopyWithImpl<$Res> implements $InsuranceCopyWith<$Res> {
  _$InsuranceCopyWithImpl(this._value, this._then);

  final Insurance _value;
  // ignore: unused_field
  final $Res Function(Insurance) _then;

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
abstract class _$InsuranceCopyWith<$Res> implements $InsuranceCopyWith<$Res> {
  factory _$InsuranceCopyWith(
          _Insurance value, $Res Function(_Insurance) then) =
      __$InsuranceCopyWithImpl<$Res>;
  @override
  $Res call({String? id, String? name});
}

/// @nodoc
class __$InsuranceCopyWithImpl<$Res> extends _$InsuranceCopyWithImpl<$Res>
    implements _$InsuranceCopyWith<$Res> {
  __$InsuranceCopyWithImpl(_Insurance _value, $Res Function(_Insurance) _then)
      : super(_value, (v) => _then(v as _Insurance));

  @override
  _Insurance get _value => super._value as _Insurance;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Insurance(
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
class _$_Insurance implements _Insurance {
  const _$_Insurance({this.id, this.name});

  factory _$_Insurance.fromJson(Map<String, dynamic> json) =>
      _$$_InsuranceFromJson(json);

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Insurance(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Insurance &&
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
  _$InsuranceCopyWith<_Insurance> get copyWith =>
      __$InsuranceCopyWithImpl<_Insurance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InsuranceToJson(this);
  }
}

abstract class _Insurance implements Insurance {
  const factory _Insurance({String? id, String? name}) = _$_Insurance;

  factory _Insurance.fromJson(Map<String, dynamic> json) =
      _$_Insurance.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$InsuranceCopyWith<_Insurance> get copyWith =>
      throw _privateConstructorUsedError;
}
