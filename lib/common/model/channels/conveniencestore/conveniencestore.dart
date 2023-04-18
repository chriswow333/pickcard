// To parse this JSON data, do
//
//     final conveniencestore = foodFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';
import 'dart:convert';

import 'package:pickcard/common/repository/http.dart';


part 'conveniencestore_view_model.dart';
part 'conveniencestore.freezed.dart';
part 'conveniencestore.g.dart';

List<Conveniencestore> conveniencestoreFromJson(String str) => List<Conveniencestore>.from(json.decode(str).map((x) => Conveniencestore.fromJson(x)));

String conveniencestoreToJson(List<Conveniencestore> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Conveniencestore with _$Conveniencestore {
    const factory Conveniencestore({
        String? id,
        String? name,
    }) = _Conveniencestore;

    factory Conveniencestore.fromJson(Map<String, dynamic> json) => _$ConveniencestoreFromJson(json);
}
