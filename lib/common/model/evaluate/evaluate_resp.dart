// To parse this JSON data, do
//
//     final evaluateResp = evaluateRespFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:pickcard/common/model/evaluate/param.dart';
import 'package:pickcard/common/repository/http.dart';

part 'evaluate_resp.freezed.dart';
part 'evaluate_resp.g.dart';
part 'evaluate_resp_observer.dart';

EvaluateResp evaluateRespFromJson(String str) => EvaluateResp.fromJson(json.decode(str));

String evaluateRespToJson(EvaluateResp data) => json.encode(data.toJson());

@freezed
abstract class EvaluateResp with _$EvaluateResp {
    const factory EvaluateResp({
        String? eventID,
        List<CardEventResp>? cardEventResps,
    }) = _EvaluateResp;

    factory EvaluateResp.fromJson(Map<String, dynamic> json) => _$EvaluateRespFromJson(json);
}

@freezed
abstract class CardEventResp with _$CardEventResp {
    const factory CardEventResp({
        String? id,
        String? name,
        List<String>? descs,
        String? bankID,
        String? bankName,
        String? updateDate,
        String? imagePath,
        List<CardRewardEventResp>? cardRewardEventResps,
    }) = _CardEventResp;

    factory CardEventResp.fromJson(Map<String, dynamic> json) => _$CardEventRespFromJson(json);
}

@freezed
abstract class CardRewardEventResp with _$CardRewardEventResp {
    const factory CardRewardEventResp({
        String? id,
        String? title,
        List<String>? descs,
        String? startDate,
        String? endDate,
        int? cardRewardOperator,
        int? rewardType,
        List<int>? cardRewardLimitTypes,
        FeedbackBonus? feedbackBonus,
        FeedReturn? feedReturn,
    }) = _CardRewardEventResp;

    factory CardRewardEventResp.fromJson(Map<String, dynamic> json) => _$CardRewardEventRespFromJson(json);
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
    double? totalBonus,
    int? cashCalculateType,
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
    String? title, 
    String? returnBonusTitle,
    String? pointReturnTitlePrefix,
    String? pointReturnTitleSuffix,
  }) = _PoingFeedbackBonus;
  
  factory PointFeedbackBonus.fromJson(Map<String, dynamic> json) => _$PointFeedbackBonusFromJson(json);
}




@freezed
abstract class FeedReturn with _$FeedReturn {
    const factory FeedReturn({
        CashReturn? cashReturn,
        PointReturn? pointReturn,
    }) = _FeedReturn;

    factory FeedReturn.fromJson(Map<String, dynamic> json) => _$FeedReturnFromJson(json);
}

@freezed
abstract class CashReturn with _$CashReturn {
    const factory CashReturn({
        int? cash,
        int? cashReturnStatus,
        double? actualUseCash,
        double? actualCashReturn,
        double? cashReturnBonus,
    }) = _CashReturn;

    factory CashReturn.fromJson(Map<String, dynamic> json) => _$CashReturnFromJson(json);
}


@freezed
abstract class PointReturn with _$PointReturn {
    const factory PointReturn({
        int? cash,
        int? pointReturnStatus,
        double? actualUseCash,
        double? actualPointReturn,
        double? pointReturnBonus,
    }) = _PointReturn;

    factory PointReturn.fromJson(Map<String, dynamic> json) => _$PointReturnFromJson(json);
}
