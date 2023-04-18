// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supermarket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Supermarket _$$_SupermarketFromJson(Map<String, dynamic> json) =>
    _$_Supermarket(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_SupermarketToJson(_$_Supermarket instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SupermarketObserver on SupermarketBase, Store {
  late final _$supermarketsAtom =
      Atom(name: 'SupermarketBase.supermarkets', context: context);

  @override
  ObservableFuture<ObservableList<Supermarket>>? get supermarkets {
    _$supermarketsAtom.reportRead();
    return super.supermarkets;
  }

  @override
  set supermarkets(ObservableFuture<ObservableList<Supermarket>>? value) {
    _$supermarketsAtom.reportWrite(value, super.supermarkets, () {
      super.supermarkets = value;
    });
  }

  late final _$SupermarketBaseActionController =
      ActionController(name: 'SupermarketBase', context: context);

  @override
  Future<dynamic> fetchSupermarkets() {
    final _$actionInfo = _$SupermarketBaseActionController.startAction(
        name: 'SupermarketBase.fetchSupermarkets');
    try {
      return super.fetchSupermarkets();
    } finally {
      _$SupermarketBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
supermarkets: ${supermarkets}
    ''';
  }
}
