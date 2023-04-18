// To parse this JSON data, do
//
//     final mobilepay = mobilepayFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';
import 'dart:convert';

import 'package:pickcard/common/repository/http.dart';

part 'mobilepay.freezed.dart';
part 'mobilepay.g.dart';
part 'mobilepay_view_model.dart';

List<Mobilepay> mobilepayFromJson(String str) => List<Mobilepay>.from(json.decode(str).map((x) => Mobilepay.fromJson(x)));

String mobilepayToJson(List<Mobilepay> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Mobilepay with _$Mobilepay {
    const factory Mobilepay({
        String? id,
        String? name,
    }) = _Mobilepay;

    factory Mobilepay.fromJson(Map<String, dynamic> json) => _$MobilepayFromJson(json);
}
