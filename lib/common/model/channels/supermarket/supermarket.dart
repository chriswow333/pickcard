// To parse this JSON data, do
//
//     final supermarket = supermarketFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';
import 'dart:convert';

import 'package:pickcard/common/repository/http.dart';

part 'supermarket.freezed.dart';
part 'supermarket.g.dart';
part 'supermarket_view_model.dart';

List<Supermarket> supermarketFromJson(String str) => List<Supermarket>.from(json.decode(str).map((x) => Supermarket.fromJson(x)));

String supermarketToJson(List<Supermarket> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Supermarket with _$Supermarket {
    const factory Supermarket({
        String? id,
        String? name,
    }) = _Supermarket;

    factory Supermarket.fromJson(Map<String, dynamic> json) => _$SupermarketFromJson(json);
}
