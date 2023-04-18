// To parse this JSON data, do
//
//     final sport = sportFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';
import 'dart:convert';

import 'package:pickcard/common/repository/http.dart';


part 'sport_view_model.dart';
part 'sport.freezed.dart';
part 'sport.g.dart';

List<Sport> sportFromJson(String str) => List<Sport>.from(json.decode(str).map((x) => Sport.fromJson(x)));

String sportToJson(List<Sport> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Sport with _$Sport {
    const factory Sport({
        String? id,
        String? name,
    }) = _Sport;

    factory Sport.fromJson(Map<String, dynamic> json) => _$SportFromJson(json);
}
