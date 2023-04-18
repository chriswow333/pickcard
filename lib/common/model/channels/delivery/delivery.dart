// To parse this JSON data, do
//
//     final ecommerce = ecommerceFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:pickcard/common/repository/http.dart';

part 'delivery.freezed.dart';
part 'delivery.g.dart';
part 'delivery_view_model.dart';

List<Delivery> deliveryFromJson(String str) => List<Delivery>.from(json.decode(str).map((x) => Delivery.fromJson(x)));

String deliveryToJson(List<Delivery> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Delivery with _$Delivery {
    const factory Delivery({
        String? id,
        String? name,
    }) = _Delivery;

    factory Delivery.fromJson(Map<String, dynamic> json) => _$DeliveryFromJson(json);
}
