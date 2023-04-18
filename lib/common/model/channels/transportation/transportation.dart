// To parse this JSON data, do
//
//     final transportation = transportationFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:pickcard/common/repository/http.dart';

part 'transportation.freezed.dart';
part 'transportation.g.dart';
part 'transportation_view_model.dart';

List<Transportation> transportationFromJson(String str) => List<Transportation>.from(json.decode(str).map((x) => Transportation.fromJson(x)));

String transportationToJson(List<Transportation> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Transportation with _$Transportation {
    const factory Transportation({
        String? id,
        String? name,
    }) = _Transportation;

    factory Transportation.fromJson(Map<String, dynamic> json) => _$TransportationFromJson(json);
}
