// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card_reward.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CardReward _$CardRewardFromJson(Map<String, dynamic> json) {
  return _CardReward.fromJson(json);
}

/// @nodoc
class _$CardRewardTearOff {
  const _$CardRewardTearOff();

  _CardReward call(
      {String? id,
      String? bankID,
      String? name,
      List<String>? descs,
      String? bankName,
      String? updateDate,
      int? cardStatus,
      String? imagePath,
      String? linkURL,
      List<CardRewardResp>? cardRewardResps,
      List<OtherRewardResp>? otherRewardResps}) {
    return _CardReward(
      id: id,
      bankID: bankID,
      name: name,
      descs: descs,
      bankName: bankName,
      updateDate: updateDate,
      cardStatus: cardStatus,
      imagePath: imagePath,
      linkURL: linkURL,
      cardRewardResps: cardRewardResps,
      otherRewardResps: otherRewardResps,
    );
  }

  CardReward fromJson(Map<String, Object?> json) {
    return CardReward.fromJson(json);
  }
}

/// @nodoc
const $CardReward = _$CardRewardTearOff();

/// @nodoc
mixin _$CardReward {
  String? get id => throw _privateConstructorUsedError;
  String? get bankID => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<String>? get descs => throw _privateConstructorUsedError;
  String? get bankName => throw _privateConstructorUsedError;
  String? get updateDate => throw _privateConstructorUsedError;
  int? get cardStatus => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  String? get linkURL => throw _privateConstructorUsedError;
  List<CardRewardResp>? get cardRewardResps =>
      throw _privateConstructorUsedError;
  List<OtherRewardResp>? get otherRewardResps =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardRewardCopyWith<CardReward> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardRewardCopyWith<$Res> {
  factory $CardRewardCopyWith(
          CardReward value, $Res Function(CardReward) then) =
      _$CardRewardCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? bankID,
      String? name,
      List<String>? descs,
      String? bankName,
      String? updateDate,
      int? cardStatus,
      String? imagePath,
      String? linkURL,
      List<CardRewardResp>? cardRewardResps,
      List<OtherRewardResp>? otherRewardResps});
}

/// @nodoc
class _$CardRewardCopyWithImpl<$Res> implements $CardRewardCopyWith<$Res> {
  _$CardRewardCopyWithImpl(this._value, this._then);

  final CardReward _value;
  // ignore: unused_field
  final $Res Function(CardReward) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? bankID = freezed,
    Object? name = freezed,
    Object? descs = freezed,
    Object? bankName = freezed,
    Object? updateDate = freezed,
    Object? cardStatus = freezed,
    Object? imagePath = freezed,
    Object? linkURL = freezed,
    Object? cardRewardResps = freezed,
    Object? otherRewardResps = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bankID: bankID == freezed
          ? _value.bankID
          : bankID // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      descs: descs == freezed
          ? _value.descs
          : descs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      updateDate: updateDate == freezed
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cardStatus: cardStatus == freezed
          ? _value.cardStatus
          : cardStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      linkURL: linkURL == freezed
          ? _value.linkURL
          : linkURL // ignore: cast_nullable_to_non_nullable
              as String?,
      cardRewardResps: cardRewardResps == freezed
          ? _value.cardRewardResps
          : cardRewardResps // ignore: cast_nullable_to_non_nullable
              as List<CardRewardResp>?,
      otherRewardResps: otherRewardResps == freezed
          ? _value.otherRewardResps
          : otherRewardResps // ignore: cast_nullable_to_non_nullable
              as List<OtherRewardResp>?,
    ));
  }
}

/// @nodoc
abstract class _$CardRewardCopyWith<$Res> implements $CardRewardCopyWith<$Res> {
  factory _$CardRewardCopyWith(
          _CardReward value, $Res Function(_CardReward) then) =
      __$CardRewardCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? bankID,
      String? name,
      List<String>? descs,
      String? bankName,
      String? updateDate,
      int? cardStatus,
      String? imagePath,
      String? linkURL,
      List<CardRewardResp>? cardRewardResps,
      List<OtherRewardResp>? otherRewardResps});
}

