// To parse this JSON data, do
//
//     final onlinegame = onlinegameFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:pickcard/common/repository/http.dart';

part 'onlinegame_view_model.dart';
part 'onlinegame.freezed.dart';
part 'onlinegame.g.dart';

List<Onlinegame> onlinegameFromJson(String str) => List<Onlinegame>.from(json.decode(str).map((x) => Onlinegame.fromJson(x)));

String onlinegameToJson(List<Onlinegame> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Onlinegame with _$Onlinegame {
    const factory Onlinegame({
        String? id,
        String? name,
    }) = _Onlinegame;

    factory Onlinegame.fromJson(Map<String, dynamic> json) => _$OnlinegameFromJson(json);
}
