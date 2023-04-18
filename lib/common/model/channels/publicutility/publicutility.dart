// To parse this JSON data, do
//
//     final publicutility = publicutilityFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:pickcard/common/repository/http.dart';

part 'publicutility_view_model.dart';
part 'publicutility.freezed.dart';
part 'publicutility.g.dart';

List<Publicutility> publicutilityFromJson(String str) => List<Publicutility>.from(json.decode(str).map((x) => Publicutility.fromJson(x)));

String publicutilityToJson(List<Publicutility> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Publicutility with _$Publicutility {
    const factory Publicutility({
        String? id,
        String? name,
    }) = _Publicutility;

    factory Publicutility.fromJson(Map<String, dynamic> json) => _$PublicutilityFromJson(json);
}
