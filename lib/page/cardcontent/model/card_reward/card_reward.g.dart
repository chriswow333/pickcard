// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_reward.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardReward _$$_CardRewardFromJson(Map<String, dynamic> json) =>
    _$_CardReward(
      id: json['id'] as String?,
      bankID: json['bankID'] as String?,
      name: json['name'] as String?,
      descs:
          (json['descs'] as List<dynamic>?)?.map((e) => e as String).toList(),
      bankName: json['bankName'] as String?,
      updateDate: json['updateDate'] as String?,
      cardStatus: json['cardStatus'] as int?,
      imagePath: json['imagePath'] as String?,
      linkURL: json['linkURL'] as String?,
      cardRewardResps: (json['cardRewardResps'] as List<dynamic>?)
          ?.map((e) => CardRewardResp.fromJson(e as Map<String, dynamic>))
          .toList(),
      otherRewardResps: (json['otherRewardResps'] as List<dynamic>?)
          ?.map((e) => OtherRewardResp.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CardRewardToJson(_$_CardReward instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bankID': instance.bankID,
      'name': instance.name,
      'descs': instance.descs,
      'bankName': instance.bankName,
      'updateDate': instance.updateDate,
      'cardStatus': instance.cardStatus,
      'imagePath': instance.imagePath,
      'linkURL': instance.linkURL,
      'cardRewardResps': instance.cardRewardResps,
      'otherRewardResps': instance.otherRewardResps,
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
      cashCalculateType: json['cashCalculateType'] as int?,
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
      'cashCalculateType': instance.cashCalculateType,
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
      pointCalculateType: json['pointCalculateType'] as int?,
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
      'pointCalculateType': instance.pointCalculateType,
      'title': instance.title,
      'returnBonusTitle': instance.returnBonusTitle,
      'pointReturnTitlePrefix': instance.pointReturnTitlePrefix,
      'pointReturnTitleSuffix': instance.pointReturnTitleSuffix,
    };

_$_CardRewardResp _$$_CardRewardRespFromJson(Map<String, dynamic> json) =>
    _$_CardRewardResp(
      id: json['id'] as String?,
      cardID: json['cardID'] as String?,
      title: json['title'] as String?,
      descs:
          (json['descs'] as List<dynamic>?)?.map((e) => e as String).toList(),
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      rewardType: json['rewardType'] as int?,
      feedbackBonus: json['feedbackBonus'] == null
          ? null
          : FeedbackBonus.fromJson(
              json['feedbackBonus'] as Map<String, dynamic>),
      cardRewardLimitTypes: (json['cardRewardLimitTypes'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      constraintPassLogics: (json['constraintPassLogics'] as List<dynamic>?)
          ?.map((e) => ConstraintPassLogic.fromJson(e as Map<String, dynamic>))
          .toList(),
      channelResps: (json['channelResps'] as List<dynamic>?)
          ?.map((e) => ChannelResp.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CardRewardRespToJson(_$_CardRewardResp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cardID': instance.cardID,
      'title': instance.title,
      'descs': instance.descs,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'rewardType': instance.rewardType,
      'feedbackBonus': instance.feedbackBonus,
      'cardRewardLimitTypes': instance.cardRewardLimitTypes,
      'constraintPassLogics': instance.constraintPassLogics,
      'channelResps': instance.channelResps,
    };

_$_ChannelResp _$$_ChannelRespFromJson(Map<String, dynamic> json) =>
    _$_ChannelResp(
      channelType: json['channelType'] as int?,
      tasks: (json['tasks'] as List<dynamic>?)
          ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
      mobilepays: (json['mobilepays'] as List<dynamic>?)
          ?.map((e) => Mobilepay.fromJson(e as Map<String, dynamic>))
          .toList(),
      ecommerces: (json['ecommerces'] as List<dynamic>?)
          ?.map((e) => Ecommerce.fromJson(e as Map<String, dynamic>))
          .toList(),
      supermarkets: (json['supermarkets'] as List<dynamic>?)
          ?.map((e) => Supermarket.fromJson(e as Map<String, dynamic>))
          .toList(),
      onlinegames: (json['onlinegames'] as List<dynamic>?)
          ?.map((e) => Onlinegame.fromJson(e as Map<String, dynamic>))
          .toList(),
      streamings: (json['streamings'] as List<dynamic>?)
          ?.map((e) => Streaming.fromJson(e as Map<String, dynamic>))
          .toList(),
      foods: (json['foods'] as List<dynamic>?)
          ?.map((e) => Food.fromJson(e as Map<String, dynamic>))
          .toList(),
      transportations: (json['transportations'] as List<dynamic>?)
          ?.map((e) => Transportation.fromJson(e as Map<String, dynamic>))
          .toList(),
      travels: (json['travels'] as List<dynamic>?)
          ?.map((e) => Travel.fromJson(e as Map<String, dynamic>))
          .toList(),
      deliveries: (json['deliveries'] as List<dynamic>?)
          ?.map((e) => Delivery.fromJson(e as Map<String, dynamic>))
          .toList(),
      insurances: (json['insurances'] as List<dynamic>?)
          ?.map((e) => Insurance.fromJson(e as Map<String, dynamic>))
          .toList(),
      malls: (json['malls'] as List<dynamic>?)
          ?.map((e) => Mall.fromJson(e as Map<String, dynamic>))
          .toList(),
      sports: (json['sports'] as List<dynamic>?)
          ?.map((e) => Sport.fromJson(e as Map<String, dynamic>))
          .toList(),
      conveniencestores: (json['conveniencestores'] as List<dynamic>?)
          ?.map((e) => Conveniencestore.fromJson(e as Map<String, dynamic>))
          .toList(),
      appstores: (json['appstores'] as List<dynamic>?)
          ?.map((e) => Appstore.fromJson(e as Map<String, dynamic>))
          .toList(),
      hotels: (json['hotels'] as List<dynamic>?)
          ?.map((e) => Hotel.fromJson(e as Map<String, dynamic>))
          .toList(),
      amusements: (json['amusements'] as List<dynamic>?)
          ?.map((e) => Amusement.fromJson(e as Map<String, dynamic>))
          .toList(),
      cinemas: (json['cinemas'] as List<dynamic>?)
          ?.map((e) => Cinema.fromJson(e as Map<String, dynamic>))
          .toList(),
      publicutilities: (json['publicutilities'] as List<dynamic>?)
          ?.map((e) => Publicutility.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChannelRespToJson(_$_ChannelResp instance) =>
    <String, dynamic>{
      'channelType': instance.channelType,
      'tasks': instance.tasks,
      'mobilepays': instance.mobilepays,
      'ecommerces': instance.ecommerces,
      'supermarkets': instance.supermarkets,
      'onlinegames': instance.onlinegames,
      'streamings': instance.streamings,
      'foods': instance.foods,
      'transportations': instance.transportations,
      'travels': instance.travels,
      'deliveries': instance.deliveries,
      'insurances': instance.insurances,
      'malls': instance.malls,
      'sports': instance.sports,
      'conveniencestores': instance.conveniencestores,
      'appstores': instance.appstores,
      'hotels': instance.hotels,
      'amusements': instance.amusements,
      'cinemas': instance.cinemas,
      'publicutilities': instance.publicutilities,
    };

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      id: json['id'] as String?,
      name: json['name'] as String?,
      descs:
          (json['descs'] as List<dynamic>?)?.map((e) => e as String).toList(),
      cardID: json['cardID'] as String?,
      taskType: json['taskType'] as int?,
      taskTypeModel: json['taskTypeModel'] == null
          ? null
          : TaskTypeModel.fromJson(
              json['taskTypeModel'] as Map<String, dynamic>),
      defaultPass: json['defaultPass'] as bool?,
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'descs': instance.descs,
      'cardID': instance.cardID,
      'taskType': instance.taskType,
      'taskTypeModel': instance.taskTypeModel,
      'defaultPass': instance.defaultPass,
    };

_$_TaskTypeModel _$$_TaskTypeModelFromJson(Map<String, dynamic> json) =>
    _$_TaskTypeModel(
      weekDayLimit: json['weekDayLimit'] == null
          ? null
          : WeekDayLimit.fromJson(json['weekDayLimit'] as Map<String, dynamic>),
      channelLabelLimit: json['channelLabelLimit'] == null
          ? null
          : ChannelLabelLimit.fromJson(
              json['channelLabelLimit'] as Map<String, dynamic>),
      channelLimit: json['channelLimit'] == null
          ? null
          : ChannelLimit.fromJson(json['channelLimit'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TaskTypeModelToJson(_$_TaskTypeModel instance) =>
    <String, dynamic>{
      'weekDayLimit': instance.weekDayLimit,
      'channelLabelLimit': instance.channelLabelLimit,
      'channelLimit': instance.channelLimit,
    };

_$_WeekDayLimit _$$_WeekDayLimitFromJson(Map<String, dynamic> json) =>
    _$_WeekDayLimit(
      weekDays:
          (json['weekDays'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_WeekDayLimitToJson(_$_WeekDayLimit instance) =>
    <String, dynamic>{
      'weekDays': instance.weekDays,
    };

_$_ChannelLabelLimit _$$_ChannelLabelLimitFromJson(Map<String, dynamic> json) =>
    _$_ChannelLabelLimit(
      channelLabels: (json['channelLabels'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_ChannelLabelLimitToJson(
        _$_ChannelLabelLimit instance) =>
    <String, dynamic>{
      'channelLabels': instance.channelLabels,
    };

_$_ChannelLimit _$$_ChannelLimitFromJson(Map<String, dynamic> json) =>
    _$_ChannelLimit(
      channelLimit: (json['channelLimit'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$$_ChannelLimitToJson(_$_ChannelLimit instance) =>
    <String, dynamic>{
      'channelLimit': instance.channelLimit,
    };

_$_ConstraintPassLogic _$$_ConstraintPassLogicFromJson(
        Map<String, dynamic> json) =>
    _$_ConstraintPassLogic(
      logic: json['logic'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_ConstraintPassLogicToJson(
        _$_ConstraintPassLogic instance) =>
    <String, dynamic>{
      'logic': instance.logic,
      'message': instance.message,
    };

_$_OtherRewardResp _$$_OtherRewardRespFromJson(Map<String, dynamic> json) =>
    _$_OtherRewardResp(
      title: json['title'] as String?,
      descs:
          (json['descs'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_OtherRewardRespToJson(_$_OtherRewardResp instance) =>
    <String, dynamic>{
      'title': instance.title,
      'descs': instance.descs,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CardRewardObserver on CardRewardBase, Store {
  late final _$cardRewardAtom =
      Atom(name: 'CardRewardBase.cardReward', context: context);

  @override
  ObservableFuture<CardReward>? get cardReward {
    _$cardRewardAtom.reportRead();
    return super.cardReward;
  }

  @override
  set cardReward(ObservableFuture<CardReward>? value) {
    _$cardRewardAtom.reportWrite(value, super.cardReward, () {
      super.cardReward = value;
    });
  }

  late final _$CardRewardBaseActionController =
      ActionController(name: 'CardRewardBase', context: context);

  @override
  Future<dynamic> fetchCardReward(String cardID) {
    final _$actionInfo = _$CardRewardBaseActionController.startAction(
        name: 'CardRewardBase.fetchCardReward');
    try {
      return super.fetchCardReward(cardID);
    } finally {
      _$CardRewardBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cardReward: ${cardReward}
    ''';
  }
}
