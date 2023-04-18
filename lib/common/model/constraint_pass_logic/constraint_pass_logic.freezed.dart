// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'constraint_pass_logic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConstraintPassLogic _$ConstraintPassLogicFromJson(Map<String, dynamic> json) {
  return _ConstraintPassLogic.fromJson(json);
}

/// @nodoc
class _$ConstraintPassLogicTearOff {
  const _$ConstraintPassLogicTearOff();

  _ConstraintPassLogic call({Data? data}) {
    return _ConstraintPassLogic(
      data: data,
    );
  }

  ConstraintPassLogic fromJson(Map<String, Object?> json) {
    return ConstraintPassLogic.fromJson(json);
  }
}

/// @nodoc
const $ConstraintPassLogic = _$ConstraintPassLogicTearOff();

/// @nodoc
mixin _$ConstraintPassLogic {
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConstraintPassLogicCopyWith<ConstraintPassLogic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConstraintPassLogicCopyWith<$Res> {
  factory $ConstraintPassLogicCopyWith(
          ConstraintPassLogic value, $Res Function(ConstraintPassLogic) then) =
      _$ConstraintPassLogicCopyWithImpl<$Res>;
  $Res call({Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ConstraintPassLogicCopyWithImpl<$Res>
    implements $ConstraintPassLogicCopyWith<$Res> {
  _$ConstraintPassLogicCopyWithImpl(this._value, this._then);

  final ConstraintPassLogic _value;
  // ignore: unused_field
  final $Res Function(ConstraintPassLogic) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }

  @override
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$ConstraintPassLogicCopyWith<$Res>
    implements $ConstraintPassLogicCopyWith<$Res> {
  factory _$ConstraintPassLogicCopyWith(_ConstraintPassLogic value,
          $Res Function(_ConstraintPassLogic) then) =
      __$ConstraintPassLogicCopyWithImpl<$Res>;
  @override
  $Res call({Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$ConstraintPassLogicCopyWithImpl<$Res>
    extends _$ConstraintPassLogicCopyWithImpl<$Res>
    implements _$ConstraintPassLogicCopyWith<$Res> {
  __$ConstraintPassLogicCopyWithImpl(
      _ConstraintPassLogic _value, $Res Function(_ConstraintPassLogic) _then)
      : super(_value, (v) => _then(v as _ConstraintPassLogic));

  @override
  _ConstraintPassLogic get _value => super._value as _ConstraintPassLogic;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ConstraintPassLogic(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConstraintPassLogic implements _ConstraintPassLogic {
  const _$_ConstraintPassLogic({this.data});

  factory _$_ConstraintPassLogic.fromJson(Map<String, dynamic> json) =>
      _$$_ConstraintPassLogicFromJson(json);

  @override
  final Data? data;

  @override
  String toString() {
    return 'ConstraintPassLogic(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConstraintPassLogic &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$ConstraintPassLogicCopyWith<_ConstraintPassLogic> get copyWith =>
      __$ConstraintPassLogicCopyWithImpl<_ConstraintPassLogic>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConstraintPassLogicToJson(this);
  }
}

abstract class _ConstraintPassLogic implements ConstraintPassLogic {
  const factory _ConstraintPassLogic({Data? data}) = _$_ConstraintPassLogic;

  factory _ConstraintPassLogic.fromJson(Map<String, dynamic> json) =
      _$_ConstraintPassLogic.fromJson;

  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$ConstraintPassLogicCopyWith<_ConstraintPassLogic> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
class _$DataTearOff {
  const _$DataTearOff();

  _Data call({bool? pass, String? message}) {
    return _Data(
      pass: pass,
      message: message,
    );
  }

  Data fromJson(Map<String, Object?> json) {
    return Data.fromJson(json);
  }
}

/// @nodoc
const $Data = _$DataTearOff();

/// @nodoc
mixin _$Data {
  bool? get pass => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({bool? pass, String? message});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? pass = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      pass: pass == freezed
          ? _value.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  @override
  $Res call({bool? pass, String? message});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? pass = freezed,
    Object? message = freezed,
  }) {
    return _then(_Data(
      pass: pass == freezed
          ? _value.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data({this.pass, this.message});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final bool? pass;
  @override
  final String? message;

  @override
  String toString() {
    return 'Data(pass: $pass, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality().equals(other.pass, pass) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pass),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data({bool? pass, String? message}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  bool? get pass;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}