/// @nodoc
class __$CardRewardCopyWithImpl<$Res> extends _$CardRewardCopyWithImpl<$Res>
    implements _$CardRewardCopyWith<$Res> {
  __$CardRewardCopyWithImpl(
      _CardReward _value, $Res Function(_CardReward) _then)
      : super(_value, (v) => _then(v as _CardReward));

  @override
  _CardReward get _value => super._value as _CardReward;

  @override
  $Res call({
    Object? id = freezed,
    Object? bankID = freezed,
    Object? name = freezed,
    Object? descs = freezed,
    Object? bankName = freezed,
    Object? updateDate = freezed,
    Object? cardStatus = freezed,
    Object? imagePath = freezed,
    Object? linkURL = freezed,
    Object? cardRewardResps = freezed,
    Object? otherRewardResps = freezed,
  }) {
    return _then(_CardReward(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      bankID: bankID == freezed
          ? _value.bankID
          : bankID // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      descs: descs == freezed
          ? _value.descs
          : descs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      bankName: bankName == freezed
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String?,
      updateDate: updateDate == freezed
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as String?,
      cardStatus: cardStatus == freezed
          ? _value.cardStatus
          : cardStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      imagePath: imagePath == freezed
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      linkURL: linkURL == freezed
          ? _value.linkURL
          : linkURL // ignore: cast_nullable_to_non_nullable
              as String?,
      cardRewardResps: cardRewardResps == freezed
          ? _value.cardRewardResps
          : cardRewardResps // ignore: cast_nullable_to_non_nullable
              as List<CardRewardResp>?,
      otherRewardResps: otherRewardResps == freezed
          ? _value.otherRewardResps
          : otherRewardResps // ignore: cast_nullable_to_non_nullable
              as List<OtherRewardResp>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardReward implements _CardReward {
  const _$_CardReward(
      {this.id,
      this.bankID,
      this.name,
      this.descs,
      this.bankName,
      this.updateDate,
      this.cardStatus,
      this.imagePath,
      this.linkURL,
      this.cardRewardResps,
      this.otherRewardResps});

  factory _$_CardReward.fromJson(Map<String, dynamic> json) =>
      _$$_CardRewardFromJson(json);

  @override
  final String? id;
  @override
  final String? bankID;
  @override
  final String? name;
  @override
  final List<String>? descs;
  @override
  final String? bankName;
  @override
  final String? updateDate;
  @override
  final int? cardStatus;
  @override
  final String? imagePath;
  @override
  final String? linkURL;
  @override
  final List<CardRewardResp>? cardRewardResps;
  @override
  final List<OtherRewardResp>? otherRewardResps;

  @override
  String toString() {
    return 'CardReward(id: $id, bankID: $bankID, name: $name, descs: $descs, bankName: $bankName, updateDate: $updateDate, cardStatus: $cardStatus, imagePath: $imagePath, linkURL: $linkURL, cardRewardResps: $cardRewardResps, otherRewardResps: $otherRewardResps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CardReward &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.bankID, bankID) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.descs, descs) &&
            const DeepCollectionEquality().equals(other.bankName, bankName) &&
            const DeepCollectionEquality()
                .equals(other.updateDate, updateDate) &&
            const DeepCollectionEquality()
                .equals(other.cardStatus, cardStatus) &&
            const DeepCollectionEquality().equals(other.imagePath, imagePath) &&
            const DeepCollectionEquality().equals(other.linkURL, linkURL) &&
            const DeepCollectionEquality()
                .equals(other.cardRewardResps, cardRewardResps) &&
            const DeepCollectionEquality()
                .equals(other.otherRewardResps, otherRewardResps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(bankID),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(descs),
      const DeepCollectionEquality().hash(bankName),
      const DeepCollectionEquality().hash(updateDate),
      const DeepCollectionEquality().hash(cardStatus),
      const DeepCollectionEquality().hash(imagePath),
      const DeepCollectionEquality().hash(linkURL),
      const DeepCollectionEquality().hash(cardRewardResps),
      const DeepCollectionEquality().hash(otherRewardResps));

  @JsonKey(ignore: true)
  @override
  _$CardRewardCopyWith<_CardReward> get copyWith =>
      __$CardRewardCopyWithImpl<_CardReward>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardRewardToJson(this);
  }
}

abstract class _CardReward implements CardReward {
  const factory _CardReward(
      {String? id,
      String? bankID,
      String? name,
      List<String>? descs,
      String? bankName,
      String? updateDate,
      int? cardStatus,
      String? imagePath,
      String? linkURL,
      List<CardRewardResp>? cardRewardResps,
      List<OtherRewardResp>? otherRewardResps}) = _$_CardReward;

  factory _CardReward.fromJson(Map<String, dynamic> json) =
      _$_CardReward.fromJson;

  @override
  String? get id;
  @override
  String? get bankID;
  @override
  String? get name;
  @override
  List<String>? get descs;
  @override
  String? get bankName;
  @override
  String? get updateDate;
  @override
  int? get cardStatus;
  @override
  String? get imagePath;
  @override
  String? get linkURL;
  @override
  List<CardRewardResp>? get cardRewardResps;
  @override
  List<OtherRewardResp>? get otherRewardResps;
  @override
  @JsonKey(ignore: true)
  _$CardRewardCopyWith<_CardReward> get copyWith =>
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
      int? cashCalculateType,
      double? totalBonus,
      String? title,
      String? returnBonusTitle,
      String? cashReturnTitlePrefix,
      String? cashReturnTitleSuffix}) {
    return _CashFeedbackBonus(
      cashFeedbackBonusType: cashFeedbackBonusType,
      cashCalculateType: cashCalculateType,
      totalBonus: totalBonus,
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
  int? get cashCalculateType => throw _privateConstructorUsedError;
  double? get totalBonus => throw _privateConstructorUsedError;
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
      int? cashCalculateType,
      double? totalBonus,
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
    Object? cashCalculateType = freezed,
    Object? totalBonus = freezed,
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
      cashCalculateType: cashCalculateType == freezed
          ? _value.cashCalculateType
          : cashCalculateType // ignore: cast_nullable_to_non_nullable
              as int?,
      totalBonus: totalBonus == freezed
          ? _value.totalBonus
          : totalBonus // ignore: cast_nullable_to_non_nullable
              as double?,
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
      int? cashCalculateType,
      double? totalBonus,
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
    Object? cashCalculateType = freezed,
    Object? totalBonus = freezed,
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
      cashCalculateType: cashCalculateType == freezed
          ? _value.cashCalculateType
          : cashCalculateType // ignore: cast_nullable_to_non_nullable
              as int?,
      totalBonus: totalBonus == freezed
          ? _value.totalBonus
          : totalBonus // ignore: cast_nullable_to_non_nullable
              as double?,
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
      this.cashCalculateType,
      this.totalBonus,
      this.title,
      this.returnBonusTitle,
      this.cashReturnTitlePrefix,
      this.cashReturnTitleSuffix});

  factory _$_CashFeedbackBonus.fromJson(Map<String, dynamic> json) =>
      _$$_CashFeedbackBonusFromJson(json);

  @override
  final int? cashFeedbackBonusType;
  @override
  final int? cashCalculateType;
  @override
  final double? totalBonus;
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
    return 'CashFeedbackBonus(cashFeedbackBonusType: $cashFeedbackBonusType, cashCalculateType: $cashCalculateType, totalBonus: $totalBonus, title: $title, returnBonusTitle: $returnBonusTitle, cashReturnTitlePrefix: $cashReturnTitlePrefix, cashReturnTitleSuffix: $cashReturnTitleSuffix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CashFeedbackBonus &&
            const DeepCollectionEquality()
                .equals(other.cashFeedbackBonusType, cashFeedbackBonusType) &&
            const DeepCollectionEquality()
                .equals(other.cashCalculateType, cashCalculateType) &&
            const DeepCollectionEquality()
                .equals(other.totalBonus, totalBonus) &&
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
      const DeepCollectionEquality().hash(cashCalculateType),
      const DeepCollectionEquality().hash(totalBonus),
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
      int? cashCalculateType,
      double? totalBonus,
      String? title,
      String? returnBonusTitle,
      String? cashReturnTitlePrefix,
      String? cashReturnTitleSuffix}) = _$_CashFeedbackBonus;

  factory _CashFeedbackBonus.fromJson(Map<String, dynamic> json) =
      _$_CashFeedbackBonus.fromJson;

  @override
  int? get cashFeedbackBonusType;
  @override
  int? get cashCalculateType;
  @override
  double? get totalBonus;
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
      int? pointCalculateType,
      String? title,
      String? returnBonusTitle,
      String? pointReturnTitlePrefix,
      String? pointReturnTitleSuffix}) {
    return _PoingFeedbackBonus(
      totalBonus: totalBonus,
      pointbackType: pointbackType,
      pointCalculateType: pointCalculateType,
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
  int? get pointCalculateType => throw _privateConstructorUsedError;
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
      int? pointCalculateType,
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
    Object? pointCalculateType = freezed,
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
      pointCalculateType: pointCalculateType == freezed
          ? _value.pointCalculateType
          : pointCalculateType // ignore: cast_nullable_to_non_nullable
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
      int? pointCalculateType,
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
    Object? pointCalculateType = freezed,
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
      pointCalculateType: pointCalculateType == freezed
          ? _value.pointCalculateType
          : pointCalculateType // ignore: cast_nullable_to_non_nullable
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
      this.pointCalculateType,
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
  final int? pointCalculateType;
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
    return 'PointFeedbackBonus(totalBonus: $totalBonus, pointbackType: $pointbackType, pointCalculateType: $pointCalculateType, title: $title, returnBonusTitle: $returnBonusTitle, pointReturnTitlePrefix: $pointReturnTitlePrefix, pointReturnTitleSuffix: $pointReturnTitleSuffix)';
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
            const DeepCollectionEquality()
                .equals(other.pointCalculateType, pointCalculateType) &&
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
      const DeepCollectionEquality().hash(pointCalculateType),
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
      int? pointCalculateType,
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
  int? get pointCalculateType;
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

CardRewardResp _$CardRewardRespFromJson(Map<String, dynamic> json) {
  return _CardRewardResp.fromJson(json);
}

/// @nodoc
class _$CardRewardRespTearOff {
  const _$CardRewardRespTearOff();

  _CardRewardResp call(
      {String? id,
      String? cardID,
      String? title,
      List<String>? descs,
      String? startDate,
      String? endDate,
      int? rewardType,
      FeedbackBonus? feedbackBonus,
      List<int>? cardRewardLimitTypes,
      List<ConstraintPassLogic>? constraintPassLogics,
      List<ChannelResp>? channelResps}) {
    return _CardRewardResp(
      id: id,
      cardID: cardID,
      title: title,
      descs: descs,
      startDate: startDate,
      endDate: endDate,
      rewardType: rewardType,
      feedbackBonus: feedbackBonus,
      cardRewardLimitTypes: cardRewardLimitTypes,
      constraintPassLogics: constraintPassLogics,
      channelResps: channelResps,
    );
  }

  CardRewardResp fromJson(Map<String, Object?> json) {
    return CardRewardResp.fromJson(json);
  }
}

/// @nodoc
const $CardRewardResp = _$CardRewardRespTearOff();

/// @nodoc
mixin _$CardRewardResp {
  String? get id => throw _privateConstructorUsedError;
  String? get cardID => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  List<String>? get descs => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  int? get rewardType => throw _privateConstructorUsedError;
  FeedbackBonus? get feedbackBonus => throw _privateConstructorUsedError;
  List<int>? get cardRewardLimitTypes => throw _privateConstructorUsedError;
  List<ConstraintPassLogic>? get constraintPassLogics =>
      throw _privateConstructorUsedError;
  List<ChannelResp>? get channelResps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CardRewardRespCopyWith<CardRewardResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardRewardRespCopyWith<$Res> {
  factory $CardRewardRespCopyWith(
          CardRewardResp value, $Res Function(CardRewardResp) then) =
      _$CardRewardRespCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? cardID,
      String? title,
      List<String>? descs,
      String? startDate,
      String? endDate,
      int? rewardType,
      FeedbackBonus? feedbackBonus,
      List<int>? cardRewardLimitTypes,
      List<ConstraintPassLogic>? constraintPassLogics,
      List<ChannelResp>? channelResps});

  $FeedbackBonusCopyWith<$Res>? get feedbackBonus;
}

/// @nodoc
class _$CardRewardRespCopyWithImpl<$Res>
    implements $CardRewardRespCopyWith<$Res> {
  _$CardRewardRespCopyWithImpl(this._value, this._then);

  final CardRewardResp _value;
  // ignore: unused_field
  final $Res Function(CardRewardResp) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? cardID = freezed,
    Object? title = freezed,
    Object? descs = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? rewardType = freezed,
    Object? feedbackBonus = freezed,
    Object? cardRewardLimitTypes = freezed,
    Object? constraintPassLogics = freezed,
    Object? channelResps = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      cardID: cardID == freezed
          ? _value.cardID
          : cardID // ignore: cast_nullable_to_non_nullable
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
      rewardType: rewardType == freezed
          ? _value.rewardType
          : rewardType // ignore: cast_nullable_to_non_nullable
              as int?,
      feedbackBonus: feedbackBonus == freezed
          ? _value.feedbackBonus
          : feedbackBonus // ignore: cast_nullable_to_non_nullable
              as FeedbackBonus?,
      cardRewardLimitTypes: cardRewardLimitTypes == freezed
          ? _value.cardRewardLimitTypes
          : cardRewardLimitTypes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      constraintPassLogics: constraintPassLogics == freezed
          ? _value.constraintPassLogics
          : constraintPassLogics // ignore: cast_nullable_to_non_nullable
              as List<ConstraintPassLogic>?,
      channelResps: channelResps == freezed
          ? _value.channelResps
          : channelResps // ignore: cast_nullable_to_non_nullable
              as List<ChannelResp>?,
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
}

/// @nodoc
abstract class _$CardRewardRespCopyWith<$Res>
    implements $CardRewardRespCopyWith<$Res> {
  factory _$CardRewardRespCopyWith(
          _CardRewardResp value, $Res Function(_CardRewardResp) then) =
      __$CardRewardRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? cardID,
      String? title,
      List<String>? descs,
      String? startDate,
      String? endDate,
      int? rewardType,
      FeedbackBonus? feedbackBonus,
      List<int>? cardRewardLimitTypes,
      List<ConstraintPassLogic>? constraintPassLogics,
      List<ChannelResp>? channelResps});

  @override
  $FeedbackBonusCopyWith<$Res>? get feedbackBonus;
}

