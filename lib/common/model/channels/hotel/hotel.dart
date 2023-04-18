// To parse this JSON data, do
//
//     final hotel = hotelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';
import 'dart:convert';

import 'package:pickcard/common/repository/http.dart';


part 'hotel_view_model.dart';
part 'hotel.freezed.dart';
part 'hotel.g.dart';

List<Hotel> hotelFromJson(String str) => List<Hotel>.from(json.decode(str).map((x) => Hotel.fromJson(x)));

String hotelToJson(List<Hotel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Hotel with _$Hotel {
    const factory Hotel({
        String? id,
        String? name,
    }) = _Hotel;

    factory Hotel.fromJson(Map<String, dynamic> json) => _$HotelFromJson(json);
}
