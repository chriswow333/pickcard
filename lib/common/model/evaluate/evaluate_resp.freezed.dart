// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'evaluate_resp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EvaluateResp _$EvaluateRespFromJson(Map<String, dynamic> json) {
  return _EvaluateResp.fromJson(json);
}

/// @nodoc
class _$EvaluateRespTearOff {
  const _$EvaluateRespTearOff();

  _EvaluateResp call({String? eventID, List<CardEventResp>? cardEventResps}) {
    return _EvaluateResp(
      eventID: eventID,
      cardEventResps: cardEventResps,
    );
  }

  EvaluateResp fromJson(Map<String, Object?> json) {
    return EvaluateResp.fromJson(json);
  }
}

/// @nodoc
const $EvaluateResp = _$EvaluateRespTearOff();

/// @nodoc
mixin _$EvaluateResp {
  String? get eventID => throw _privateConstructorUsedError;
  List<CardEventResp>? get cardEventResps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvaluateRespCopyWith<EvaluateResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvaluateRespCopyWith<$Res> {
  factory $EvaluateRespCopyWith(
          EvaluateResp value, $Res Function(EvaluateResp) then) =
      _$EvaluateRespCopyWithImpl<$Res>;
  $Res call({String? eventID, List<CardEventResp>? cardEventResps});
}

/// @nodoc
class _$EvaluateRespCopyWithImpl<$Res> implements $EvaluateRespCopyWith<$Res> {
  _$EvaluateRespCopyWithImpl(this._value, this._then);

  final EvaluateResp _value;
  // ignore: unused_field
  final $Res Function(EvaluateResp) _then;

  @override
  $Res call({
    Object? eventID = freezed,
    Object? cardEventResps = freezed,
  }) {
    return _then(_value.copyWith(
      eventID: eventID == freezed
          ? _value.eventID
          : eventID // ignore: cast_nullable_to_non_nullable
              as String?,
      cardEventResps: cardEventResps == freezed
          ? _value.cardEventResps
          : cardEventResps // ignore: cast_nullable_to_non_nullable
              as List<CardEventResp>?,
    ));
  }
}

/// @nodoc
abstract class _$EvaluateRespCopyWith<$Res>
    implements $EvaluateRespCopyWith<$Res> {
  factory _$EvaluateRespCopyWith(
          _EvaluateResp value, $Res Function(_EvaluateResp) then) =
      __$EvaluateRespCopyWithImpl<$Res>;
  @override
  $Res call({String? eventID, List<CardEventResp>? cardEventResps});
}

/// @nodoc
class __$EvaluateRespCopyWithImpl<$Res> extends _$EvaluateRespCopyWithImpl<$Res>
    implements _$EvaluateRespCopyWith<$Res> {
  __$EvaluateRespCopyWithImpl(
      _EvaluateResp _value, $Res Function(_EvaluateResp) _then)
      : super(_value, (v) => _then(v as _EvaluateResp));

  @override
  _EvaluateResp get _value => super._value as _EvaluateResp;

  @override
  $Res call({
    Object? eventID = freezed,
    Object? cardEventResps = freezed,
  }) {
    return _then(_EvaluateResp(
      eventID: eventID == freezed
          ? _value.eventID
          : eventID // ignore: cast_nullable_to_non_nullable
              as String?,
      cardEventResps: cardEventResps == freezed
          ? _value.cardEventResps
          : cardEventResps // ignore: cast_nullable_to_non_nullable
              as List<CardEventResp>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EvaluateResp implements _EvaluateResp {
  const _$_EvaluateResp({this.eventID, this.cardEventResps});

  factory _$_EvaluateResp.fromJson(Map<String, dynamic> json) =>
      _$$_EvaluateRespFromJson(json);

  @override
  final String? eventID;
  @override
  final List<CardEventResp>? cardEventResps;

  @override
  String toString() {
    return 'EvaluateResp(eventID: $eventID, cardEventResps: $cardEventResps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EvaluateResp &&
            const DeepCollectionEquality().equals(other.eventID, eventID) &&
            const DeepCollectionEquality()
                .equals(other.cardEventResps, cardEventResps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(eventID),
      const DeepCollectionEquality().hash(cardEventResps));

  @JsonKey(ignore: true)
  @override
  _$EvaluateRespCopyWith<_EvaluateResp> get copyWith =>
      __$EvaluateRespCopyWithImpl<_EvaluateResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EvaluateRespToJson(this);
  }
}

abstract class _EvaluateResp implements EvaluateResp {
  const factory _EvaluateResp(
      {String? eventID, List<CardEventResp>? cardEventResps}) = _$_EvaluateResp;

  factory _EvaluateResp.fromJson(Map<String, dynamic> json) =
      _$_EvaluateResp.fromJson;

  @override
  String? get eventID;
  @override
  List<CardEventResp>? get cardEventResps;
  @override
  @JsonKey(ignore: true)
  _$EvaluateRespCopyWith<_EvaluateResp> get copyWith =>
      throw _privateConstructorUsedError;
}

CardEventResp _$CardEventRespFromJson(Map<String, dynamic> json) {
  return _CardEventResp.fromJson(json);
}

/// @nodoc
class _$CardEventRespTearOff {
  const _$CardEventRespTearOff();

  _CardEventResp call(
      {String? id,
      String? name,
      List<String>? descs,
      String? bankID,
      String? bankName,
      String? updateDate,
      String? imagePath,
      List<CardRewardEventResp>? cardRewardEventResps}) {
    return _CardEventResp(
      id: id,
      name: name,
      descs: descs,
      bankID: bankID,
      bankName: bankName,
      updateDate: updateDate,
      imagePath: imagePath,
      cardRewardEventResps: cardRewardEventResps,
    );
  }

  CardEventResp fromJson(Map<String, Object?> json) {
    return CardEventResp.fromJson(json);
  }
}

/// @nodoc
const $CardEventResp = _$CardEventRespTearOff();

/// @nodoc
mixin _$CardEventResp {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<String>? get descs => throw _privateConstructorUsedError;
  String? get bankID => throw _privateConstructorUsedError;
  String? get bankName => throw _privateConstructorUsedError;
  String? get updateDate => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  List<CardRewardEventResp>? get cardRewardEventResps =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardEventRespCopyWith<CardEventResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardEventRespCopyWith<$Res> {
  factory $CardEventRespCopyWith(
          CardEventResp value, $Res Function(CardEventResp) then) =
      _$CardEventRespCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      List<String>? descs,
      String? bankID,
      String? bankName,
      String? updateDate,
      String? imagePath,
      List<CardRewardEventResp>? cardRewardEventResps});
}

/// @nodoc
class _$CardEventRespCopyWithImpl<$Res>
    implements $CardEventRespCopyWith<$Res> {
  _$CardEventRespCopyWithImpl(this._value, this._then);

  final CardEventResp _value;
  // ignore: unused_field
  final $Res Function(CardEventResp) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? descs = freezed,
    Object? bankID = freezed,
    Object? bankName = freezed,
    Object? updateDate = freezed,
    Object? imagePath = freezed,
    Object? cardRewardEventResps = freezed,
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
      descs: descs == freezed
          ? _value.descs
          : descs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bankID: bankID == freezed
          ? _value.bankID
          : bankID // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      updateDate: updateDate == freezed
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      cardRewardEventResps: cardRewardEventResps == freezed
          ? _value.cardRewardEventResps
          : cardRewardEventResps // ignore: cast_nullable_to_non_nullable
              as List<CardRewardEventResp>?,
    ));
  }
}

/// @nodoc
abstract class _$CardEventRespCopyWith<$Res>
    implements $CardEventRespCopyWith<$Res> {
  factory _$CardEventRespCopyWith(
          _CardEventResp value, $Res Function(_CardEventResp) then) =
      __$CardEventRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      List<String>? descs,
      String? bankID,
      String? bankName,
      String? updateDate,
      String? imagePath,
      List<CardRewardEventResp>? cardRewardEventResps});
}

