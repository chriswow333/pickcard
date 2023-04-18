// To parse this JSON data, do
//
//     final streaming = streamingFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:pickcard/common/repository/http.dart';

part 'streaming.freezed.dart';
part 'streaming.g.dart';
part 'streaming_view_model.dart';

List<Streaming> streamingFromJson(String str) => List<Streaming>.from(json.decode(str).map((x) => Streaming.fromJson(x)));

String streamingToJson(List<Streaming> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@freezed
abstract class Streaming with _$Streaming {
    const factory Streaming({
        String? id,
        String? name,
    }) = _Streaming;

    factory Streaming.fromJson(Map<String, dynamic> json) => _$StreamingFromJson(json);
}