/// @nodoc
class __$CardRewardRespCopyWithImpl<$Res>
    extends _$CardRewardRespCopyWithImpl<$Res>
    implements _$CardRewardRespCopyWith<$Res> {
  __$CardRewardRespCopyWithImpl(
      _CardRewardResp _value, $Res Function(_CardRewardResp) _then)
      : super(_value, (v) => _then(v as _CardRewardResp));

  @override
  _CardRewardResp get _value => super._value as _CardRewardResp;

  @override
  $Res call({
    Object? id = freezed,
    Object? cardID = freezed,
    Object? title = freezed,
    Object? descs = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? rewardType = freezed,
    Object? feedbackBonus = freezed,
    Object? cardRewardLimitTypes = freezed,
    Object? constraintPassLogics = freezed,
    Object? channelResps = freezed,
  }) {
    return _then(_CardRewardResp(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      cardID: cardID == freezed
          ? _value.cardID
          : cardID // ignore: cast_nullable_to_non_nullable
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
      rewardType: rewardType == freezed
          ? _value.rewardType
          : rewardType // ignore: cast_nullable_to_non_nullable
              as int?,
      feedbackBonus: feedbackBonus == freezed
          ? _value.feedbackBonus
          : feedbackBonus // ignore: cast_nullable_to_non_nullable
              as FeedbackBonus?,
      cardRewardLimitTypes: cardRewardLimitTypes == freezed
          ? _value.cardRewardLimitTypes
          : cardRewardLimitTypes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      constraintPassLogics: constraintPassLogics == freezed
          ? _value.constraintPassLogics
          : constraintPassLogics // ignore: cast_nullable_to_non_nullable
              as List<ConstraintPassLogic>?,
      channelResps: channelResps == freezed
          ? _value.channelResps
          : channelResps // ignore: cast_nullable_to_non_nullable
              as List<ChannelResp>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CardRewardResp implements _CardRewardResp {
  const _$_CardRewardResp(
      {this.id,
      this.cardID,
      this.title,
      this.descs,
      this.startDate,
      this.endDate,
      this.rewardType,
      this.feedbackBonus,
      this.cardRewardLimitTypes,
      this.constraintPassLogics,
      this.channelResps});

  factory _$_CardRewardResp.fromJson(Map<String, dynamic> json) =>
      _$$_CardRewardRespFromJson(json);

  @override
  final String? id;
  @override
  final String? cardID;
  @override
  final String? title;
  @override
  final List<String>? descs;
  @override
  final String? startDate;
  @override
  final String? endDate;
  @override
  final int? rewardType;
  @override
  final FeedbackBonus? feedbackBonus;
  @override
  final List<int>? cardRewardLimitTypes;
  @override
  final List<ConstraintPassLogic>? constraintPassLogics;
  @override
  final List<ChannelResp>? channelResps;

  @override
  String toString() {
    return 'CardRewardResp(id: $id, cardID: $cardID, title: $title, descs: $descs, startDate: $startDate, endDate: $endDate, rewardType: $rewardType, feedbackBonus: $feedbackBonus, cardRewardLimitTypes: $cardRewardLimitTypes, constraintPassLogics: $constraintPassLogics, channelResps: $channelResps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CardRewardResp &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.cardID, cardID) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.descs, descs) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality()
                .equals(other.rewardType, rewardType) &&
            const DeepCollectionEquality()
                .equals(other.feedbackBonus, feedbackBonus) &&
            const DeepCollectionEquality()
                .equals(other.cardRewardLimitTypes, cardRewardLimitTypes) &&
            const DeepCollectionEquality()
                .equals(other.constraintPassLogics, constraintPassLogics) &&
            const DeepCollectionEquality()
                .equals(other.channelResps, channelResps));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(cardID),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(descs),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(rewardType),
      const DeepCollectionEquality().hash(feedbackBonus),
      const DeepCollectionEquality().hash(cardRewardLimitTypes),
      const DeepCollectionEquality().hash(constraintPassLogics),
      const DeepCollectionEquality().hash(channelResps));

  @JsonKey(ignore: true)
  @override
  _$CardRewardRespCopyWith<_CardRewardResp> get copyWith =>
      __$CardRewardRespCopyWithImpl<_CardRewardResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CardRewardRespToJson(this);
  }
}

abstract class _CardRewardResp implements CardRewardResp {
  const factory _CardRewardResp(
      {String? id,
      String? cardID,
      String? title,
      List<String>? descs,
      String? startDate,
      String? endDate,
      int? rewardType,
      FeedbackBonus? feedbackBonus,
      List<int>? cardRewardLimitTypes,
      List<ConstraintPassLogic>? constraintPassLogics,
      List<ChannelResp>? channelResps}) = _$_CardRewardResp;

  factory _CardRewardResp.fromJson(Map<String, dynamic> json) =
      _$_CardRewardResp.fromJson;

  @override
  String? get id;
  @override
  String? get cardID;
  @override
  String? get title;
  @override
  List<String>? get descs;
  @override
  String? get startDate;
  @override
  String? get endDate;
  @override
  int? get rewardType;
  @override
  FeedbackBonus? get feedbackBonus;
  @override
  List<int>? get cardRewardLimitTypes;
  @override
  List<ConstraintPassLogic>? get constraintPassLogics;
  @override
  List<ChannelResp>? get channelResps;
  @override
  @JsonKey(ignore: true)
  _$CardRewardRespCopyWith<_CardRewardResp> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelResp _$ChannelRespFromJson(Map<String, dynamic> json) {
  return _ChannelResp.fromJson(json);
}

/// @nodoc
class _$ChannelRespTearOff {
  const _$ChannelRespTearOff();

  _ChannelResp call(
      {int? channelType,
      List<Task>? tasks,
      List<Mobilepay>? mobilepays,
      List<Ecommerce>? ecommerces,
      List<Supermarket>? supermarkets,
      List<Onlinegame>? onlinegames,
      List<Streaming>? streamings,
      List<Food>? foods,
      List<Transportation>? transportations,
      List<Travel>? travels,
      List<Delivery>? deliveries,
      List<Insurance>? insurances,
      List<Mall>? malls,
      List<Sport>? sports,
      List<Conveniencestore>? conveniencestores,
      List<Appstore>? appstores,
      List<Hotel>? hotels,
      List<Amusement>? amusements,
      List<Cinema>? cinemas,
      List<Publicutility>? publicutilities}) {
    return _ChannelResp(
      channelType: channelType,
      tasks: tasks,
      mobilepays: mobilepays,
      ecommerces: ecommerces,
      supermarkets: supermarkets,
      onlinegames: onlinegames,
      streamings: streamings,
      foods: foods,
      transportations: transportations,
      travels: travels,
      deliveries: deliveries,
      insurances: insurances,
      malls: malls,
      sports: sports,
      conveniencestores: conveniencestores,
      appstores: appstores,
      hotels: hotels,
      amusements: amusements,
      cinemas: cinemas,
      publicutilities: publicutilities,
    );
  }

  ChannelResp fromJson(Map<String, Object?> json) {
    return ChannelResp.fromJson(json);
  }
}

/// @nodoc
const $ChannelResp = _$ChannelRespTearOff();

/// @nodoc
mixin _$ChannelResp {
  int? get channelType => throw _privateConstructorUsedError;
  List<Task>? get tasks => throw _privateConstructorUsedError;
  List<Mobilepay>? get mobilepays => throw _privateConstructorUsedError;
  List<Ecommerce>? get ecommerces => throw _privateConstructorUsedError;
  List<Supermarket>? get supermarkets => throw _privateConstructorUsedError;
  List<Onlinegame>? get onlinegames => throw _privateConstructorUsedError;
  List<Streaming>? get streamings => throw _privateConstructorUsedError;
  List<Food>? get foods => throw _privateConstructorUsedError;
  List<Transportation>? get transportations =>
      throw _privateConstructorUsedError;
  List<Travel>? get travels => throw _privateConstructorUsedError;
  List<Delivery>? get deliveries => throw _privateConstructorUsedError;
  List<Insurance>? get insurances => throw _privateConstructorUsedError;
  List<Mall>? get malls => throw _privateConstructorUsedError;
  List<Sport>? get sports => throw _privateConstructorUsedError;
  List<Conveniencestore>? get conveniencestores =>
      throw _privateConstructorUsedError;
  List<Appstore>? get appstores => throw _privateConstructorUsedError;
  List<Hotel>? get hotels => throw _privateConstructorUsedError;
  List<Amusement>? get amusements => throw _privateConstructorUsedError;
  List<Cinema>? get cinemas => throw _privateConstructorUsedError;
  List<Publicutility>? get publicutilities =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelRespCopyWith<ChannelResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelRespCopyWith<$Res> {
  factory $ChannelRespCopyWith(
          ChannelResp value, $Res Function(ChannelResp) then) =
      _$ChannelRespCopyWithImpl<$Res>;
  $Res call(
      {int? channelType,
      List<Task>? tasks,
      List<Mobilepay>? mobilepays,
      List<Ecommerce>? ecommerces,
      List<Supermarket>? supermarkets,
      List<Onlinegame>? onlinegames,
      List<Streaming>? streamings,
      List<Food>? foods,
      List<Transportation>? transportations,
      List<Travel>? travels,
      List<Delivery>? deliveries,
      List<Insurance>? insurances,
      List<Mall>? malls,
      List<Sport>? sports,
      List<Conveniencestore>? conveniencestores,
      List<Appstore>? appstores,
      List<Hotel>? hotels,
      List<Amusement>? amusements,
      List<Cinema>? cinemas,
      List<Publicutility>? publicutilities});
}

/// @nodoc
class _$ChannelRespCopyWithImpl<$Res> implements $ChannelRespCopyWith<$Res> {
  _$ChannelRespCopyWithImpl(this._value, this._then);

  final ChannelResp _value;
  // ignore: unused_field
  final $Res Function(ChannelResp) _then;

  @override
  $Res call({
    Object? channelType = freezed,
    Object? tasks = freezed,
    Object? mobilepays = freezed,
    Object? ecommerces = freezed,
    Object? supermarkets = freezed,
    Object? onlinegames = freezed,
    Object? streamings = freezed,
    Object? foods = freezed,
    Object? transportations = freezed,
    Object? travels = freezed,
    Object? deliveries = freezed,
    Object? insurances = freezed,
    Object? malls = freezed,
    Object? sports = freezed,
    Object? conveniencestores = freezed,
    Object? appstores = freezed,
    Object? hotels = freezed,
    Object? amusements = freezed,
    Object? cinemas = freezed,
    Object? publicutilities = freezed,
  }) {
    return _then(_value.copyWith(
      channelType: channelType == freezed
          ? _value.channelType
          : channelType // ignore: cast_nullable_to_non_nullable
              as int?,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>?,
      mobilepays: mobilepays == freezed
          ? _value.mobilepays
          : mobilepays // ignore: cast_nullable_to_non_nullable
              as List<Mobilepay>?,
      ecommerces: ecommerces == freezed
          ? _value.ecommerces
          : ecommerces // ignore: cast_nullable_to_non_nullable
              as List<Ecommerce>?,
      supermarkets: supermarkets == freezed
          ? _value.supermarkets
          : supermarkets // ignore: cast_nullable_to_non_nullable
              as List<Supermarket>?,
      onlinegames: onlinegames == freezed
          ? _value.onlinegames
          : onlinegames // ignore: cast_nullable_to_non_nullable
              as List<Onlinegame>?,
      streamings: streamings == freezed
          ? _value.streamings
          : streamings // ignore: cast_nullable_to_non_nullable
              as List<Streaming>?,
      foods: foods == freezed
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>?,
      transportations: transportations == freezed
          ? _value.transportations
          : transportations // ignore: cast_nullable_to_non_nullable
              as List<Transportation>?,
      travels: travels == freezed
          ? _value.travels
          : travels // ignore: cast_nullable_to_non_nullable
              as List<Travel>?,
      deliveries: deliveries == freezed
          ? _value.deliveries
          : deliveries // ignore: cast_nullable_to_non_nullable
              as List<Delivery>?,
      insurances: insurances == freezed
          ? _value.insurances
          : insurances // ignore: cast_nullable_to_non_nullable
              as List<Insurance>?,
      malls: malls == freezed
          ? _value.malls
          : malls // ignore: cast_nullable_to_non_nullable
              as List<Mall>?,
      sports: sports == freezed
          ? _value.sports
          : sports // ignore: cast_nullable_to_non_nullable
              as List<Sport>?,
      conveniencestores: conveniencestores == freezed
          ? _value.conveniencestores
          : conveniencestores // ignore: cast_nullable_to_non_nullable
              as List<Conveniencestore>?,
      appstores: appstores == freezed
          ? _value.appstores
          : appstores // ignore: cast_nullable_to_non_nullable
              as List<Appstore>?,
      hotels: hotels == freezed
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<Hotel>?,
      amusements: amusements == freezed
          ? _value.amusements
          : amusements // ignore: cast_nullable_to_non_nullable
              as List<Amusement>?,
      cinemas: cinemas == freezed
          ? _value.cinemas
          : cinemas // ignore: cast_nullable_to_non_nullable
              as List<Cinema>?,
      publicutilities: publicutilities == freezed
          ? _value.publicutilities
          : publicutilities // ignore: cast_nullable_to_non_nullable
              as List<Publicutility>?,
    ));
  }
}

/// @nodoc
abstract class _$ChannelRespCopyWith<$Res>
    implements $ChannelRespCopyWith<$Res> {
  factory _$ChannelRespCopyWith(
          _ChannelResp value, $Res Function(_ChannelResp) then) =
      __$ChannelRespCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? channelType,
      List<Task>? tasks,
      List<Mobilepay>? mobilepays,
      List<Ecommerce>? ecommerces,
      List<Supermarket>? supermarkets,
      List<Onlinegame>? onlinegames,
      List<Streaming>? streamings,
      List<Food>? foods,
      List<Transportation>? transportations,
      List<Travel>? travels,
      List<Delivery>? deliveries,
      List<Insurance>? insurances,
      List<Mall>? malls,
      List<Sport>? sports,
      List<Conveniencestore>? conveniencestores,
      List<Appstore>? appstores,
      List<Hotel>? hotels,
      List<Amusement>? amusements,
      List<Cinema>? cinemas,
      List<Publicutility>? publicutilities});
}

/// @nodoc
class __$ChannelRespCopyWithImpl<$Res> extends _$ChannelRespCopyWithImpl<$Res>
    implements _$ChannelRespCopyWith<$Res> {
  __$ChannelRespCopyWithImpl(
      _ChannelResp _value, $Res Function(_ChannelResp) _then)
      : super(_value, (v) => _then(v as _ChannelResp));

  @override
  _ChannelResp get _value => super._value as _ChannelResp;

  @override
  $Res call({
    Object? channelType = freezed,
    Object? tasks = freezed,
    Object? mobilepays = freezed,
    Object? ecommerces = freezed,
    Object? supermarkets = freezed,
    Object? onlinegames = freezed,
    Object? streamings = freezed,
    Object? foods = freezed,
    Object? transportations = freezed,
    Object? travels = freezed,
    Object? deliveries = freezed,
    Object? insurances = freezed,
    Object? malls = freezed,
    Object? sports = freezed,
    Object? conveniencestores = freezed,
    Object? appstores = freezed,
    Object? hotels = freezed,
    Object? amusements = freezed,
    Object? cinemas = freezed,
    Object? publicutilities = freezed,
  }) {
    return _then(_ChannelResp(
      channelType: channelType == freezed
          ? _value.channelType
          : channelType // ignore: cast_nullable_to_non_nullable
              as int?,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>?,
      mobilepays: mobilepays == freezed
          ? _value.mobilepays
          : mobilepays // ignore: cast_nullable_to_non_nullable
              as List<Mobilepay>?,
      ecommerces: ecommerces == freezed
          ? _value.ecommerces
          : ecommerces // ignore: cast_nullable_to_non_nullable
              as List<Ecommerce>?,
      supermarkets: supermarkets == freezed
          ? _value.supermarkets
          : supermarkets // ignore: cast_nullable_to_non_nullable
              as List<Supermarket>?,
      onlinegames: onlinegames == freezed
          ? _value.onlinegames
          : onlinegames // ignore: cast_nullable_to_non_nullable
              as List<Onlinegame>?,
      streamings: streamings == freezed
          ? _value.streamings
          : streamings // ignore: cast_nullable_to_non_nullable
              as List<Streaming>?,
      foods: foods == freezed
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<Food>?,
      transportations: transportations == freezed
          ? _value.transportations
          : transportations // ignore: cast_nullable_to_non_nullable
              as List<Transportation>?,
      travels: travels == freezed
          ? _value.travels
          : travels // ignore: cast_nullable_to_non_nullable
              as List<Travel>?,
      deliveries: deliveries == freezed
          ? _value.deliveries
          : deliveries // ignore: cast_nullable_to_non_nullable
              as List<Delivery>?,
      insurances: insurances == freezed
          ? _value.insurances
          : insurances // ignore: cast_nullable_to_non_nullable
              as List<Insurance>?,
      malls: malls == freezed
          ? _value.malls
          : malls // ignore: cast_nullable_to_non_nullable
              as List<Mall>?,
      sports: sports == freezed
          ? _value.sports
          : sports // ignore: cast_nullable_to_non_nullable
              as List<Sport>?,
      conveniencestores: conveniencestores == freezed
          ? _value.conveniencestores
          : conveniencestores // ignore: cast_nullable_to_non_nullable
              as List<Conveniencestore>?,
      appstores: appstores == freezed
          ? _value.appstores
          : appstores // ignore: cast_nullable_to_non_nullable
              as List<Appstore>?,
      hotels: hotels == freezed
          ? _value.hotels
          : hotels // ignore: cast_nullable_to_non_nullable
              as List<Hotel>?,
      amusements: amusements == freezed
          ? _value.amusements
          : amusements // ignore: cast_nullable_to_non_nullable
              as List<Amusement>?,
      cinemas: cinemas == freezed
          ? _value.cinemas
          : cinemas // ignore: cast_nullable_to_non_nullable
              as List<Cinema>?,
      publicutilities: publicutilities == freezed
          ? _value.publicutilities
          : publicutilities // ignore: cast_nullable_to_non_nullable
              as List<Publicutility>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelResp implements _ChannelResp {
  const _$_ChannelResp(
      {this.channelType,
      this.tasks,
      this.mobilepays,
      this.ecommerces,
      this.supermarkets,
      this.onlinegames,
      this.streamings,
      this.foods,
      this.transportations,
      this.travels,
      this.deliveries,
      this.insurances,
      this.malls,
      this.sports,
      this.conveniencestores,
      this.appstores,
      this.hotels,
      this.amusements,
      this.cinemas,
      this.publicutilities});

  factory _$_ChannelResp.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelRespFromJson(json);

  @override
  final int? channelType;
  @override
  final List<Task>? tasks;
  @override
  final List<Mobilepay>? mobilepays;
  @override
  final List<Ecommerce>? ecommerces;
  @override
  final List<Supermarket>? supermarkets;
  @override
  final List<Onlinegame>? onlinegames;
  @override
  final List<Streaming>? streamings;
  @override
  final List<Food>? foods;
  @override
  final List<Transportation>? transportations;
  @override
  final List<Travel>? travels;
  @override
  final List<Delivery>? deliveries;
  @override
  final List<Insurance>? insurances;
  @override
  final List<Mall>? malls;
  @override
  final List<Sport>? sports;
  @override
  final List<Conveniencestore>? conveniencestores;
  @override
  final List<Appstore>? appstores;
  @override
  final List<Hotel>? hotels;
  @override
  final List<Amusement>? amusements;
  @override
  final List<Cinema>? cinemas;
  @override
  final List<Publicutility>? publicutilities;

  @override
  String toString() {
    return 'ChannelResp(channelType: $channelType, tasks: $tasks, mobilepays: $mobilepays, ecommerces: $ecommerces, supermarkets: $supermarkets, onlinegames: $onlinegames, streamings: $streamings, foods: $foods, transportations: $transportations, travels: $travels, deliveries: $deliveries, insurances: $insurances, malls: $malls, sports: $sports, conveniencestores: $conveniencestores, appstores: $appstores, hotels: $hotels, amusements: $amusements, cinemas: $cinemas, publicutilities: $publicutilities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChannelResp &&
            const DeepCollectionEquality()
                .equals(other.channelType, channelType) &&
            const DeepCollectionEquality().equals(other.tasks, tasks) &&
            const DeepCollectionEquality()
                .equals(other.mobilepays, mobilepays) &&
            const DeepCollectionEquality()
                .equals(other.ecommerces, ecommerces) &&
            const DeepCollectionEquality()
                .equals(other.supermarkets, supermarkets) &&
            const DeepCollectionEquality()
                .equals(other.onlinegames, onlinegames) &&
            const DeepCollectionEquality()
                .equals(other.streamings, streamings) &&
            const DeepCollectionEquality().equals(other.foods, foods) &&
            const DeepCollectionEquality()
                .equals(other.transportations, transportations) &&
            const DeepCollectionEquality().equals(other.travels, travels) &&
            const DeepCollectionEquality()
                .equals(other.deliveries, deliveries) &&
            const DeepCollectionEquality()
                .equals(other.insurances, insurances) &&
            const DeepCollectionEquality().equals(other.malls, malls) &&
            const DeepCollectionEquality().equals(other.sports, sports) &&
            const DeepCollectionEquality()
                .equals(other.conveniencestores, conveniencestores) &&
            const DeepCollectionEquality().equals(other.appstores, appstores) &&
            const DeepCollectionEquality().equals(other.hotels, hotels) &&
            const DeepCollectionEquality()
                .equals(other.amusements, amusements) &&
            const DeepCollectionEquality().equals(other.cinemas, cinemas) &&
            const DeepCollectionEquality()
                .equals(other.publicutilities, publicutilities));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(channelType),
        const DeepCollectionEquality().hash(tasks),
        const DeepCollectionEquality().hash(mobilepays),
        const DeepCollectionEquality().hash(ecommerces),
        const DeepCollectionEquality().hash(supermarkets),
        const DeepCollectionEquality().hash(onlinegames),
        const DeepCollectionEquality().hash(streamings),
        const DeepCollectionEquality().hash(foods),
        const DeepCollectionEquality().hash(transportations),
        const DeepCollectionEquality().hash(travels),
        const DeepCollectionEquality().hash(deliveries),
        const DeepCollectionEquality().hash(insurances),
        const DeepCollectionEquality().hash(malls),
        const DeepCollectionEquality().hash(sports),
        const DeepCollectionEquality().hash(conveniencestores),
        const DeepCollectionEquality().hash(appstores),
        const DeepCollectionEquality().hash(hotels),
        const DeepCollectionEquality().hash(amusements),
        const DeepCollectionEquality().hash(cinemas),
        const DeepCollectionEquality().hash(publicutilities)
      ]);

  @JsonKey(ignore: true)
  @override
  _$ChannelRespCopyWith<_ChannelResp> get copyWith =>
      __$ChannelRespCopyWithImpl<_ChannelResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelRespToJson(this);
  }
}

abstract class _ChannelResp implements ChannelResp {
  const factory _ChannelResp(
      {int? channelType,
      List<Task>? tasks,
      List<Mobilepay>? mobilepays,
      List<Ecommerce>? ecommerces,
      List<Supermarket>? supermarkets,
      List<Onlinegame>? onlinegames,
      List<Streaming>? streamings,
      List<Food>? foods,
      List<Transportation>? transportations,
      List<Travel>? travels,
      List<Delivery>? deliveries,
      List<Insurance>? insurances,
      List<Mall>? malls,
      List<Sport>? sports,
      List<Conveniencestore>? conveniencestores,
      List<Appstore>? appstores,
      List<Hotel>? hotels,
      List<Amusement>? amusements,
      List<Cinema>? cinemas,
      List<Publicutility>? publicutilities}) = _$_ChannelResp;

  factory _ChannelResp.fromJson(Map<String, dynamic> json) =
      _$_ChannelResp.fromJson;

  @override
  int? get channelType;
  @override
  List<Task>? get tasks;
  @override
  List<Mobilepay>? get mobilepays;
  @override
  List<Ecommerce>? get ecommerces;
  @override
  List<Supermarket>? get supermarkets;
  @override
  List<Onlinegame>? get onlinegames;
  @override
  List<Streaming>? get streamings;
  @override
  List<Food>? get foods;
  @override
  List<Transportation>? get transportations;
  @override
  List<Travel>? get travels;
  @override
  List<Delivery>? get deliveries;
  @override
  List<Insurance>? get insurances;
  @override
  List<Mall>? get malls;
  @override
  List<Sport>? get sports;
  @override
  List<Conveniencestore>? get conveniencestores;
  @override
  List<Appstore>? get appstores;
  @override
  List<Hotel>? get hotels;
  @override
  List<Amusement>? get amusements;
  @override
  List<Cinema>? get cinemas;
  @override
  List<Publicutility>? get publicutilities;
  @override
  @JsonKey(ignore: true)
  _$ChannelRespCopyWith<_ChannelResp> get copyWith =>
      throw _privateConstructorUsedError;
}

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
class _$TaskTearOff {
  const _$TaskTearOff();

  _Task call(
      {String? id,
      String? name,
      List<String>? descs,
      String? cardID,
      int? taskType,
      TaskTypeModel? taskTypeModel,
      bool? defaultPass}) {
    return _Task(
      id: id,
      name: name,
      descs: descs,
      cardID: cardID,
      taskType: taskType,
      taskTypeModel: taskTypeModel,
      defaultPass: defaultPass,
    );
  }

  Task fromJson(Map<String, Object?> json) {
    return Task.fromJson(json);
  }
}

/// @nodoc
const $Task = _$TaskTearOff();

/// @nodoc
mixin _$Task {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<String>? get descs => throw _privateConstructorUsedError;
  String? get cardID => throw _privateConstructorUsedError;
  int? get taskType => throw _privateConstructorUsedError;
  TaskTypeModel? get taskTypeModel => throw _privateConstructorUsedError;
  bool? get defaultPass => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? name,
      List<String>? descs,
      String? cardID,
      int? taskType,
      TaskTypeModel? taskTypeModel,
      bool? defaultPass});

  $TaskTypeModelCopyWith<$Res>? get taskTypeModel;
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? descs = freezed,
    Object? cardID = freezed,
    Object? taskType = freezed,
    Object? taskTypeModel = freezed,
    Object? defaultPass = freezed,
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
      cardID: cardID == freezed
          ? _value.cardID
          : cardID // ignore: cast_nullable_to_non_nullable
              as String?,
      taskType: taskType == freezed
          ? _value.taskType
          : taskType // ignore: cast_nullable_to_non_nullable
              as int?,
      taskTypeModel: taskTypeModel == freezed
          ? _value.taskTypeModel
          : taskTypeModel // ignore: cast_nullable_to_non_nullable
              as TaskTypeModel?,
      defaultPass: defaultPass == freezed
          ? _value.defaultPass
          : defaultPass // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $TaskTypeModelCopyWith<$Res>? get taskTypeModel {
    if (_value.taskTypeModel == null) {
      return null;
    }

    return $TaskTypeModelCopyWith<$Res>(_value.taskTypeModel!, (value) {
      return _then(_value.copyWith(taskTypeModel: value));
    });
  }
}

