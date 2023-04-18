// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'constraint_pass_logic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConstraintPassLogic _$$_ConstraintPassLogicFromJson(
        Map<String, dynamic> json) =>
    _$_ConstraintPassLogic(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ConstraintPassLogicToJson(
        _$_ConstraintPassLogic instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      pass: json['pass'] as bool?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'pass': instance.pass,
      'message': instance.message,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ConstraintPassLogicViewModel on ConstraintPassLogicBase, Store {
  late final _$cardRewardAtom =
      Atom(name: 'ConstraintPassLogicBase.cardReward', context: context);

  @override
  ObservableFuture<ConstraintPassLogic>? get cardReward {
    _$cardRewardAtom.reportRead();
    return super.cardReward;
  }

  @override
  set cardReward(ObservableFuture<ConstraintPassLogic>? value) {
    _$cardRewardAtom.reportWrite(value, super.cardReward, () {
      super.cardReward = value;
    });
  }

  late final _$ConstraintPassLogicBaseActionController =
      ActionController(name: 'ConstraintPassLogicBase', context: context);

  @override
  Future<dynamic> fetchCardReward(String cardRewardID) {
    final _$actionInfo = _$ConstraintPassLogicBaseActionController.startAction(
        name: 'ConstraintPassLogicBase.fetchCardReward');
    try {
      return super.fetchCardReward(cardRewardID);
    } finally {
      _$ConstraintPassLogicBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cardReward: ${cardReward}
    ''';
  }
}
