// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streaming.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Streaming _$$_StreamingFromJson(Map<String, dynamic> json) => _$_Streaming(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_StreamingToJson(_$_Streaming instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StreamingObserver on StreamingBase, Store {
  late final _$streamingsAtom =
      Atom(name: 'StreamingBase.streamings', context: context);

  @override
  ObservableFuture<ObservableList<Streaming>>? get streamings {
    _$streamingsAtom.reportRead();
    return super.streamings;
  }

  @override
  set streamings(ObservableFuture<ObservableList<Streaming>>? value) {
    _$streamingsAtom.reportWrite(value, super.streamings, () {
      super.streamings = value;
    });
  }

  late final _$StreamingBaseActionController =
      ActionController(name: 'StreamingBase', context: context);

  @override
  Future<dynamic> fetchStreamings() {
    final _$actionInfo = _$StreamingBaseActionController.startAction(
        name: 'StreamingBase.fetchStreamings');
    try {
      return super.fetchStreamings();
    } finally {
      _$StreamingBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
streamings: ${streamings}
    ''';
  }
}