/// @nodoc
abstract class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) then) =
      __$TaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? name,
      List<String>? descs,
      String? cardID,
      int? taskType,
      TaskTypeModel? taskTypeModel,
      bool? defaultPass});

  @override
  $TaskTypeModelCopyWith<$Res>? get taskTypeModel;
}

/// @nodoc
class __$TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(_Task _value, $Res Function(_Task) _then)
      : super(_value, (v) => _then(v as _Task));

  @override
  _Task get _value => super._value as _Task;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? descs = freezed,
    Object? cardID = freezed,
    Object? taskType = freezed,
    Object? taskTypeModel = freezed,
    Object? defaultPass = freezed,
  }) {
    return _then(_Task(
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
      cardID: cardID == freezed
          ? _value.cardID
          : cardID // ignore: cast_nullable_to_non_nullable
              as String?,
      taskType: taskType == freezed
          ? _value.taskType
          : taskType // ignore: cast_nullable_to_non_nullable
              as int?,
      taskTypeModel: taskTypeModel == freezed
          ? _value.taskTypeModel
          : taskTypeModel // ignore: cast_nullable_to_non_nullable
              as TaskTypeModel?,
      defaultPass: defaultPass == freezed
          ? _value.defaultPass
          : defaultPass // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Task implements _Task {
  const _$_Task(
      {this.id,
      this.name,
      this.descs,
      this.cardID,
      this.taskType,
      this.taskTypeModel,
      this.defaultPass});

  factory _$_Task.fromJson(Map<String, dynamic> json) => _$$_TaskFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final List<String>? descs;
  @override
  final String? cardID;
  @override
  final int? taskType;
  @override
  final TaskTypeModel? taskTypeModel;
  @override
  final bool? defaultPass;

  @override
  String toString() {
    return 'Task(id: $id, name: $name, descs: $descs, cardID: $cardID, taskType: $taskType, taskTypeModel: $taskTypeModel, defaultPass: $defaultPass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Task &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.descs, descs) &&
            const DeepCollectionEquality().equals(other.cardID, cardID) &&
            const DeepCollectionEquality().equals(other.taskType, taskType) &&
            const DeepCollectionEquality()
                .equals(other.taskTypeModel, taskTypeModel) &&
            const DeepCollectionEquality()
                .equals(other.defaultPass, defaultPass));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(descs),
      const DeepCollectionEquality().hash(cardID),
      const DeepCollectionEquality().hash(taskType),
      const DeepCollectionEquality().hash(taskTypeModel),
      const DeepCollectionEquality().hash(defaultPass));

  @JsonKey(ignore: true)
  @override
  _$TaskCopyWith<_Task> get copyWith =>
      __$TaskCopyWithImpl<_Task>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskToJson(this);
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {String? id,
      String? name,
      List<String>? descs,
      String? cardID,
      int? taskType,
      TaskTypeModel? taskTypeModel,
      bool? defaultPass}) = _$_Task;

  factory _Task.fromJson(Map<String, dynamic> json) = _$_Task.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  List<String>? get descs;
  @override
  String? get cardID;
  @override
  int? get taskType;
  @override
  TaskTypeModel? get taskTypeModel;
  @override
  bool? get defaultPass;
  @override
  @JsonKey(ignore: true)
  _$TaskCopyWith<_Task> get copyWith => throw _privateConstructorUsedError;
}

