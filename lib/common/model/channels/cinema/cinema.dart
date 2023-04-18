// To parse this JSON data, do
//
//     final cinema = cinemaFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';
import 'dart:convert';

import 'package:pickcard/common/repository/http.dart';


part 'cinema.freezed.dart';
part 'cinema.g.dart';
part 'cinema_view_model.dart';


List<Cinema> cinemaFromJson(String str) => List<Cinema>.from(json.decode(str).map((x) => Cinema.fromJson(x)));

String cinemaToJson(List<Cinema> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Cinema with _$Cinema {
    const factory Cinema({
        String? id,
        String? name,
    }) = _Cinema;

    factory Cinema.fromJson(Map<String, dynamic> json) => _$CinemaFromJson(json);
}
