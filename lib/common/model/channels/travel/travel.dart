// To parse this JSON data, do
//
//     final ecommerce = ecommerceFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:pickcard/common/repository/http.dart';

part 'travel.freezed.dart';
part 'travel.g.dart';
part 'tarvel_view_model.dart';

List<Travel> travelFromJson(String str) => List<Travel>.from(json.decode(str).map((x) => Travel.fromJson(x)));

String travelToJson(List<Travel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Travel with _$Travel {
    const factory Travel({
        String? id,
        String? name,
    }) = _Travel;

    factory Travel.fromJson(Map<String, dynamic> json) => _$TravelFromJson(json);
}