TaskTypeModel _$TaskTypeModelFromJson(Map<String, dynamic> json) {
  return _TaskTypeModel.fromJson(json);
}

/// @nodoc
class _$TaskTypeModelTearOff {
  const _$TaskTypeModelTearOff();

  _TaskTypeModel call(
      {WeekDayLimit? weekDayLimit,
      ChannelLabelLimit? channelLabelLimit,
      ChannelLimit? channelLimit}) {
    return _TaskTypeModel(
      weekDayLimit: weekDayLimit,
      channelLabelLimit: channelLabelLimit,
      channelLimit: channelLimit,
    );
  }

  TaskTypeModel fromJson(Map<String, Object?> json) {
    return TaskTypeModel.fromJson(json);
  }
}

/// @nodoc
const $TaskTypeModel = _$TaskTypeModelTearOff();

/// @nodoc
mixin _$TaskTypeModel {
  WeekDayLimit? get weekDayLimit => throw _privateConstructorUsedError;
  ChannelLabelLimit? get channelLabelLimit =>
      throw _privateConstructorUsedError;
  ChannelLimit? get channelLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskTypeModelCopyWith<TaskTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskTypeModelCopyWith<$Res> {
  factory $TaskTypeModelCopyWith(
          TaskTypeModel value, $Res Function(TaskTypeModel) then) =
      _$TaskTypeModelCopyWithImpl<$Res>;
  $Res call(
      {WeekDayLimit? weekDayLimit,
      ChannelLabelLimit? channelLabelLimit,
      ChannelLimit? channelLimit});

  $WeekDayLimitCopyWith<$Res>? get weekDayLimit;
  $ChannelLabelLimitCopyWith<$Res>? get channelLabelLimit;
  $ChannelLimitCopyWith<$Res>? get channelLimit;
}

/// @nodoc
class _$TaskTypeModelCopyWithImpl<$Res>
    implements $TaskTypeModelCopyWith<$Res> {
  _$TaskTypeModelCopyWithImpl(this._value, this._then);

  final TaskTypeModel _value;
  // ignore: unused_field
  final $Res Function(TaskTypeModel) _then;

  @override
  $Res call({
    Object? weekDayLimit = freezed,
    Object? channelLabelLimit = freezed,
    Object? channelLimit = freezed,
  }) {
    return _then(_value.copyWith(
      weekDayLimit: weekDayLimit == freezed
          ? _value.weekDayLimit
          : weekDayLimit // ignore: cast_nullable_to_non_nullable
              as WeekDayLimit?,
      channelLabelLimit: channelLabelLimit == freezed
          ? _value.channelLabelLimit
          : channelLabelLimit // ignore: cast_nullable_to_non_nullable
              as ChannelLabelLimit?,
      channelLimit: channelLimit == freezed
          ? _value.channelLimit
          : channelLimit // ignore: cast_nullable_to_non_nullable
              as ChannelLimit?,
    ));
  }

  @override
  $WeekDayLimitCopyWith<$Res>? get weekDayLimit {
    if (_value.weekDayLimit == null) {
      return null;
    }

    return $WeekDayLimitCopyWith<$Res>(_value.weekDayLimit!, (value) {
      return _then(_value.copyWith(weekDayLimit: value));
    });
  }

  @override
  $ChannelLabelLimitCopyWith<$Res>? get channelLabelLimit {
    if (_value.channelLabelLimit == null) {
      return null;
    }

    return $ChannelLabelLimitCopyWith<$Res>(_value.channelLabelLimit!, (value) {
      return _then(_value.copyWith(channelLabelLimit: value));
    });
  }

  @override
  $ChannelLimitCopyWith<$Res>? get channelLimit {
    if (_value.channelLimit == null) {
      return null;
    }

    return $ChannelLimitCopyWith<$Res>(_value.channelLimit!, (value) {
      return _then(_value.copyWith(channelLimit: value));
    });
  }
}

/// @nodoc
abstract class _$TaskTypeModelCopyWith<$Res>
    implements $TaskTypeModelCopyWith<$Res> {
  factory _$TaskTypeModelCopyWith(
          _TaskTypeModel value, $Res Function(_TaskTypeModel) then) =
      __$TaskTypeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {WeekDayLimit? weekDayLimit,
      ChannelLabelLimit? channelLabelLimit,
      ChannelLimit? channelLimit});

  @override
  $WeekDayLimitCopyWith<$Res>? get weekDayLimit;
  @override
  $ChannelLabelLimitCopyWith<$Res>? get channelLabelLimit;
  @override
  $ChannelLimitCopyWith<$Res>? get channelLimit;
}

