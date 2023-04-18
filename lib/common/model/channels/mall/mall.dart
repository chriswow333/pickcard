// To parse this JSON data, do
//
//     final mall = mallromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobx/mobx.dart';
import 'dart:convert';

import 'package:pickcard/common/repository/http.dart';


part 'mall_view_model.dart';
part 'mall.freezed.dart';
part 'mall.g.dart';

List<Mall> mallFromJson(String str) => List<Mall>.from(json.decode(str).map((x) => Mall.fromJson(x)));

String mallToJson(List<Mall> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Mall with _$Mall {
    const factory Mall({
        String? id,
        String? name,
    }) = _Mall;

    factory Mall.fromJson(Map<String, dynamic> json) => _$MallFromJson(json);
}
