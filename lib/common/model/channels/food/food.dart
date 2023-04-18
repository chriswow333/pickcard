// To parse this JSON data, do
//
//     final food = foodFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';
import 'dart:convert';

import 'package:pickcard/common/repository/http.dart';


part 'food_view_model.dart';
part 'food.freezed.dart';
part 'food.g.dart';

List<Food> foodFromJson(String str) => List<Food>.from(json.decode(str).map((x) => Food.fromJson(x)));

String foodToJson(List<Food> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Food with _$Food {
    const factory Food({
        String? id,
        String? name,
    }) = _Food;

    factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
}
