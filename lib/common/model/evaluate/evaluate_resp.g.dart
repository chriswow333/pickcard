// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evaluate_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EvaluateResp _$$_EvaluateRespFromJson(Map<String, dynamic> json) =>
    _$_EvaluateResp(
      eventID: json['eventID'] as String?,
      cardEventResps: (json['cardEventResps'] as List<dynamic>?)
          ?.map((e) => CardEventResp.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_EvaluateRespToJson(_$_EvaluateResp instance) =>
    <String, dynamic>{
      'eventID': instance.eventID,
      'cardEventResps': instance.cardEventResps,
    };

_$_CardEventResp _$$_CardEventRespFromJson(Map<String, dynamic> json) =>
    _$_CardEventResp(
      id: json['id'] as String?,
      name: json['name'] as String?,
      descs:
          (json['descs'] as List<dynamic>?)?.map((e) => e as String).toList(),
      bankID: json['bankID'] as String?,
      bankName: json['bankName'] as String?,
      updateDate: json['updateDate'] as String?,
      imagePath: json['imagePath'] as String?,
      cardRewardEventResps: (json['cardRewardEventResps'] as List<dynamic>?)
          ?.map((e) => CardRewardEventResp.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CardEventRespToJson(_$_CardEventResp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'descs': instance.descs,
      'bankID': instance.bankID,
      'bankName': instance.bankName,
      'updateDate': instance.updateDate,
      'imagePath': instance.imagePath,
      'cardRewardEventResps': instance.cardRewardEventResps,
    };

_$_CardRewardEventResp _$$_CardRewardEventRespFromJson(
        Map<String, dynamic> json) =>
    _$_CardRewardEventResp(
      id: json['id'] as String?,
      title: json['title'] as String?,
      descs:
          (json['descs'] as List<dynamic>?)?.map((e) => e as String).toList(),
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      cardRewardOperator: json['cardRewardOperator'] as int?,
      rewardType: json['rewardType'] as int?,
      cardRewardLimitTypes: (json['cardRewardLimitTypes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      feedbackBonus: json['feedbackBonus'] == null
          ? null
          : FeedbackBonus.fromJson(
              json['feedbackBonus'] as Map<String, dynamic>),
      feedReturn: json['feedReturn'] == null
          ? null
          : FeedReturn.fromJson(json['feedReturn'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CardRewardEventRespToJson(
        _$_CardRewardEventResp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'descs': instance.descs,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'cardRewardOperator': instance.cardRewardOperator,
      'rewardType': instance.rewardType,
      'cardRewardLimitTypes': instance.cardRewardLimitTypes,
      'feedbackBonus': instance.feedbackBonus,
      'feedReturn': instance.feedReturn,
    };

_$_FeedbackBonus _$$_FeedbackBonusFromJson(Map<String, dynamic> json) =>
    _$_FeedbackBonus(
      cashFeedbackBonus: json['cashFeedbackBonus'] == null
          ? null
          : CashFeedbackBonus.fromJson(
              json['cashFeedbackBonus'] as Map<String, dynamic>),
      pointFeedbackBonus: json['pointFeedbackBonus'] == null
          ? null
          : PointFeedbackBonus.fromJson(
              json['pointFeedbackBonus'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeedbackBonusToJson(_$_FeedbackBonus instance) =>
    <String, dynamic>{
      'cashFeedbackBonus': instance.cashFeedbackBonus,
      'pointFeedbackBonus': instance.pointFeedbackBonus,
    };

_$_CashFeedbackBonus _$$_CashFeedbackBonusFromJson(Map<String, dynamic> json) =>
    _$_CashFeedbackBonus(
      cashFeedbackBonusType: json['cashFeedbackBonusType'] as int?,
      totalBonus: (json['totalBonus'] as num?)?.toDouble(),
      title: json['title'] as String?,
      returnBonusTitle: json['returnBonusTitle'] as String?,
      cashReturnTitlePrefix: json['cashReturnTitlePrefix'] as String?,
      cashReturnTitleSuffix: json['cashReturnTitleSuffix'] as String?,
    );

Map<String, dynamic> _$$_CashFeedbackBonusToJson(
        _$_CashFeedbackBonus instance) =>
    <String, dynamic>{
      'cashFeedbackBonusType': instance.cashFeedbackBonusType,
      'totalBonus': instance.totalBonus,
      'title': instance.title,
      'returnBonusTitle': instance.returnBonusTitle,
      'cashReturnTitlePrefix': instance.cashReturnTitlePrefix,
      'cashReturnTitleSuffix': instance.cashReturnTitleSuffix,
    };

_$_PoingFeedbackBonus _$$_PoingFeedbackBonusFromJson(
        Map<String, dynamic> json) =>
    _$_PoingFeedbackBonus(
      totalBonus: (json['totalBonus'] as num?)?.toDouble(),
      pointbackType: json['pointbackType'] as int?,
      title: json['title'] as String?,
      returnBonusTitle: json['returnBonusTitle'] as String?,
      pointReturnTitlePrefix: json['pointReturnTitlePrefix'] as String?,
      pointReturnTitleSuffix: json['pointReturnTitleSuffix'] as String?,
    );

Map<String, dynamic> _$$_PoingFeedbackBonusToJson(
        _$_PoingFeedbackBonus instance) =>
    <String, dynamic>{
      'totalBonus': instance.totalBonus,
      'pointbackType': instance.pointbackType,
      'title': instance.title,
      'returnBonusTitle': instance.returnBonusTitle,
      'pointReturnTitlePrefix': instance.pointReturnTitlePrefix,
      'pointReturnTitleSuffix': instance.pointReturnTitleSuffix,
    };

_$_FeedReturn _$$_FeedReturnFromJson(Map<String, dynamic> json) =>
    _$_FeedReturn(
      cashReturn: json['cashReturn'] == null
          ? null
          : CashReturn.fromJson(json['cashReturn'] as Map<String, dynamic>),
      pointReturn: json['pointReturn'] == null
          ? null
          : PointReturn.fromJson(json['pointReturn'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeedReturnToJson(_$_FeedReturn instance) =>
    <String, dynamic>{
      'cashReturn': instance.cashReturn,
      'pointReturn': instance.pointReturn,
    };

_$_CashReturn _$$_CashReturnFromJson(Map<String, dynamic> json) =>
    _$_CashReturn(
      cash: json['cash'] as int?,
      cashReturnStatus: json['cashReturnStatus'] as int?,
      actualUseCash: (json['actualUseCash'] as num?)?.toDouble(),
      actualCashReturn: (json['actualCashReturn'] as num?)?.toDouble(),
      cashReturnBonus: (json['cashReturnBonus'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_CashReturnToJson(_$_CashReturn instance) =>
    <String, dynamic>{
      'cash': instance.cash,
      'cashReturnStatus': instance.cashReturnStatus,
      'actualUseCash': instance.actualUseCash,
      'actualCashReturn': instance.actualCashReturn,
      'cashReturnBonus': instance.cashReturnBonus,
    };

_$_PointReturn _$$_PointReturnFromJson(Map<String, dynamic> json) =>
    _$_PointReturn(
      cash: json['cash'] as int?,
      pointReturnStatus: json['pointReturnStatus'] as int?,
      actualUseCash: (json['actualUseCash'] as num?)?.toDouble(),
      actualPointReturn: (json['actualPointReturn'] as num?)?.toDouble(),
      pointReturnBonus: (json['pointReturnBonus'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_PointReturnToJson(_$_PointReturn instance) =>
    <String, dynamic>{
      'cash': instance.cash,
      'pointReturnStatus': instance.pointReturnStatus,
      'actualUseCash': instance.actualUseCash,
      'actualPointReturn': instance.actualPointReturn,
      'pointReturnBonus': instance.pointReturnBonus,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EvaluateRespObserver on EvaluateRespBase, Store {
  late final _$evaluateRespAtom =
      Atom(name: 'EvaluateRespBase.evaluateResp', context: context);

  @override
  ObservableFuture<EvaluateResp>? get evaluateResp {
    _$evaluateRespAtom.reportRead();
    return super.evaluateResp;
  }

  @override
  set evaluateResp(ObservableFuture<EvaluateResp>? value) {
    _$evaluateRespAtom.reportWrite(value, super.evaluateResp, () {
      super.evaluateResp = value;
    });
  }

  late final _$EvaluateRespBaseActionController =
      ActionController(name: 'EvaluateRespBase', context: context);

  @override
  Future<dynamic> evaluate(EvaluateParams param) {
    final _$actionInfo = _$EvaluateRespBaseActionController.startAction(
        name: 'EvaluateRespBase.evaluate');
    try {
      return super.evaluate(param);
    } finally {
      _$EvaluateRespBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
evaluateResp: ${evaluateResp}
    ''';
  }
}