/// @nodoc
class __$CardEventRespCopyWithImpl<$Res>
    extends _$CardEventRespCopyWithImpl<$Res>
    implements _$CardEventRespCopyWith<$Res> {
  __$CardEventRespCopyWithImpl(
      _CardEventResp _value, $Res Function(_CardEventResp) _then)
      : super(_value, (v) => _then(v as _CardEventResp));

  @override
  _CardEventResp get _value => super._value as _CardEventResp;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? descs = freezed,
    Object? bankID = freezed,
    Object? bankName = freezed,
    Object? updateDate = freezed,
    Object? imagePath = freezed,
    Object? cardRewardEventResps = freezed,
  }) {
    return _then(_CardEventResp(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      descs: descs == freezed
          ? _value.descs
          : descs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bankID: bankID == freezed
          ? _value.bankID
          : bankID // ignore: cast_nullable_to_non_nullable
              as String?,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      updateDate: updateDate == freezed
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      cardRewardEventResps: cardRewardEventResps == freezed
          ? _value.cardRewardEventResps
          : cardRewardEventResps // ignore: cast_nullable_to_non_nullable
              as List<CardRewardEventResp>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardEventResp implements _CardEventResp {
  const _$_CardEventResp(
      {this.id,
      this.name,
      this.descs,
      this.bankID,
      this.bankName,
      this.updateDate,
      this.imagePath,
      this.cardRewardEventResps});

  factory _$_CardEventResp.fromJson(Map<String, dynamic> json) =>
      _$$_CardEventRespFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final List<String>? descs;
  @override
  final String? bankID;
  @override
  final String? bankName;
  @override
  final String? updateDate;
  @override
  final String? imagePath;
  @override
  final List<CardRewardEventResp>? cardRewardEventResps;

  @override
  String toString() {
    return 'CardEventResp(id: $id, name: $name, descs: $descs, bankID: $bankID, bankName: $bankName, updateDate: $updateDate, imagePath: $imagePath, cardRewardEventResps: $cardRewardEventResps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CardEventResp &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.descs, descs) &&
            const DeepCollectionEquality().equals(other.bankID, bankID) &&
            const DeepCollectionEquality().equals(other.bankName, bankName) &&
            const DeepCollectionEquality()
                .equals(other.updateDate, updateDate) &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath) &&
            const DeepCollectionEquality()
                .equals(other.cardRewardEventResps, cardRewardEventResps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(descs),
      const DeepCollectionEquality().hash(bankID),
      const DeepCollectionEquality().hash(bankName),
      const DeepCollectionEquality().hash(updateDate),
      const DeepCollectionEquality().hash(imagePath),
      const DeepCollectionEquality().hash(cardRewardEventResps));

  @JsonKey(ignore: true)
  @override
  _$CardEventRespCopyWith<_CardEventResp> get copyWith =>
      __$CardEventRespCopyWithImpl<_CardEventResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardEventRespToJson(this);
  }
}

abstract class _CardEventResp implements CardEventResp {
  const factory _CardEventResp(
      {String? id,
      String? name,
      List<String>? descs,
      String? bankID,
      String? bankName,
      String? updateDate,
      String? imagePath,
      List<CardRewardEventResp>? cardRewardEventResps}) = _$_CardEventResp;

  factory _CardEventResp.fromJson(Map<String, dynamic> json) =
      _$_CardEventResp.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  List<String>? get descs;
  @override
  String? get bankID;
  @override
  String? get bankName;
  @override
  String? get updateDate;
  @override
  String? get imagePath;
  @override
  List<CardRewardEventResp>? get cardRewardEventResps;
  @override
  @JsonKey(ignore: true)
  _$CardEventRespCopyWith<_CardEventResp> get copyWith =>
      throw _privateConstructorUsedError;
}

CardRewardEventResp _$CardRewardEventRespFromJson(Map<String, dynamic> json) {
  return _CardRewardEventResp.fromJson(json);
}

/// @nodoc
class _$CardRewardEventRespTearOff {
  const _$CardRewardEventRespTearOff();

  _CardRewardEventResp call(
      {String? id,
      String? title,
      List<String>? descs,
      String? startDate,
      String? endDate,
      int? cardRewardOperator,
      int? rewardType,
      List<int>? cardRewardLimitTypes,
      FeedbackBonus? feedbackBonus,
      FeedReturn? feedReturn}) {
    return _CardRewardEventResp(
      id: id,
      title: title,
      descs: descs,
      startDate: startDate,
      endDate: endDate,
      cardRewardOperator: cardRewardOperator,
      rewardType: rewardType,
      cardRewardLimitTypes: cardRewardLimitTypes,
      feedbackBonus: feedbackBonus,
      feedReturn: feedReturn,
    );
  }

  CardRewardEventResp fromJson(Map<String, Object?> json) {
    return CardRewardEventResp.fromJson(json);
  }
}

/// @nodoc
const $CardRewardEventResp = _$CardRewardEventRespTearOff();

/// @nodoc
mixin _$CardRewardEventResp {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<String>? get descs => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  int? get cardRewardOperator => throw _privateConstructorUsedError;
  int? get rewardType => throw _privateConstructorUsedError;
  List<int>? get cardRewardLimitTypes => throw _privateConstructorUsedError;
  FeedbackBonus? get feedbackBonus => throw _privateConstructorUsedError;
  FeedReturn? get feedReturn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardRewardEventRespCopyWith<CardRewardEventResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardRewardEventRespCopyWith<$Res> {
  factory $CardRewardEventRespCopyWith(
          CardRewardEventResp value, $Res Function(CardRewardEventResp) then) =
      _$CardRewardEventRespCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? title,
      List<String>? descs,
      String? startDate,
      String? endDate,
      int? cardRewardOperator,
      int? rewardType,
      List<int>? cardRewardLimitTypes,
      FeedbackBonus? feedbackBonus,
      FeedReturn? feedReturn});

  $FeedbackBonusCopyWith<$Res>? get feedbackBonus;
  $FeedReturnCopyWith<$Res>? get feedReturn;
}

/// @nodoc
class _$CardRewardEventRespCopyWithImpl<$Res>
    implements $CardRewardEventRespCopyWith<$Res> {
  _$CardRewardEventRespCopyWithImpl(this._value, this._then);

  final CardRewardEventResp _value;
  // ignore: unused_field
  final $Res Function(CardRewardEventResp) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? descs = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? cardRewardOperator = freezed,
    Object? rewardType = freezed,
    Object? cardRewardLimitTypes = freezed,
    Object? feedbackBonus = freezed,
    Object? feedReturn = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      descs: descs == freezed
          ? _value.descs
          : descs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cardRewardOperator: cardRewardOperator == freezed
          ? _value.cardRewardOperator
          : cardRewardOperator // ignore: cast_nullable_to_non_nullable
              as int?,
      rewardType: rewardType == freezed
          ? _value.rewardType
          : rewardType // ignore: cast_nullable_to_non_nullable
              as int?,
      cardRewardLimitTypes: cardRewardLimitTypes == freezed
          ? _value.cardRewardLimitTypes
          : cardRewardLimitTypes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      feedbackBonus: feedbackBonus == freezed
          ? _value.feedbackBonus
          : feedbackBonus // ignore: cast_nullable_to_non_nullable
              as FeedbackBonus?,
      feedReturn: feedReturn == freezed
          ? _value.feedReturn
          : feedReturn // ignore: cast_nullable_to_non_nullable
              as FeedReturn?,
    ));
  }

  @override
  $FeedbackBonusCopyWith<$Res>? get feedbackBonus {
    if (_value.feedbackBonus == null) {
      return null;
    }

    return $FeedbackBonusCopyWith<$Res>(_value.feedbackBonus!, (value) {
      return _then(_value.copyWith(feedbackBonus: value));
    });
  }

  @override
  $FeedReturnCopyWith<$Res>? get feedReturn {
    if (_value.feedReturn == null) {
      return null;
    }

    return $FeedReturnCopyWith<$Res>(_value.feedReturn!, (value) {
      return _then(_value.copyWith(feedReturn: value));
    });
  }
}

/// @nodoc
abstract class _$CardRewardEventRespCopyWith<$Res>
    implements $CardRewardEventRespCopyWith<$Res> {
  factory _$CardRewardEventRespCopyWith(_CardRewardEventResp value,
          $Res Function(_CardRewardEventResp) then) =
      __$CardRewardEventRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? title,
      List<String>? descs,
      String? startDate,
      String? endDate,
      int? cardRewardOperator,
      int? rewardType,
      List<int>? cardRewardLimitTypes,
      FeedbackBonus? feedbackBonus,
      FeedReturn? feedReturn});

  @override
  $FeedbackBonusCopyWith<$Res>? get feedbackBonus;
  @override
  $FeedReturnCopyWith<$Res>? get feedReturn;
}

