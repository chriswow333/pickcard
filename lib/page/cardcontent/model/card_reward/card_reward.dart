// To parse this JSON data, do
//
//     final cardReward = cardRewardFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';
import 'package:pickcard/common/model/channels/amusement/amusement.dart';
import 'package:pickcard/common/model/channels/appstore/appstore.dart';
import 'package:pickcard/common/model/channels/cinema/cinema.dart';
import 'package:pickcard/common/model/channels/conveniencestore/conveniencestore.dart';
import 'package:pickcard/common/model/channels/delivery/delivery.dart';
import 'package:pickcard/common/model/channels/ecommerce/ecommerce.dart';
import 'package:pickcard/common/model/channels/food/food.dart';
import 'package:pickcard/common/model/channels/hotel/hotel.dart';
import 'package:pickcard/common/model/channels/insurance/insurance.dart';
import 'package:pickcard/common/model/channels/mall/mall.dart';
import 'package:pickcard/common/model/channels/mobilepay/mobilepay.dart';
import 'package:pickcard/common/model/channels/onlinegame/onlinegame.dart';
import 'package:pickcard/common/model/channels/publicutility/publicutility.dart';
import 'package:pickcard/common/model/channels/sport/sport.dart';
import 'package:pickcard/common/model/channels/streaming/streaming.dart';
import 'package:pickcard/common/model/channels/supermarket/supermarket.dart';
import 'package:pickcard/common/model/channels/transportation/transportation.dart';
import 'package:pickcard/common/model/channels/travel/travel.dart';
import 'dart:convert';
import 'package:pickcard/common/repository/http.dart';

part 'card_reward.freezed.dart';
part 'card_reward.g.dart';
part 'card_reward_observer.dart';


CardReward cardRewardFromJson(String str) => CardReward.fromJson(json.decode(str));

String cardRewardToJson(CardReward data) => json.encode(data.toJson());

@freezed
abstract class CardReward with _$CardReward {
    const factory CardReward({
        String? id,
        String? bankID,
        String? name,
        List<String>? descs,
        String? bankName,
        String? updateDate,
        int? cardStatus,
        String? imagePath,
        String? linkURL,
        List<CardRewardResp>? cardRewardResps,
        List<OtherRewardResp>? otherRewardResps,
    }) = _CardReward;

    factory CardReward.fromJson(Map<String, dynamic> json) => _$CardRewardFromJson(json);
}


@freezed
abstract class FeedbackBonus with _$FeedbackBonus {
  const factory FeedbackBonus({
    CashFeedbackBonus? cashFeedbackBonus,
    PointFeedbackBonus? pointFeedbackBonus,
  }) = _FeedbackBonus;
  factory FeedbackBonus.fromJson(Map<String, dynamic> json) => _$FeedbackBonusFromJson(json);
}

@freezed
abstract class CashFeedbackBonus with _$CashFeedbackBonus {
  const factory CashFeedbackBonus({
    int? cashFeedbackBonusType,
    int? cashCalculateType,
    double? totalBonus,
    String? title,
    String? returnBonusTitle,
    String? cashReturnTitlePrefix,
    String? cashReturnTitleSuffix,
  }) = _CashFeedbackBonus;
  factory CashFeedbackBonus.fromJson(Map<String, dynamic> json) => _$CashFeedbackBonusFromJson(json);
}


@freezed
abstract class PointFeedbackBonus with _$PointFeedbackBonus {
  
  const factory PointFeedbackBonus({
    double? totalBonus,
    int? pointbackType,
    int? pointCalculateType,
    String? title, 
    String? returnBonusTitle,
    String? pointReturnTitlePrefix,
    String? pointReturnTitleSuffix,
  }) = _PoingFeedbackBonus;
  
  factory PointFeedbackBonus.fromJson(Map<String, dynamic> json) => _$PointFeedbackBonusFromJson(json);
}

@freezed
abstract class CardRewardResp with _$CardRewardResp {
    const factory CardRewardResp({
        String? id,
        String? cardID,
        String? title,
        List<String>? descs,
        String? startDate,
        String? endDate,
        int? rewardType,
        FeedbackBonus? feedbackBonus,
        List<int>? cardRewardLimitTypes,
        List<ConstraintPassLogic>? constraintPassLogics,
        List<ChannelResp>? channelResps,
    }) = _CardRewardResp;

    factory CardRewardResp.fromJson(Map<String, dynamic> json) => _$CardRewardRespFromJson(json);
}




@freezed
abstract class ChannelResp with _$ChannelResp {
    const factory ChannelResp({
        int? channelType,
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
        List<Publicutility>? publicutilities,
    }) = _ChannelResp;

    factory ChannelResp.fromJson(Map<String, dynamic> json) => _$ChannelRespFromJson(json);
}




@freezed
abstract class Task with _$Task {
    const factory Task({
        String? id,
        String? name,
        List<String>? descs,
        String? cardID,
        int? taskType,
        TaskTypeModel? taskTypeModel,
        bool? defaultPass,
    }) = _Task;

    factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}

@freezed
abstract class TaskTypeModel with _$TaskTypeModel {
    const factory TaskTypeModel({
        WeekDayLimit? weekDayLimit,
        ChannelLabelLimit? channelLabelLimit,
        ChannelLimit? channelLimit,

    }) = _TaskTypeModel;

    factory TaskTypeModel.fromJson(Map<String, dynamic> json) => _$TaskTypeModelFromJson(json);
}

@freezed
abstract class WeekDayLimit with _$WeekDayLimit {
    const factory WeekDayLimit({
      List<int>? weekDays,
    }) = _WeekDayLimit;
    
    factory WeekDayLimit.fromJson(Map<String, dynamic> json) => _$WeekDayLimitFromJson(json);

}


@freezed
abstract class ChannelLabelLimit with _$ChannelLabelLimit {
    const factory ChannelLabelLimit({
      List<int>? channelLabels,
    }) = _ChannelLabelLimit;

    factory ChannelLabelLimit.fromJson(Map<String, dynamic> json) => _$ChannelLabelLimitFromJson(json);
  
}


@freezed
abstract class ChannelLimit with _$ChannelLimit{
    const factory ChannelLimit({
      List<int>? channelLimit,
    }) = _ChannelLimit;

    factory ChannelLimit.fromJson(Map<String, dynamic> json) => _$ChannelLimitFromJson(json);
}

@freezed
abstract class ConstraintPassLogic with _$ConstraintPassLogic {
    const factory ConstraintPassLogic({
        String? logic,
        String? message,
    }) = _ConstraintPassLogic;

    factory ConstraintPassLogic.fromJson(Map<String, dynamic> json) => _$ConstraintPassLogicFromJson(json);
}


@freezed
abstract class OtherRewardResp with _$OtherRewardResp {
    const factory OtherRewardResp({
        String? title,
        List<String>? descs,
    }) = _OtherRewardResp;

    factory OtherRewardResp.fromJson(Map<String, dynamic> json) => _$OtherRewardRespFromJson(json);
}

