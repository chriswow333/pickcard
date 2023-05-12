// To parse this JSON data, do
//
//     final card = cardFromJson(jsonString);

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';
import 'dart:convert';

import 'package:pickcard/common/repository/http.dart';

part 'creditcard.freezed.dart';
part 'creditcard.g.dart';
part 'creditcard.repo.dart';

List<CreditCard> cardFromJson(String str) => List<CreditCard>.from(json.decode(str).map((x) => CreditCard.fromJson(x)));

String creditCardToJson(List<CreditCard> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
class CreditCard with _$CreditCard {
    const factory CreditCard({
        String? id,
        String? bankId,
        String? name,
        List<dynamic>? descs,
        String? bankName,
        String? updateDate,
        int? cardStatus,
        String? imagePath,
        String? linkUrl,
    }) = _CreditCard;

    factory CreditCard.fromJson(Map<String, dynamic> json) => _$CreditCardFromJson(json);
}