/// @nodoc
class __$CardRewardEventRespCopyWithImpl<$Res>
    extends _$CardRewardEventRespCopyWithImpl<$Res>
    implements _$CardRewardEventRespCopyWith<$Res> {
  __$CardRewardEventRespCopyWithImpl(
      _CardRewardEventResp _value, $Res Function(_CardRewardEventResp) _then)
      : super(_value, (v) => _then(v as _CardRewardEventResp));

  @override
  _CardRewardEventResp get _value => super._value as _CardRewardEventResp;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? descs = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? cardRewardOperator = freezed,
    Object? rewardType = freezed,
    Object? cardRewardLimitTypes = freezed,
    Object? feedbackBonus = freezed,
    Object? feedReturn = freezed,
  }) {
    return _then(_CardRewardEventResp(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      descs: descs == freezed
          ? _value.descs
          : descs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cardRewardOperator: cardRewardOperator == freezed
          ? _value.cardRewardOperator
          : cardRewardOperator // ignore: cast_nullable_to_non_nullable
              as int?,
      rewardType: rewardType == freezed
          ? _value.rewardType
          : rewardType // ignore: cast_nullable_to_non_nullable
              as int?,
      cardRewardLimitTypes: cardRewardLimitTypes == freezed
          ? _value.cardRewardLimitTypes
          : cardRewardLimitTypes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      feedbackBonus: feedbackBonus == freezed
          ? _value.feedbackBonus
          : feedbackBonus // ignore: cast_nullable_to_non_nullable
              as FeedbackBonus?,
      feedReturn: feedReturn == freezed
          ? _value.feedReturn
          : feedReturn // ignore: cast_nullable_to_non_nullable
              as FeedReturn?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardRewardEventResp implements _CardRewardEventResp {
  const _$_CardRewardEventResp(
      {this.id,
      this.title,
      this.descs,
      this.startDate,
      this.endDate,
      this.cardRewardOperator,
      this.rewardType,
      this.cardRewardLimitTypes,
      this.feedbackBonus,
      this.feedReturn});

  factory _$_CardRewardEventResp.fromJson(Map<String, dynamic> json) =>
      _$$_CardRewardEventRespFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final List<String>? descs;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final int? cardRewardOperator;
  @override
  final int? rewardType;
  @override
  final List<int>? cardRewardLimitTypes;
  @override
  final FeedbackBonus? feedbackBonus;
  @override
  final FeedReturn? feedReturn;

  @override
  String toString() {
    return 'CardRewardEventResp(id: $id, title: $title, descs: $descs, startDate: $startDate, endDate: $endDate, cardRewardOperator: $cardRewardOperator, rewardType: $rewardType, cardRewardLimitTypes: $cardRewardLimitTypes, feedbackBonus: $feedbackBonus, feedReturn: $feedReturn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CardRewardEventResp &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.descs, descs) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.cardRewardOperator, cardRewardOperator) &&
            const DeepCollectionEquality()
                .equals(other.rewardType, rewardType) &&
            const DeepCollectionEquality()
                .equals(other.cardRewardLimitTypes, cardRewardLimitTypes) &&
            const DeepCollectionEquality()
                .equals(other.feedbackBonus, feedbackBonus) &&
            const DeepCollectionEquality()
                .equals(other.feedReturn, feedReturn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(descs),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(cardRewardOperator),
      const DeepCollectionEquality().hash(rewardType),
      const DeepCollectionEquality().hash(cardRewardLimitTypes),
      const DeepCollectionEquality().hash(feedbackBonus),
      const DeepCollectionEquality().hash(feedReturn));

  @JsonKey(ignore: true)
  @override
  _$CardRewardEventRespCopyWith<_CardRewardEventResp> get copyWith =>
      __$CardRewardEventRespCopyWithImpl<_CardRewardEventResp>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardRewardEventRespToJson(this);
  }
}

abstract class _CardRewardEventResp implements CardRewardEventResp {
  const factory _CardRewardEventResp(
      {String? id,
      String? title,
      List<String>? descs,
      String? startDate,
      String? endDate,
      int? cardRewardOperator,
      int? rewardType,
      List<int>? cardRewardLimitTypes,
      FeedbackBonus? feedbackBonus,
      FeedReturn? feedReturn}) = _$_CardRewardEventResp;

  factory _CardRewardEventResp.fromJson(Map<String, dynamic> json) =
      _$_CardRewardEventResp.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  List<String>? get descs;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  int? get cardRewardOperator;
  @override
  int? get rewardType;
  @override
  List<int>? get cardRewardLimitTypes;
  @override
  FeedbackBonus? get feedbackBonus;
  @override
  FeedReturn? get feedReturn;
  @override
  @JsonKey(ignore: true)
  _$CardRewardEventRespCopyWith<_CardRewardEventResp> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedbackBonus _$FeedbackBonusFromJson(Map<String, dynamic> json) {
  return _FeedbackBonus.fromJson(json);
}

/// @nodoc
class _$FeedbackBonusTearOff {
  const _$FeedbackBonusTearOff();

  _FeedbackBonus call(
      {CashFeedbackBonus? cashFeedbackBonus,
      PointFeedbackBonus? pointFeedbackBonus}) {
    return _FeedbackBonus(
      cashFeedbackBonus: cashFeedbackBonus,
      pointFeedbackBonus: pointFeedbackBonus,
    );
  }

  FeedbackBonus fromJson(Map<String, Object?> json) {
    return FeedbackBonus.fromJson(json);
  }
}

/// @nodoc
const $FeedbackBonus = _$FeedbackBonusTearOff();

/// @nodoc
mixin _$FeedbackBonus {
  CashFeedbackBonus? get cashFeedbackBonus =>
      throw _privateConstructorUsedError;
  PointFeedbackBonus? get pointFeedbackBonus =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackBonusCopyWith<FeedbackBonus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackBonusCopyWith<$Res> {
  factory $FeedbackBonusCopyWith(
          FeedbackBonus value, $Res Function(FeedbackBonus) then) =
      _$FeedbackBonusCopyWithImpl<$Res>;
  $Res call(
      {CashFeedbackBonus? cashFeedbackBonus,
      PointFeedbackBonus? pointFeedbackBonus});

  $CashFeedbackBonusCopyWith<$Res>? get cashFeedbackBonus;
  $PointFeedbackBonusCopyWith<$Res>? get pointFeedbackBonus;
}

/// @nodoc
class _$FeedbackBonusCopyWithImpl<$Res>
    implements $FeedbackBonusCopyWith<$Res> {
  _$FeedbackBonusCopyWithImpl(this._value, this._then);

  final FeedbackBonus _value;
  // ignore: unused_field
  final $Res Function(FeedbackBonus) _then;

  @override
  $Res call({
    Object? cashFeedbackBonus = freezed,
    Object? pointFeedbackBonus = freezed,
  }) {
    return _then(_value.copyWith(
      cashFeedbackBonus: cashFeedbackBonus == freezed
          ? _value.cashFeedbackBonus
          : cashFeedbackBonus // ignore: cast_nullable_to_non_nullable
              as CashFeedbackBonus?,
      pointFeedbackBonus: pointFeedbackBonus == freezed
          ? _value.pointFeedbackBonus
          : pointFeedbackBonus // ignore: cast_nullable_to_non_nullable
              as PointFeedbackBonus?,
    ));
  }

  @override
  $CashFeedbackBonusCopyWith<$Res>? get cashFeedbackBonus {
    if (_value.cashFeedbackBonus == null) {
      return null;
    }

    return $CashFeedbackBonusCopyWith<$Res>(_value.cashFeedbackBonus!, (value) {
      return _then(_value.copyWith(cashFeedbackBonus: value));
    });
  }

  @override
  $PointFeedbackBonusCopyWith<$Res>? get pointFeedbackBonus {
    if (_value.pointFeedbackBonus == null) {
      return null;
    }

    return $PointFeedbackBonusCopyWith<$Res>(_value.pointFeedbackBonus!,
        (value) {
      return _then(_value.copyWith(pointFeedbackBonus: value));
    });
  }
}

/// @nodoc
abstract class _$FeedbackBonusCopyWith<$Res>
    implements $FeedbackBonusCopyWith<$Res> {
  factory _$FeedbackBonusCopyWith(
          _FeedbackBonus value, $Res Function(_FeedbackBonus) then) =
      __$FeedbackBonusCopyWithImpl<$Res>;
  @override
  $Res call(
      {CashFeedbackBonus? cashFeedbackBonus,
      PointFeedbackBonus? pointFeedbackBonus});

  @override
  $CashFeedbackBonusCopyWith<$Res>? get cashFeedbackBonus;
  @override
  $PointFeedbackBonusCopyWith<$Res>? get pointFeedbackBonus;
}

/// @nodoc
class __$FeedbackBonusCopyWithImpl<$Res>
    extends _$FeedbackBonusCopyWithImpl<$Res>
    implements _$FeedbackBonusCopyWith<$Res> {
  __$FeedbackBonusCopyWithImpl(
      _FeedbackBonus _value, $Res Function(_FeedbackBonus) _then)
      : super(_value, (v) => _then(v as _FeedbackBonus));

  @override
  _FeedbackBonus get _value => super._value as _FeedbackBonus;

  @override
  $Res call({
    Object? cashFeedbackBonus = freezed,
    Object? pointFeedbackBonus = freezed,
  }) {
    return _then(_FeedbackBonus(
      cashFeedbackBonus: cashFeedbackBonus == freezed
          ? _value.cashFeedbackBonus
          : cashFeedbackBonus // ignore: cast_nullable_to_non_nullable
              as CashFeedbackBonus?,
      pointFeedbackBonus: pointFeedbackBonus == freezed
          ? _value.pointFeedbackBonus
          : pointFeedbackBonus // ignore: cast_nullable_to_non_nullable
              as PointFeedbackBonus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedbackBonus implements _FeedbackBonus {
  const _$_FeedbackBonus({this.cashFeedbackBonus, this.pointFeedbackBonus});

  factory _$_FeedbackBonus.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackBonusFromJson(json);

  @override
  final CashFeedbackBonus? cashFeedbackBonus;
  @override
  final PointFeedbackBonus? pointFeedbackBonus;

  @override
  String toString() {
    return 'FeedbackBonus(cashFeedbackBonus: $cashFeedbackBonus, pointFeedbackBonus: $pointFeedbackBonus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedbackBonus &&
            const DeepCollectionEquality()
                .equals(other.cashFeedbackBonus, cashFeedbackBonus) &&
            const DeepCollectionEquality()
                .equals(other.pointFeedbackBonus, pointFeedbackBonus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cashFeedbackBonus),
      const DeepCollectionEquality().hash(pointFeedbackBonus));

  @JsonKey(ignore: true)
  @override
  _$FeedbackBonusCopyWith<_FeedbackBonus> get copyWith =>
      __$FeedbackBonusCopyWithImpl<_FeedbackBonus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackBonusToJson(this);
  }
}

abstract class _FeedbackBonus implements FeedbackBonus {
  const factory _FeedbackBonus(
      {CashFeedbackBonus? cashFeedbackBonus,
      PointFeedbackBonus? pointFeedbackBonus}) = _$_FeedbackBonus;

  factory _FeedbackBonus.fromJson(Map<String, dynamic> json) =
      _$_FeedbackBonus.fromJson;

  @override
  CashFeedbackBonus? get cashFeedbackBonus;
  @override
  PointFeedbackBonus? get pointFeedbackBonus;
  @override
  @JsonKey(ignore: true)
  _$FeedbackBonusCopyWith<_FeedbackBonus> get copyWith =>
      throw _privateConstructorUsedError;
}

CashFeedbackBonus _$CashFeedbackBonusFromJson(Map<String, dynamic> json) {
  return _CashFeedbackBonus.fromJson(json);
}

/// @nodoc
class _$CashFeedbackBonusTearOff {
  const _$CashFeedbackBonusTearOff();

  _CashFeedbackBonus call(
      {int? cashFeedbackBonusType,
      double? totalBonus,
      int? cashCalculateType,
      String? title,
      String? returnBonusTitle,
      String? cashReturnTitlePrefix,
      String? cashReturnTitleSuffix}) {
    return _CashFeedbackBonus(
      cashFeedbackBonusType: cashFeedbackBonusType,
      totalBonus: totalBonus,
      cashCalculateType: cashCalculateType,
      title: title,
      returnBonusTitle: returnBonusTitle,
      cashReturnTitlePrefix: cashReturnTitlePrefix,
      cashReturnTitleSuffix: cashReturnTitleSuffix,
    );
  }

  CashFeedbackBonus fromJson(Map<String, Object?> json) {
    return CashFeedbackBonus.fromJson(json);
  }
}

/// @nodoc
const $CashFeedbackBonus = _$CashFeedbackBonusTearOff();

/// @nodoc
mixin _$CashFeedbackBonus {
  int? get cashFeedbackBonusType => throw _privateConstructorUsedError;
  double? get totalBonus => throw _privateConstructorUsedError;
  int? get cashCalculateType => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get returnBonusTitle => throw _privateConstructorUsedError;
  String? get cashReturnTitlePrefix => throw _privateConstructorUsedError;
  String? get cashReturnTitleSuffix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CashFeedbackBonusCopyWith<CashFeedbackBonus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashFeedbackBonusCopyWith<$Res> {
  factory $CashFeedbackBonusCopyWith(
          CashFeedbackBonus value, $Res Function(CashFeedbackBonus) then) =
      _$CashFeedbackBonusCopyWithImpl<$Res>;
  $Res call(
      {int? cashFeedbackBonusType,
      double? totalBonus,
      int? cashCalculateType,
      String? title,
      String? returnBonusTitle,
      String? cashReturnTitlePrefix,
      String? cashReturnTitleSuffix});
}

/// @nodoc
class _$CashFeedbackBonusCopyWithImpl<$Res>
    implements $CashFeedbackBonusCopyWith<$Res> {
  _$CashFeedbackBonusCopyWithImpl(this._value, this._then);

  final CashFeedbackBonus _value;
  // ignore: unused_field
  final $Res Function(CashFeedbackBonus) _then;

  @override
  $Res call({
    Object? cashFeedbackBonusType = freezed,
    Object? totalBonus = freezed,
    Object? cashCalculateType = freezed,
    Object? title = freezed,
    Object? returnBonusTitle = freezed,
    Object? cashReturnTitlePrefix = freezed,
    Object? cashReturnTitleSuffix = freezed,
  }) {
    return _then(_value.copyWith(
      cashFeedbackBonusType: cashFeedbackBonusType == freezed
          ? _value.cashFeedbackBonusType
          : cashFeedbackBonusType // ignore: cast_nullable_to_non_nullable
              as int?,
      totalBonus: totalBonus == freezed
          ? _value.totalBonus
          : totalBonus // ignore: cast_nullable_to_non_nullable
              as double?,
      cashCalculateType: cashCalculateType == freezed
          ? _value.cashCalculateType
          : cashCalculateType // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      returnBonusTitle: returnBonusTitle == freezed
          ? _value.returnBonusTitle
          : returnBonusTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      cashReturnTitlePrefix: cashReturnTitlePrefix == freezed
          ? _value.cashReturnTitlePrefix
          : cashReturnTitlePrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      cashReturnTitleSuffix: cashReturnTitleSuffix == freezed
          ? _value.cashReturnTitleSuffix
          : cashReturnTitleSuffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CashFeedbackBonusCopyWith<$Res>
    implements $CashFeedbackBonusCopyWith<$Res> {
  factory _$CashFeedbackBonusCopyWith(
          _CashFeedbackBonus value, $Res Function(_CashFeedbackBonus) then) =
      __$CashFeedbackBonusCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? cashFeedbackBonusType,
      double? totalBonus,
      int? cashCalculateType,
      String? title,
      String? returnBonusTitle,
      String? cashReturnTitlePrefix,
      String? cashReturnTitleSuffix});
}

/// @nodoc
class __$CashFeedbackBonusCopyWithImpl<$Res>
    extends _$CashFeedbackBonusCopyWithImpl<$Res>
    implements _$CashFeedbackBonusCopyWith<$Res> {
  __$CashFeedbackBonusCopyWithImpl(
      _CashFeedbackBonus _value, $Res Function(_CashFeedbackBonus) _then)
      : super(_value, (v) => _then(v as _CashFeedbackBonus));

  @override
  _CashFeedbackBonus get _value => super._value as _CashFeedbackBonus;

  @override
  $Res call({
    Object? cashFeedbackBonusType = freezed,
    Object? totalBonus = freezed,
    Object? cashCalculateType = freezed,
    Object? title = freezed,
    Object? returnBonusTitle = freezed,
    Object? cashReturnTitlePrefix = freezed,
    Object? cashReturnTitleSuffix = freezed,
  }) {
    return _then(_CashFeedbackBonus(
      cashFeedbackBonusType: cashFeedbackBonusType == freezed
          ? _value.cashFeedbackBonusType
          : cashFeedbackBonusType // ignore: cast_nullable_to_non_nullable
              as int?,
      totalBonus: totalBonus == freezed
          ? _value.totalBonus
          : totalBonus // ignore: cast_nullable_to_non_nullable
              as double?,
      cashCalculateType: cashCalculateType == freezed
          ? _value.cashCalculateType
          : cashCalculateType // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      returnBonusTitle: returnBonusTitle == freezed
          ? _value.returnBonusTitle
          : returnBonusTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      cashReturnTitlePrefix: cashReturnTitlePrefix == freezed
          ? _value.cashReturnTitlePrefix
          : cashReturnTitlePrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      cashReturnTitleSuffix: cashReturnTitleSuffix == freezed
          ? _value.cashReturnTitleSuffix
          : cashReturnTitleSuffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CashFeedbackBonus implements _CashFeedbackBonus {
  const _$_CashFeedbackBonus(
      {this.cashFeedbackBonusType,
      this.totalBonus,
      this.cashCalculateType,
      this.title,
      this.returnBonusTitle,
      this.cashReturnTitlePrefix,
      this.cashReturnTitleSuffix});

  factory _$_CashFeedbackBonus.fromJson(Map<String, dynamic> json) =>
      _$$_CashFeedbackBonusFromJson(json);

  @override
  final int? cashFeedbackBonusType;
  @override
  final double? totalBonus;
  @override
  final int? cashCalculateType;
  @override
  final String? title;
  @override
  final String? returnBonusTitle;
  @override
  final String? cashReturnTitlePrefix;
  @override
  final String? cashReturnTitleSuffix;

  @override
  String toString() {
    return 'CashFeedbackBonus(cashFeedbackBonusType: $cashFeedbackBonusType, totalBonus: $totalBonus, cashCalculateType: $cashCalculateType, title: $title, returnBonusTitle: $returnBonusTitle, cashReturnTitlePrefix: $cashReturnTitlePrefix, cashReturnTitleSuffix: $cashReturnTitleSuffix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CashFeedbackBonus &&
            const DeepCollectionEquality()
                .equals(other.cashFeedbackBonusType, cashFeedbackBonusType) &&
            const DeepCollectionEquality()
                .equals(other.totalBonus, totalBonus) &&
            const DeepCollectionEquality()
                .equals(other.cashCalculateType, cashCalculateType) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.returnBonusTitle, returnBonusTitle) &&
            const DeepCollectionEquality()
                .equals(other.cashReturnTitlePrefix, cashReturnTitlePrefix) &&
            const DeepCollectionEquality()
                .equals(other.cashReturnTitleSuffix, cashReturnTitleSuffix));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cashFeedbackBonusType),
      const DeepCollectionEquality().hash(totalBonus),
      const DeepCollectionEquality().hash(cashCalculateType),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(returnBonusTitle),
      const DeepCollectionEquality().hash(cashReturnTitlePrefix),
      const DeepCollectionEquality().hash(cashReturnTitleSuffix));

  @JsonKey(ignore: true)
  @override
  _$CashFeedbackBonusCopyWith<_CashFeedbackBonus> get copyWith =>
      __$CashFeedbackBonusCopyWithImpl<_CashFeedbackBonus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CashFeedbackBonusToJson(this);
  }
}

abstract class _CashFeedbackBonus implements CashFeedbackBonus {
  const factory _CashFeedbackBonus(
      {int? cashFeedbackBonusType,
      double? totalBonus,
      int? cashCalculateType,
      String? title,
      String? returnBonusTitle,
      String? cashReturnTitlePrefix,
      String? cashReturnTitleSuffix}) = _$_CashFeedbackBonus;

  factory _CashFeedbackBonus.fromJson(Map<String, dynamic> json) =
      _$_CashFeedbackBonus.fromJson;

  @override
  int? get cashFeedbackBonusType;
  @override
  double? get totalBonus;
  @override
  int? get cashCalculateType;
  @override
  String? get title;
  @override
  String? get returnBonusTitle;
  @override
  String? get cashReturnTitlePrefix;
  @override
  String? get cashReturnTitleSuffix;
  @override
  @JsonKey(ignore: true)
  _$CashFeedbackBonusCopyWith<_CashFeedbackBonus> get copyWith =>
      throw _privateConstructorUsedError;
}

PointFeedbackBonus _$PointFeedbackBonusFromJson(Map<String, dynamic> json) {
  return _PoingFeedbackBonus.fromJson(json);
}

/// @nodoc
class _$PointFeedbackBonusTearOff {
  const _$PointFeedbackBonusTearOff();

  _PoingFeedbackBonus call(
      {double? totalBonus,
      int? pointbackType,
      String? title,
      String? returnBonusTitle,
      String? pointReturnTitlePrefix,
      String? pointReturnTitleSuffix}) {
    return _PoingFeedbackBonus(
      totalBonus: totalBonus,
      pointbackType: pointbackType,
      title: title,
      returnBonusTitle: returnBonusTitle,
      pointReturnTitlePrefix: pointReturnTitlePrefix,
      pointReturnTitleSuffix: pointReturnTitleSuffix,
    );
  }

  PointFeedbackBonus fromJson(Map<String, Object?> json) {
    return PointFeedbackBonus.fromJson(json);
  }
}

/// @nodoc
const $PointFeedbackBonus = _$PointFeedbackBonusTearOff();

/// @nodoc
mixin _$PointFeedbackBonus {
  double? get totalBonus => throw _privateConstructorUsedError;
  int? get pointbackType => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get returnBonusTitle => throw _privateConstructorUsedError;
  String? get pointReturnTitlePrefix => throw _privateConstructorUsedError;
  String? get pointReturnTitleSuffix => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointFeedbackBonusCopyWith<PointFeedbackBonus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointFeedbackBonusCopyWith<$Res> {
  factory $PointFeedbackBonusCopyWith(
          PointFeedbackBonus value, $Res Function(PointFeedbackBonus) then) =
      _$PointFeedbackBonusCopyWithImpl<$Res>;
  $Res call(
      {double? totalBonus,
      int? pointbackType,
      String? title,
      String? returnBonusTitle,
      String? pointReturnTitlePrefix,
      String? pointReturnTitleSuffix});
}

/// @nodoc
class _$PointFeedbackBonusCopyWithImpl<$Res>
    implements $PointFeedbackBonusCopyWith<$Res> {
  _$PointFeedbackBonusCopyWithImpl(this._value, this._then);

  final PointFeedbackBonus _value;
  // ignore: unused_field
  final $Res Function(PointFeedbackBonus) _then;

  @override
  $Res call({
    Object? totalBonus = freezed,
    Object? pointbackType = freezed,
    Object? title = freezed,
    Object? returnBonusTitle = freezed,
    Object? pointReturnTitlePrefix = freezed,
    Object? pointReturnTitleSuffix = freezed,
  }) {
    return _then(_value.copyWith(
      totalBonus: totalBonus == freezed
          ? _value.totalBonus
          : totalBonus // ignore: cast_nullable_to_non_nullable
              as double?,
      pointbackType: pointbackType == freezed
          ? _value.pointbackType
          : pointbackType // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      returnBonusTitle: returnBonusTitle == freezed
          ? _value.returnBonusTitle
          : returnBonusTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      pointReturnTitlePrefix: pointReturnTitlePrefix == freezed
          ? _value.pointReturnTitlePrefix
          : pointReturnTitlePrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      pointReturnTitleSuffix: pointReturnTitleSuffix == freezed
          ? _value.pointReturnTitleSuffix
          : pointReturnTitleSuffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PoingFeedbackBonusCopyWith<$Res>
    implements $PointFeedbackBonusCopyWith<$Res> {
  factory _$PoingFeedbackBonusCopyWith(
          _PoingFeedbackBonus value, $Res Function(_PoingFeedbackBonus) then) =
      __$PoingFeedbackBonusCopyWithImpl<$Res>;
  @override
  $Res call(
      {double? totalBonus,
      int? pointbackType,
      String? title,
      String? returnBonusTitle,
      String? pointReturnTitlePrefix,
      String? pointReturnTitleSuffix});
}

/// @nodoc
class __$PoingFeedbackBonusCopyWithImpl<$Res>
    extends _$PointFeedbackBonusCopyWithImpl<$Res>
    implements _$PoingFeedbackBonusCopyWith<$Res> {
  __$PoingFeedbackBonusCopyWithImpl(
      _PoingFeedbackBonus _value, $Res Function(_PoingFeedbackBonus) _then)
      : super(_value, (v) => _then(v as _PoingFeedbackBonus));

  @override
  _PoingFeedbackBonus get _value => super._value as _PoingFeedbackBonus;

  @override
  $Res call({
    Object? totalBonus = freezed,
    Object? pointbackType = freezed,
    Object? title = freezed,
    Object? returnBonusTitle = freezed,
    Object? pointReturnTitlePrefix = freezed,
    Object? pointReturnTitleSuffix = freezed,
  }) {
    return _then(_PoingFeedbackBonus(
      totalBonus: totalBonus == freezed
          ? _value.totalBonus
          : totalBonus // ignore: cast_nullable_to_non_nullable
              as double?,
      pointbackType: pointbackType == freezed
          ? _value.pointbackType
          : pointbackType // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      returnBonusTitle: returnBonusTitle == freezed
          ? _value.returnBonusTitle
          : returnBonusTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      pointReturnTitlePrefix: pointReturnTitlePrefix == freezed
          ? _value.pointReturnTitlePrefix
          : pointReturnTitlePrefix // ignore: cast_nullable_to_non_nullable
              as String?,
      pointReturnTitleSuffix: pointReturnTitleSuffix == freezed
          ? _value.pointReturnTitleSuffix
          : pointReturnTitleSuffix // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PoingFeedbackBonus implements _PoingFeedbackBonus {
  const _$_PoingFeedbackBonus(
      {this.totalBonus,
      this.pointbackType,
      this.title,
      this.returnBonusTitle,
      this.pointReturnTitlePrefix,
      this.pointReturnTitleSuffix});

  factory _$_PoingFeedbackBonus.fromJson(Map<String, dynamic> json) =>
      _$$_PoingFeedbackBonusFromJson(json);

  @override
  final double? totalBonus;
  @override
  final int? pointbackType;
  @override
  final String? title;
  @override
  final String? returnBonusTitle;
  @override
  final String? pointReturnTitlePrefix;
  @override
  final String? pointReturnTitleSuffix;

  @override
  String toString() {
    return 'PointFeedbackBonus(totalBonus: $totalBonus, pointbackType: $pointbackType, title: $title, returnBonusTitle: $returnBonusTitle, pointReturnTitlePrefix: $pointReturnTitlePrefix, pointReturnTitleSuffix: $pointReturnTitleSuffix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PoingFeedbackBonus &&
            const DeepCollectionEquality()
                .equals(other.totalBonus, totalBonus) &&
            const DeepCollectionEquality()
                .equals(other.pointbackType, pointbackType) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.returnBonusTitle, returnBonusTitle) &&
            const DeepCollectionEquality()
                .equals(other.pointReturnTitlePrefix, pointReturnTitlePrefix) &&
            const DeepCollectionEquality()
                .equals(other.pointReturnTitleSuffix, pointReturnTitleSuffix));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalBonus),
      const DeepCollectionEquality().hash(pointbackType),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(returnBonusTitle),
      const DeepCollectionEquality().hash(pointReturnTitlePrefix),
      const DeepCollectionEquality().hash(pointReturnTitleSuffix));

  @JsonKey(ignore: true)
  @override
  _$PoingFeedbackBonusCopyWith<_PoingFeedbackBonus> get copyWith =>
      __$PoingFeedbackBonusCopyWithImpl<_PoingFeedbackBonus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PoingFeedbackBonusToJson(this);
  }
}

abstract class _PoingFeedbackBonus implements PointFeedbackBonus {
  const factory _PoingFeedbackBonus(
      {double? totalBonus,
      int? pointbackType,
      String? title,
      String? returnBonusTitle,
      String? pointReturnTitlePrefix,
      String? pointReturnTitleSuffix}) = _$_PoingFeedbackBonus;

  factory _PoingFeedbackBonus.fromJson(Map<String, dynamic> json) =
      _$_PoingFeedbackBonus.fromJson;

  @override
  double? get totalBonus;
  @override
  int? get pointbackType;
  @override
  String? get title;
  @override
  String? get returnBonusTitle;
  @override
  String? get pointReturnTitlePrefix;
  @override
  String? get pointReturnTitleSuffix;
  @override
  @JsonKey(ignore: true)
  _$PoingFeedbackBonusCopyWith<_PoingFeedbackBonus> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedReturn _$FeedReturnFromJson(Map<String, dynamic> json) {
  return _FeedReturn.fromJson(json);
}

/// @nodoc
class _$FeedReturnTearOff {
  const _$FeedReturnTearOff();

  _FeedReturn call({CashReturn? cashReturn, PointReturn? pointReturn}) {
    return _FeedReturn(
      cashReturn: cashReturn,
      pointReturn: pointReturn,
    );
  }

  FeedReturn fromJson(Map<String, Object?> json) {
    return FeedReturn.fromJson(json);
  }
}

/// @nodoc
const $FeedReturn = _$FeedReturnTearOff();

/// @nodoc
mixin _$FeedReturn {
  CashReturn? get cashReturn => throw _privateConstructorUsedError;
  PointReturn? get pointReturn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedReturnCopyWith<FeedReturn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedReturnCopyWith<$Res> {
  factory $FeedReturnCopyWith(
          FeedReturn value, $Res Function(FeedReturn) then) =
      _$FeedReturnCopyWithImpl<$Res>;
  $Res call({CashReturn? cashReturn, PointReturn? pointReturn});

  $CashReturnCopyWith<$Res>? get cashReturn;
  $PointReturnCopyWith<$Res>? get pointReturn;
}

/// @nodoc
class _$FeedReturnCopyWithImpl<$Res> implements $FeedReturnCopyWith<$Res> {
  _$FeedReturnCopyWithImpl(this._value, this._then);

  final FeedReturn _value;
  // ignore: unused_field
  final $Res Function(FeedReturn) _then;

  @override
  $Res call({
    Object? cashReturn = freezed,
    Object? pointReturn = freezed,
  }) {
    return _then(_value.copyWith(
      cashReturn: cashReturn == freezed
          ? _value.cashReturn
          : cashReturn // ignore: cast_nullable_to_non_nullable
              as CashReturn?,
      pointReturn: pointReturn == freezed
          ? _value.pointReturn
          : pointReturn // ignore: cast_nullable_to_non_nullable
              as PointReturn?,
    ));
  }

  @override
  $CashReturnCopyWith<$Res>? get cashReturn {
    if (_value.cashReturn == null) {
      return null;
    }

    return $CashReturnCopyWith<$Res>(_value.cashReturn!, (value) {
      return _then(_value.copyWith(cashReturn: value));
    });
  }

  @override
  $PointReturnCopyWith<$Res>? get pointReturn {
    if (_value.pointReturn == null) {
      return null;
    }

    return $PointReturnCopyWith<$Res>(_value.pointReturn!, (value) {
      return _then(_value.copyWith(pointReturn: value));
    });
  }
}

/// @nodoc
abstract class _$FeedReturnCopyWith<$Res> implements $FeedReturnCopyWith<$Res> {
  factory _$FeedReturnCopyWith(
          _FeedReturn value, $Res Function(_FeedReturn) then) =
      __$FeedReturnCopyWithImpl<$Res>;
  @override
  $Res call({CashReturn? cashReturn, PointReturn? pointReturn});

  @override
  $CashReturnCopyWith<$Res>? get cashReturn;
  @override
  $PointReturnCopyWith<$Res>? get pointReturn;
}

/// @nodoc
class __$FeedReturnCopyWithImpl<$Res> extends _$FeedReturnCopyWithImpl<$Res>
    implements _$FeedReturnCopyWith<$Res> {
  __$FeedReturnCopyWithImpl(
      _FeedReturn _value, $Res Function(_FeedReturn) _then)
      : super(_value, (v) => _then(v as _FeedReturn));

  @override
  _FeedReturn get _value => super._value as _FeedReturn;

  @override
  $Res call({
    Object? cashReturn = freezed,
    Object? pointReturn = freezed,
  }) {
    return _then(_FeedReturn(
      cashReturn: cashReturn == freezed
          ? _value.cashReturn
          : cashReturn // ignore: cast_nullable_to_non_nullable
              as CashReturn?,
      pointReturn: pointReturn == freezed
          ? _value.pointReturn
          : pointReturn // ignore: cast_nullable_to_non_nullable
              as PointReturn?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedReturn implements _FeedReturn {
  const _$_FeedReturn({this.cashReturn, this.pointReturn});

  factory _$_FeedReturn.fromJson(Map<String, dynamic> json) =>
      _$$_FeedReturnFromJson(json);

  @override
  final CashReturn? cashReturn;
  @override
  final PointReturn? pointReturn;

  @override
  String toString() {
    return 'FeedReturn(cashReturn: $cashReturn, pointReturn: $pointReturn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedReturn &&
            const DeepCollectionEquality()
                .equals(other.cashReturn, cashReturn) &&
            const DeepCollectionEquality()
                .equals(other.pointReturn, pointReturn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cashReturn),
      const DeepCollectionEquality().hash(pointReturn));

  @JsonKey(ignore: true)
  @override
  _$FeedReturnCopyWith<_FeedReturn> get copyWith =>
      __$FeedReturnCopyWithImpl<_FeedReturn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedReturnToJson(this);
  }
}

abstract class _FeedReturn implements FeedReturn {
  const factory _FeedReturn(
      {CashReturn? cashReturn, PointReturn? pointReturn}) = _$_FeedReturn;

  factory _FeedReturn.fromJson(Map<String, dynamic> json) =
      _$_FeedReturn.fromJson;

  @override
  CashReturn? get cashReturn;
  @override
  PointReturn? get pointReturn;
  @override
  @JsonKey(ignore: true)
  _$FeedReturnCopyWith<_FeedReturn> get copyWith =>
      throw _privateConstructorUsedError;
}

CashReturn _$CashReturnFromJson(Map<String, dynamic> json) {
  return _CashReturn.fromJson(json);
}

/// @nodoc
class _$CashReturnTearOff {
  const _$CashReturnTearOff();

  _CashReturn call(
      {int? cash,
      int? cashReturnStatus,
      double? actualUseCash,
      double? actualCashReturn,
      double? cashReturnBonus}) {
    return _CashReturn(
      cash: cash,
      cashReturnStatus: cashReturnStatus,
      actualUseCash: actualUseCash,
      actualCashReturn: actualCashReturn,
      cashReturnBonus: cashReturnBonus,
    );
  }

  CashReturn fromJson(Map<String, Object?> json) {
    return CashReturn.fromJson(json);
  }
}

/// @nodoc
const $CashReturn = _$CashReturnTearOff();

/// @nodoc
mixin _$CashReturn {
  int? get cash => throw _privateConstructorUsedError;
  int? get cashReturnStatus => throw _privateConstructorUsedError;
  double? get actualUseCash => throw _privateConstructorUsedError;
  double? get actualCashReturn => throw _privateConstructorUsedError;
  double? get cashReturnBonus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CashReturnCopyWith<CashReturn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashReturnCopyWith<$Res> {
  factory $CashReturnCopyWith(
          CashReturn value, $Res Function(CashReturn) then) =
      _$CashReturnCopyWithImpl<$Res>;
  $Res call(
      {int? cash,
      int? cashReturnStatus,
      double? actualUseCash,
      double? actualCashReturn,
      double? cashReturnBonus});
}

/// @nodoc
class _$CashReturnCopyWithImpl<$Res> implements $CashReturnCopyWith<$Res> {
  _$CashReturnCopyWithImpl(this._value, this._then);

  final CashReturn _value;
  // ignore: unused_field
  final $Res Function(CashReturn) _then;

  @override
  $Res call({
    Object? cash = freezed,
    Object? cashReturnStatus = freezed,
    Object? actualUseCash = freezed,
    Object? actualCashReturn = freezed,
    Object? cashReturnBonus = freezed,
  }) {
    return _then(_value.copyWith(
      cash: cash == freezed
          ? _value.cash
          : cash // ignore: cast_nullable_to_non_nullable
              as int?,
      cashReturnStatus: cashReturnStatus == freezed
          ? _value.cashReturnStatus
          : cashReturnStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      actualUseCash: actualUseCash == freezed
          ? _value.actualUseCash
          : actualUseCash // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCashReturn: actualCashReturn == freezed
          ? _value.actualCashReturn
          : actualCashReturn // ignore: cast_nullable_to_non_nullable
              as double?,
      cashReturnBonus: cashReturnBonus == freezed
          ? _value.cashReturnBonus
          : cashReturnBonus // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$CashReturnCopyWith<$Res> implements $CashReturnCopyWith<$Res> {
  factory _$CashReturnCopyWith(
          _CashReturn value, $Res Function(_CashReturn) then) =
      __$CashReturnCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? cash,
      int? cashReturnStatus,
      double? actualUseCash,
      double? actualCashReturn,
      double? cashReturnBonus});
}

/// @nodoc
class __$CashReturnCopyWithImpl<$Res> extends _$CashReturnCopyWithImpl<$Res>
    implements _$CashReturnCopyWith<$Res> {
  __$CashReturnCopyWithImpl(
      _CashReturn _value, $Res Function(_CashReturn) _then)
      : super(_value, (v) => _then(v as _CashReturn));

  @override
  _CashReturn get _value => super._value as _CashReturn;

  @override
  $Res call({
    Object? cash = freezed,
    Object? cashReturnStatus = freezed,
    Object? actualUseCash = freezed,
    Object? actualCashReturn = freezed,
    Object? cashReturnBonus = freezed,
  }) {
    return _then(_CashReturn(
      cash: cash == freezed
          ? _value.cash
          : cash // ignore: cast_nullable_to_non_nullable
              as int?,
      cashReturnStatus: cashReturnStatus == freezed
          ? _value.cashReturnStatus
          : cashReturnStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      actualUseCash: actualUseCash == freezed
          ? _value.actualUseCash
          : actualUseCash // ignore: cast_nullable_to_non_nullable
              as double?,
      actualCashReturn: actualCashReturn == freezed
          ? _value.actualCashReturn
          : actualCashReturn // ignore: cast_nullable_to_non_nullable
              as double?,
      cashReturnBonus: cashReturnBonus == freezed
          ? _value.cashReturnBonus
          : cashReturnBonus // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CashReturn implements _CashReturn {
  const _$_CashReturn(
      {this.cash,
      this.cashReturnStatus,
      this.actualUseCash,
      this.actualCashReturn,
      this.cashReturnBonus});

  factory _$_CashReturn.fromJson(Map<String, dynamic> json) =>
      _$$_CashReturnFromJson(json);

  @override
  final int? cash;
  @override
  final int? cashReturnStatus;
  @override
  final double? actualUseCash;
  @override
  final double? actualCashReturn;
  @override
  final double? cashReturnBonus;

  @override
  String toString() {
    return 'CashReturn(cash: $cash, cashReturnStatus: $cashReturnStatus, actualUseCash: $actualUseCash, actualCashReturn: $actualCashReturn, cashReturnBonus: $cashReturnBonus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CashReturn &&
            const DeepCollectionEquality().equals(other.cash, cash) &&
            const DeepCollectionEquality()
                .equals(other.cashReturnStatus, cashReturnStatus) &&
            const DeepCollectionEquality()
                .equals(other.actualUseCash, actualUseCash) &&
            const DeepCollectionEquality()
                .equals(other.actualCashReturn, actualCashReturn) &&
            const DeepCollectionEquality()
                .equals(other.cashReturnBonus, cashReturnBonus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cash),
      const DeepCollectionEquality().hash(cashReturnStatus),
      const DeepCollectionEquality().hash(actualUseCash),
      const DeepCollectionEquality().hash(actualCashReturn),
      const DeepCollectionEquality().hash(cashReturnBonus));

  @JsonKey(ignore: true)
  @override
  _$CashReturnCopyWith<_CashReturn> get copyWith =>
      __$CashReturnCopyWithImpl<_CashReturn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CashReturnToJson(this);
  }
}

abstract class _CashReturn implements CashReturn {
  const factory _CashReturn(
      {int? cash,
      int? cashReturnStatus,
      double? actualUseCash,
      double? actualCashReturn,
      double? cashReturnBonus}) = _$_CashReturn;

  factory _CashReturn.fromJson(Map<String, dynamic> json) =
      _$_CashReturn.fromJson;

  @override
  int? get cash;
  @override
  int? get cashReturnStatus;
  @override
  double? get actualUseCash;
  @override
  double? get actualCashReturn;
  @override
  double? get cashReturnBonus;
  @override
  @JsonKey(ignore: true)
  _$CashReturnCopyWith<_CashReturn> get copyWith =>
      throw _privateConstructorUsedError;
}

PointReturn _$PointReturnFromJson(Map<String, dynamic> json) {
  return _PointReturn.fromJson(json);
}

/// @nodoc
class _$PointReturnTearOff {
  const _$PointReturnTearOff();

  _PointReturn call(
      {int? cash,
      int? pointReturnStatus,
      double? actualUseCash,
      double? actualPointReturn,
      double? pointReturnBonus}) {
    return _PointReturn(
      cash: cash,
      pointReturnStatus: pointReturnStatus,
      actualUseCash: actualUseCash,
      actualPointReturn: actualPointReturn,
      pointReturnBonus: pointReturnBonus,
    );
  }

  PointReturn fromJson(Map<String, Object?> json) {
    return PointReturn.fromJson(json);
  }
}

/// @nodoc
const $PointReturn = _$PointReturnTearOff();

/// @nodoc
mixin _$PointReturn {
  int? get cash => throw _privateConstructorUsedError;
  int? get pointReturnStatus => throw _privateConstructorUsedError;
  double? get actualUseCash => throw _privateConstructorUsedError;
  double? get actualPointReturn => throw _privateConstructorUsedError;
  double? get pointReturnBonus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointReturnCopyWith<PointReturn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointReturnCopyWith<$Res> {
  factory $PointReturnCopyWith(
          PointReturn value, $Res Function(PointReturn) then) =
      _$PointReturnCopyWithImpl<$Res>;
  $Res call(
      {int? cash,
      int? pointReturnStatus,
      double? actualUseCash,
      double? actualPointReturn,
      double? pointReturnBonus});
}

/// @nodoc
class _$PointReturnCopyWithImpl<$Res> implements $PointReturnCopyWith<$Res> {
  _$PointReturnCopyWithImpl(this._value, this._then);

  final PointReturn _value;
  // ignore: unused_field
  final $Res Function(PointReturn) _then;

  @override
  $Res call({
    Object? cash = freezed,
    Object? pointReturnStatus = freezed,
    Object? actualUseCash = freezed,
    Object? actualPointReturn = freezed,
    Object? pointReturnBonus = freezed,
  }) {
    return _then(_value.copyWith(
      cash: cash == freezed
          ? _value.cash
          : cash // ignore: cast_nullable_to_non_nullable
              as int?,
      pointReturnStatus: pointReturnStatus == freezed
          ? _value.pointReturnStatus
          : pointReturnStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      actualUseCash: actualUseCash == freezed
          ? _value.actualUseCash
          : actualUseCash // ignore: cast_nullable_to_non_nullable
              as double?,
      actualPointReturn: actualPointReturn == freezed
          ? _value.actualPointReturn
          : actualPointReturn // ignore: cast_nullable_to_non_nullable
              as double?,
      pointReturnBonus: pointReturnBonus == freezed
          ? _value.pointReturnBonus
          : pointReturnBonus // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$PointReturnCopyWith<$Res>
    implements $PointReturnCopyWith<$Res> {
  factory _$PointReturnCopyWith(
          _PointReturn value, $Res Function(_PointReturn) then) =
      __$PointReturnCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? cash,
      int? pointReturnStatus,
      double? actualUseCash,
      double? actualPointReturn,
      double? pointReturnBonus});
}

/// @nodoc
class __$PointReturnCopyWithImpl<$Res> extends _$PointReturnCopyWithImpl<$Res>
    implements _$PointReturnCopyWith<$Res> {
  __$PointReturnCopyWithImpl(
      _PointReturn _value, $Res Function(_PointReturn) _then)
      : super(_value, (v) => _then(v as _PointReturn));

  @override
  _PointReturn get _value => super._value as _PointReturn;

  @override
  $Res call({
    Object? cash = freezed,
    Object? pointReturnStatus = freezed,
    Object? actualUseCash = freezed,
    Object? actualPointReturn = freezed,
    Object? pointReturnBonus = freezed,
  }) {
    return _then(_PointReturn(
      cash: cash == freezed
          ? _value.cash
          : cash // ignore: cast_nullable_to_non_nullable
              as int?,
      pointReturnStatus: pointReturnStatus == freezed
          ? _value.pointReturnStatus
          : pointReturnStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      actualUseCash: actualUseCash == freezed
          ? _value.actualUseCash
          : actualUseCash // ignore: cast_nullable_to_non_nullable
              as double?,
      actualPointReturn: actualPointReturn == freezed
          ? _value.actualPointReturn
          : actualPointReturn // ignore: cast_nullable_to_non_nullable
              as double?,
      pointReturnBonus: pointReturnBonus == freezed
          ? _value.pointReturnBonus
          : pointReturnBonus // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointReturn implements _PointReturn {
  const _$_PointReturn(
      {this.cash,
      this.pointReturnStatus,
      this.actualUseCash,
      this.actualPointReturn,
      this.pointReturnBonus});

  factory _$_PointReturn.fromJson(Map<String, dynamic> json) =>
      _$$_PointReturnFromJson(json);

  @override
  final int? cash;
  @override
  final int? pointReturnStatus;
  @override
  final double? actualUseCash;
  @override
  final double? actualPointReturn;
  @override
  final double? pointReturnBonus;

  @override
  String toString() {
    return 'PointReturn(cash: $cash, pointReturnStatus: $pointReturnStatus, actualUseCash: $actualUseCash, actualPointReturn: $actualPointReturn, pointReturnBonus: $pointReturnBonus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PointReturn &&
            const DeepCollectionEquality().equals(other.cash, cash) &&
            const DeepCollectionEquality()
                .equals(other.pointReturnStatus, pointReturnStatus) &&
            const DeepCollectionEquality()
                .equals(other.actualUseCash, actualUseCash) &&
            const DeepCollectionEquality()
                .equals(other.actualPointReturn, actualPointReturn) &&
            const DeepCollectionEquality()
                .equals(other.pointReturnBonus, pointReturnBonus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cash),
      const DeepCollectionEquality().hash(pointReturnStatus),
      const DeepCollectionEquality().hash(actualUseCash),
      const DeepCollectionEquality().hash(actualPointReturn),
      const DeepCollectionEquality().hash(pointReturnBonus));

  @JsonKey(ignore: true)
  @override
  _$PointReturnCopyWith<_PointReturn> get copyWith =>
      __$PointReturnCopyWithImpl<_PointReturn>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PointReturnToJson(this);
  }
}

abstract class _PointReturn implements PointReturn {
  const factory _PointReturn(
      {int? cash,
      int? pointReturnStatus,
      double? actualUseCash,
      double? actualPointReturn,
      double? pointReturnBonus}) = _$_PointReturn;

  factory _PointReturn.fromJson(Map<String, dynamic> json) =
      _$_PointReturn.fromJson;

  @override
  int? get cash;
  @override
  int? get pointReturnStatus;
  @override
  double? get actualUseCash;
  @override
  double? get actualPointReturn;
  @override
  double? get pointReturnBonus;
  @override
  @JsonKey(ignore: true)
  _$PointReturnCopyWith<_PointReturn> get copyWith =>
      throw _privateConstructorUsedError;
}
