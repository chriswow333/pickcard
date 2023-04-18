// To parse this JSON data, do
//
//     final amusement = amusementFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';
import 'dart:convert';

import 'package:pickcard/common/repository/http.dart';


part 'amusement_view_model.dart';
part 'amusement.freezed.dart';
part 'amusement.g.dart';

List<Amusement> amusementFromJson(String str) => List<Amusement>.from(json.decode(str).map((x) => Amusement.fromJson(x)));

String amusementToJson(List<Amusement> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Amusement with _$Amusement {
    const factory Amusement({
        String? id,
        String? name,
    }) = _Amusement;

    factory Amusement.fromJson(Map<String, dynamic> json) => _$AmusementFromJson(json);
}
