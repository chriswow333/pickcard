// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conveniencestore.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Conveniencestore _$$_ConveniencestoreFromJson(Map<String, dynamic> json) =>
    _$_Conveniencestore(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_ConveniencestoreToJson(_$_Conveniencestore instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ConveniencestoreObserver on ConveniencestoreBase, Store {
  late final _$conveniencestoresAtom =
      Atom(name: 'ConveniencestoreBase.conveniencestores', context: context);

  @override
  ObservableFuture<ObservableList<Conveniencestore>>? get conveniencestores {
    _$conveniencestoresAtom.reportRead();
    return super.conveniencestores;
  }

  @override
  set conveniencestores(
      ObservableFuture<ObservableList<Conveniencestore>>? value) {
    _$conveniencestoresAtom.reportWrite(value, super.conveniencestores, () {
      super.conveniencestores = value;
    });
  }

  late final _$ConveniencestoreBaseActionController =
      ActionController(name: 'ConveniencestoreBase', context: context);

  @override
  Future<dynamic> fetchConveniencestores() {
    final _$actionInfo = _$ConveniencestoreBaseActionController.startAction(
        name: 'ConveniencestoreBase.fetchConveniencestores');
    try {
      return super.fetchConveniencestores();
    } finally {
      _$ConveniencestoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
conveniencestores: ${conveniencestores}
    ''';
  }
}
