// To parse this JSON data, do
//
//     final insurance = insuranceFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:pickcard/common/repository/http.dart';

part 'insurance.freezed.dart';
part 'insurance.g.dart';
part 'insurance_view_model.dart';

List<Insurance> insuranceFromJson(String str) => List<Insurance>.from(json.decode(str).map((x) => Insurance.fromJson(x)));

String insuranceToJson(List<Insurance> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Insurance with _$Insurance {
    const factory Insurance({
        String? id,
        String? name,
    }) = _Insurance;

    factory Insurance.fromJson(Map<String, dynamic> json) => _$InsuranceFromJson(json);
}
