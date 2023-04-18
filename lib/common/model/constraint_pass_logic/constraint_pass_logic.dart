// To parse this JSON data, do
//
//     final constraintPassLogic = constraintPassLogicFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';
import 'dart:convert';

import 'package:pickcard/common/repository/http.dart';

part 'constraint_pass_logic.freezed.dart';
part 'constraint_pass_logic.g.dart';
part 'constraint_pass_logic_view_model.dart';

ConstraintPassLogic constraintPassLogicFromJson(String str) => ConstraintPassLogic.fromJson(json.decode(str));

String constraintPassLogicToJson(ConstraintPassLogic data) => json.encode(data.toJson());

@freezed
abstract class ConstraintPassLogic with _$ConstraintPassLogic {
    const factory ConstraintPassLogic({
        Data? data,
    }) = _ConstraintPassLogic;

    factory ConstraintPassLogic.fromJson(Map<String, dynamic> json) => _$ConstraintPassLogicFromJson(json);
}

@freezed
abstract class Data with _$Data {
    const factory Data({
        bool? pass,
        String? message,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
