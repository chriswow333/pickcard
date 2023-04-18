// To parse this JSON data, do
//
//     final appstore = appstoreFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';
import 'dart:convert';

import 'package:pickcard/common/repository/http.dart';


part 'appstore.freezed.dart';
part 'appstore.g.dart';
part 'appstore_view_model.dart';


List<Appstore> appstoreFromJson(String str) => List<Appstore>.from(json.decode(str).map((x) => Appstore.fromJson(x)));

String appstoreToJson(List<Appstore> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Appstore with _$Appstore {
    const factory Appstore({
        String? id,
        String? name,
    }) = _Appstore;

    factory Appstore.fromJson(Map<String, dynamic> json) => _$AppstoreFromJson(json);
}
