// To parse this JSON data, do
//
//     final ecommerce = ecommerceFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:pickcard/common/repository/http.dart';

part 'ecommerce.freezed.dart';
part 'ecommerce.g.dart';
part 'ecommerce_view_model.dart';

List<Ecommerce> ecommerceFromJson(String str) => List<Ecommerce>.from(json.decode(str).map((x) => Ecommerce.fromJson(x)));

String ecommerceToJson(List<Ecommerce> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Ecommerce with _$Ecommerce {
    const factory Ecommerce({
        String? id,
        String? name,
    }) = _Ecommerce;

    factory Ecommerce.fromJson(Map<String, dynamic> json) => _$EcommerceFromJson(json);
}