/// @nodoc
class __$TaskTypeModelCopyWithImpl<$Res>
    extends _$TaskTypeModelCopyWithImpl<$Res>
    implements _$TaskTypeModelCopyWith<$Res> {
  __$TaskTypeModelCopyWithImpl(
      _TaskTypeModel _value, $Res Function(_TaskTypeModel) _then)
      : super(_value, (v) => _then(v as _TaskTypeModel));

  @override
  _TaskTypeModel get _value => super._value as _TaskTypeModel;

  @override
  $Res call({
    Object? weekDayLimit = freezed,
    Object? channelLabelLimit = freezed,
    Object? channelLimit = freezed,
  }) {
    return _then(_TaskTypeModel(
      weekDayLimit: weekDayLimit == freezed
          ? _value.weekDayLimit
          : weekDayLimit // ignore: cast_nullable_to_non_nullable
              as WeekDayLimit?,
      channelLabelLimit: channelLabelLimit == freezed
          ? _value.channelLabelLimit
          : channelLabelLimit // ignore: cast_nullable_to_non_nullable
              as ChannelLabelLimit?,
      channelLimit: channelLimit == freezed
          ? _value.channelLimit
          : channelLimit // ignore: cast_nullable_to_non_nullable
              as ChannelLimit?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskTypeModel implements _TaskTypeModel {
  const _$_TaskTypeModel(
      {this.weekDayLimit, this.channelLabelLimit, this.channelLimit});

  factory _$_TaskTypeModel.fromJson(Map<String, dynamic> json) =>
      _$$_TaskTypeModelFromJson(json);

  @override
  final WeekDayLimit? weekDayLimit;
  @override
  final ChannelLabelLimit? channelLabelLimit;
  @override
  final ChannelLimit? channelLimit;

  @override
  String toString() {
    return 'TaskTypeModel(weekDayLimit: $weekDayLimit, channelLabelLimit: $channelLabelLimit, channelLimit: $channelLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskTypeModel &&
            const DeepCollectionEquality()
                .equals(other.weekDayLimit, weekDayLimit) &&
            const DeepCollectionEquality()
                .equals(other.channelLabelLimit, channelLabelLimit) &&
            const DeepCollectionEquality()
                .equals(other.channelLimit, channelLimit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(weekDayLimit),
      const DeepCollectionEquality().hash(channelLabelLimit),
      const DeepCollectionEquality().hash(channelLimit));

  @JsonKey(ignore: true)
  @override
  _$TaskTypeModelCopyWith<_TaskTypeModel> get copyWith =>
      __$TaskTypeModelCopyWithImpl<_TaskTypeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskTypeModelToJson(this);
  }
}

abstract class _TaskTypeModel implements TaskTypeModel {
  const factory _TaskTypeModel(
      {WeekDayLimit? weekDayLimit,
      ChannelLabelLimit? channelLabelLimit,
      ChannelLimit? channelLimit}) = _$_TaskTypeModel;

  factory _TaskTypeModel.fromJson(Map<String, dynamic> json) =
      _$_TaskTypeModel.fromJson;

  @override
  WeekDayLimit? get weekDayLimit;
  @override
  ChannelLabelLimit? get channelLabelLimit;
  @override
  ChannelLimit? get channelLimit;
  @override
  @JsonKey(ignore: true)
  _$TaskTypeModelCopyWith<_TaskTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

WeekDayLimit _$WeekDayLimitFromJson(Map<String, dynamic> json) {
  return _WeekDayLimit.fromJson(json);
}

/// @nodoc
class _$WeekDayLimitTearOff {
  const _$WeekDayLimitTearOff();

  _WeekDayLimit call({List<int>? weekDays}) {
    return _WeekDayLimit(
      weekDays: weekDays,
    );
  }

  WeekDayLimit fromJson(Map<String, Object?> json) {
    return WeekDayLimit.fromJson(json);
  }
}

/// @nodoc
const $WeekDayLimit = _$WeekDayLimitTearOff();

/// @nodoc
mixin _$WeekDayLimit {
  List<int>? get weekDays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekDayLimitCopyWith<WeekDayLimit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekDayLimitCopyWith<$Res> {
  factory $WeekDayLimitCopyWith(
          WeekDayLimit value, $Res Function(WeekDayLimit) then) =
      _$WeekDayLimitCopyWithImpl<$Res>;
  $Res call({List<int>? weekDays});
}

/// @nodoc
class _$WeekDayLimitCopyWithImpl<$Res> implements $WeekDayLimitCopyWith<$Res> {
  _$WeekDayLimitCopyWithImpl(this._value, this._then);

  final WeekDayLimit _value;
  // ignore: unused_field
  final $Res Function(WeekDayLimit) _then;

  @override
  $Res call({
    Object? weekDays = freezed,
  }) {
    return _then(_value.copyWith(
      weekDays: weekDays == freezed
          ? _value.weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$WeekDayLimitCopyWith<$Res>
    implements $WeekDayLimitCopyWith<$Res> {
  factory _$WeekDayLimitCopyWith(
          _WeekDayLimit value, $Res Function(_WeekDayLimit) then) =
      __$WeekDayLimitCopyWithImpl<$Res>;
  @override
  $Res call({List<int>? weekDays});
}

/// @nodoc
class __$WeekDayLimitCopyWithImpl<$Res> extends _$WeekDayLimitCopyWithImpl<$Res>
    implements _$WeekDayLimitCopyWith<$Res> {
  __$WeekDayLimitCopyWithImpl(
      _WeekDayLimit _value, $Res Function(_WeekDayLimit) _then)
      : super(_value, (v) => _then(v as _WeekDayLimit));

  @override
  _WeekDayLimit get _value => super._value as _WeekDayLimit;

  @override
  $Res call({
    Object? weekDays = freezed,
  }) {
    return _then(_WeekDayLimit(
      weekDays: weekDays == freezed
          ? _value.weekDays
          : weekDays // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeekDayLimit implements _WeekDayLimit {
  const _$_WeekDayLimit({this.weekDays});

  factory _$_WeekDayLimit.fromJson(Map<String, dynamic> json) =>
      _$$_WeekDayLimitFromJson(json);

  @override
  final List<int>? weekDays;

  @override
  String toString() {
    return 'WeekDayLimit(weekDays: $weekDays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WeekDayLimit &&
            const DeepCollectionEquality().equals(other.weekDays, weekDays));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(weekDays));

  @JsonKey(ignore: true)
  @override
  _$WeekDayLimitCopyWith<_WeekDayLimit> get copyWith =>
      __$WeekDayLimitCopyWithImpl<_WeekDayLimit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeekDayLimitToJson(this);
  }
}

abstract class _WeekDayLimit implements WeekDayLimit {
  const factory _WeekDayLimit({List<int>? weekDays}) = _$_WeekDayLimit;

  factory _WeekDayLimit.fromJson(Map<String, dynamic> json) =
      _$_WeekDayLimit.fromJson;

  @override
  List<int>? get weekDays;
  @override
  @JsonKey(ignore: true)
  _$WeekDayLimitCopyWith<_WeekDayLimit> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelLabelLimit _$ChannelLabelLimitFromJson(Map<String, dynamic> json) {
  return _ChannelLabelLimit.fromJson(json);
}

/// @nodoc
class _$ChannelLabelLimitTearOff {
  const _$ChannelLabelLimitTearOff();

  _ChannelLabelLimit call({List<int>? channelLabels}) {
    return _ChannelLabelLimit(
      channelLabels: channelLabels,
    );
  }

  ChannelLabelLimit fromJson(Map<String, Object?> json) {
    return ChannelLabelLimit.fromJson(json);
  }
}

/// @nodoc
const $ChannelLabelLimit = _$ChannelLabelLimitTearOff();

/// @nodoc
mixin _$ChannelLabelLimit {
  List<int>? get channelLabels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelLabelLimitCopyWith<ChannelLabelLimit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelLabelLimitCopyWith<$Res> {
  factory $ChannelLabelLimitCopyWith(
          ChannelLabelLimit value, $Res Function(ChannelLabelLimit) then) =
      _$ChannelLabelLimitCopyWithImpl<$Res>;
  $Res call({List<int>? channelLabels});
}

/// @nodoc
class _$ChannelLabelLimitCopyWithImpl<$Res>
    implements $ChannelLabelLimitCopyWith<$Res> {
  _$ChannelLabelLimitCopyWithImpl(this._value, this._then);

  final ChannelLabelLimit _value;
  // ignore: unused_field
  final $Res Function(ChannelLabelLimit) _then;

  @override
  $Res call({
    Object? channelLabels = freezed,
  }) {
    return _then(_value.copyWith(
      channelLabels: channelLabels == freezed
          ? _value.channelLabels
          : channelLabels // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$ChannelLabelLimitCopyWith<$Res>
    implements $ChannelLabelLimitCopyWith<$Res> {
  factory _$ChannelLabelLimitCopyWith(
          _ChannelLabelLimit value, $Res Function(_ChannelLabelLimit) then) =
      __$ChannelLabelLimitCopyWithImpl<$Res>;
  @override
  $Res call({List<int>? channelLabels});
}

/// @nodoc
class __$ChannelLabelLimitCopyWithImpl<$Res>
    extends _$ChannelLabelLimitCopyWithImpl<$Res>
    implements _$ChannelLabelLimitCopyWith<$Res> {
  __$ChannelLabelLimitCopyWithImpl(
      _ChannelLabelLimit _value, $Res Function(_ChannelLabelLimit) _then)
      : super(_value, (v) => _then(v as _ChannelLabelLimit));

  @override
  _ChannelLabelLimit get _value => super._value as _ChannelLabelLimit;

  @override
  $Res call({
    Object? channelLabels = freezed,
  }) {
    return _then(_ChannelLabelLimit(
      channelLabels: channelLabels == freezed
          ? _value.channelLabels
          : channelLabels // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelLabelLimit implements _ChannelLabelLimit {
  const _$_ChannelLabelLimit({this.channelLabels});

  factory _$_ChannelLabelLimit.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelLabelLimitFromJson(json);

  @override
  final List<int>? channelLabels;

  @override
  String toString() {
    return 'ChannelLabelLimit(channelLabels: $channelLabels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChannelLabelLimit &&
            const DeepCollectionEquality()
                .equals(other.channelLabels, channelLabels));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(channelLabels));

  @JsonKey(ignore: true)
  @override
  _$ChannelLabelLimitCopyWith<_ChannelLabelLimit> get copyWith =>
      __$ChannelLabelLimitCopyWithImpl<_ChannelLabelLimit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelLabelLimitToJson(this);
  }
}

abstract class _ChannelLabelLimit implements ChannelLabelLimit {
  const factory _ChannelLabelLimit({List<int>? channelLabels}) =
      _$_ChannelLabelLimit;

  factory _ChannelLabelLimit.fromJson(Map<String, dynamic> json) =
      _$_ChannelLabelLimit.fromJson;

  @override
  List<int>? get channelLabels;
  @override
  @JsonKey(ignore: true)
  _$ChannelLabelLimitCopyWith<_ChannelLabelLimit> get copyWith =>
      throw _privateConstructorUsedError;
}

ChannelLimit _$ChannelLimitFromJson(Map<String, dynamic> json) {
  return _ChannelLimit.fromJson(json);
}

/// @nodoc
class _$ChannelLimitTearOff {
  const _$ChannelLimitTearOff();

  _ChannelLimit call({List<int>? channelLimit}) {
    return _ChannelLimit(
      channelLimit: channelLimit,
    );
  }

  ChannelLimit fromJson(Map<String, Object?> json) {
    return ChannelLimit.fromJson(json);
  }
}

/// @nodoc
const $ChannelLimit = _$ChannelLimitTearOff();

/// @nodoc
mixin _$ChannelLimit {
  List<int>? get channelLimit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelLimitCopyWith<ChannelLimit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelLimitCopyWith<$Res> {
  factory $ChannelLimitCopyWith(
          ChannelLimit value, $Res Function(ChannelLimit) then) =
      _$ChannelLimitCopyWithImpl<$Res>;
  $Res call({List<int>? channelLimit});
}

/// @nodoc
class _$ChannelLimitCopyWithImpl<$Res> implements $ChannelLimitCopyWith<$Res> {
  _$ChannelLimitCopyWithImpl(this._value, this._then);

  final ChannelLimit _value;
  // ignore: unused_field
  final $Res Function(ChannelLimit) _then;

  @override
  $Res call({
    Object? channelLimit = freezed,
  }) {
    return _then(_value.copyWith(
      channelLimit: channelLimit == freezed
          ? _value.channelLimit
          : channelLimit // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$ChannelLimitCopyWith<$Res>
    implements $ChannelLimitCopyWith<$Res> {
  factory _$ChannelLimitCopyWith(
          _ChannelLimit value, $Res Function(_ChannelLimit) then) =
      __$ChannelLimitCopyWithImpl<$Res>;
  @override
  $Res call({List<int>? channelLimit});
}

/// @nodoc
class __$ChannelLimitCopyWithImpl<$Res> extends _$ChannelLimitCopyWithImpl<$Res>
    implements _$ChannelLimitCopyWith<$Res> {
  __$ChannelLimitCopyWithImpl(
      _ChannelLimit _value, $Res Function(_ChannelLimit) _then)
      : super(_value, (v) => _then(v as _ChannelLimit));

  @override
  _ChannelLimit get _value => super._value as _ChannelLimit;

  @override
  $Res call({
    Object? channelLimit = freezed,
  }) {
    return _then(_ChannelLimit(
      channelLimit: channelLimit == freezed
          ? _value.channelLimit
          : channelLimit // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChannelLimit implements _ChannelLimit {
  const _$_ChannelLimit({this.channelLimit});

  factory _$_ChannelLimit.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelLimitFromJson(json);

  @override
  final List<int>? channelLimit;

  @override
  String toString() {
    return 'ChannelLimit(channelLimit: $channelLimit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChannelLimit &&
            const DeepCollectionEquality()
                .equals(other.channelLimit, channelLimit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(channelLimit));

  @JsonKey(ignore: true)
  @override
  _$ChannelLimitCopyWith<_ChannelLimit> get copyWith =>
      __$ChannelLimitCopyWithImpl<_ChannelLimit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelLimitToJson(this);
  }
}

abstract class _ChannelLimit implements ChannelLimit {
  const factory _ChannelLimit({List<int>? channelLimit}) = _$_ChannelLimit;

  factory _ChannelLimit.fromJson(Map<String, dynamic> json) =
      _$_ChannelLimit.fromJson;

  @override
  List<int>? get channelLimit;
  @override
  @JsonKey(ignore: true)
  _$ChannelLimitCopyWith<_ChannelLimit> get copyWith =>
      throw _privateConstructorUsedError;
}

ConstraintPassLogic _$ConstraintPassLogicFromJson(Map<String, dynamic> json) {
  return _ConstraintPassLogic.fromJson(json);
}

/// @nodoc
class _$ConstraintPassLogicTearOff {
  const _$ConstraintPassLogicTearOff();

  _ConstraintPassLogic call({String? logic, String? message}) {
    return _ConstraintPassLogic(
      logic: logic,
      message: message,
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
  String? get logic => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

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
  $Res call({String? logic, String? message});
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
    Object? logic = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      logic: logic == freezed
          ? _value.logic
          : logic // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ConstraintPassLogicCopyWith<$Res>
    implements $ConstraintPassLogicCopyWith<$Res> {
  factory _$ConstraintPassLogicCopyWith(_ConstraintPassLogic value,
          $Res Function(_ConstraintPassLogic) then) =
      __$ConstraintPassLogicCopyWithImpl<$Res>;
  @override
  $Res call({String? logic, String? message});
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
    Object? logic = freezed,
    Object? message = freezed,
  }) {
    return _then(_ConstraintPassLogic(
      logic: logic == freezed
          ? _value.logic
          : logic // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConstraintPassLogic implements _ConstraintPassLogic {
  const _$_ConstraintPassLogic({this.logic, this.message});

  factory _$_ConstraintPassLogic.fromJson(Map<String, dynamic> json) =>
      _$$_ConstraintPassLogicFromJson(json);

  @override
  final String? logic;
  @override
  final String? message;

  @override
  String toString() {
    return 'ConstraintPassLogic(logic: $logic, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConstraintPassLogic &&
            const DeepCollectionEquality().equals(other.logic, logic) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(logic),
      const DeepCollectionEquality().hash(message));

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
  const factory _ConstraintPassLogic({String? logic, String? message}) =
      _$_ConstraintPassLogic;

  factory _ConstraintPassLogic.fromJson(Map<String, dynamic> json) =
      _$_ConstraintPassLogic.fromJson;

  @override
  String? get logic;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$ConstraintPassLogicCopyWith<_ConstraintPassLogic> get copyWith =>
      throw _privateConstructorUsedError;
}

OtherRewardResp _$OtherRewardRespFromJson(Map<String, dynamic> json) {
  return _OtherRewardResp.fromJson(json);
}

/// @nodoc
class _$OtherRewardRespTearOff {
  const _$OtherRewardRespTearOff();

  _OtherRewardResp call({String? title, List<String>? descs}) {
    return _OtherRewardResp(
      title: title,
      descs: descs,
    );
  }

  OtherRewardResp fromJson(Map<String, Object?> json) {
    return OtherRewardResp.fromJson(json);
  }
}

/// @nodoc
const $OtherRewardResp = _$OtherRewardRespTearOff();

/// @nodoc
mixin _$OtherRewardResp {
  String? get title => throw _privateConstructorUsedError;
  List<String>? get descs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtherRewardRespCopyWith<OtherRewardResp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtherRewardRespCopyWith<$Res> {
  factory $OtherRewardRespCopyWith(
          OtherRewardResp value, $Res Function(OtherRewardResp) then) =
      _$OtherRewardRespCopyWithImpl<$Res>;
  $Res call({String? title, List<String>? descs});
}

/// @nodoc
class _$OtherRewardRespCopyWithImpl<$Res>
    implements $OtherRewardRespCopyWith<$Res> {
  _$OtherRewardRespCopyWithImpl(this._value, this._then);

  final OtherRewardResp _value;
  // ignore: unused_field
  final $Res Function(OtherRewardResp) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? descs = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      descs: descs == freezed
          ? _value.descs
          : descs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$OtherRewardRespCopyWith<$Res>
    implements $OtherRewardRespCopyWith<$Res> {
  factory _$OtherRewardRespCopyWith(
          _OtherRewardResp value, $Res Function(_OtherRewardResp) then) =
      __$OtherRewardRespCopyWithImpl<$Res>;
  @override
  $Res call({String? title, List<String>? descs});
}

/// @nodoc
class __$OtherRewardRespCopyWithImpl<$Res>
    extends _$OtherRewardRespCopyWithImpl<$Res>
    implements _$OtherRewardRespCopyWith<$Res> {
  __$OtherRewardRespCopyWithImpl(
      _OtherRewardResp _value, $Res Function(_OtherRewardResp) _then)
      : super(_value, (v) => _then(v as _OtherRewardResp));

  @override
  _OtherRewardResp get _value => super._value as _OtherRewardResp;

  @override
  $Res call({
    Object? title = freezed,
    Object? descs = freezed,
  }) {
    return _then(_OtherRewardResp(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      descs: descs == freezed
          ? _value.descs
          : descs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OtherRewardResp implements _OtherRewardResp {
  const _$_OtherRewardResp({this.title, this.descs});

  factory _$_OtherRewardResp.fromJson(Map<String, dynamic> json) =>
      _$$_OtherRewardRespFromJson(json);

  @override
  final String? title;
  @override
  final List<String>? descs;

  @override
  String toString() {
    return 'OtherRewardResp(title: $title, descs: $descs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OtherRewardResp &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.descs, descs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(descs));

  @JsonKey(ignore: true)
  @override
  _$OtherRewardRespCopyWith<_OtherRewardResp> get copyWith =>
      __$OtherRewardRespCopyWithImpl<_OtherRewardResp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtherRewardRespToJson(this);
  }
}

abstract class _OtherRewardResp implements OtherRewardResp {
  const factory _OtherRewardResp({String? title, List<String>? descs}) =
      _$_OtherRewardResp;

  factory _OtherRewardResp.fromJson(Map<String, dynamic> json) =
      _$_OtherRewardResp.fromJson;

  @override
  String? get title;
  @override
  List<String>? get descs;
  @override
  @JsonKey(ignore: true)
  _$OtherRewardRespCopyWith<_OtherRewardResp> get copyWith =>
      throw _privateConstructorUsedError;
}
