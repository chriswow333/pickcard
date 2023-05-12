// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creditcard.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreditCard _$$_CreditCardFromJson(Map<String, dynamic> json) =>
    _$_CreditCard(
      id: json['id'] as String?,
      bankId: json['bankId'] as String?,
      name: json['name'] as String?,
      descs: json['descs'] as List<dynamic>?,
      bankName: json['bankName'] as String?,
      updateDate: json['updateDate'] as String?,
      cardStatus: json['cardStatus'] as int?,
      imagePath: json['imagePath'] as String?,
      linkUrl: json['linkUrl'] as String?,
    );

Map<String, dynamic> _$$_CreditCardToJson(_$_CreditCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bankId': instance.bankId,
      'name': instance.name,
      'descs': instance.descs,
      'bankName': instance.bankName,
      'updateDate': instance.updateDate,
      'cardStatus': instance.cardStatus,
      'imagePath': instance.imagePath,
      'linkUrl': instance.linkUrl,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreditCardRepo on CreditCardBase, Store {
  @override
  String toString() {
    return '''

    ''';
  }
}
