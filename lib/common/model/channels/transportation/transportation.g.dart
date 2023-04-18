// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transportation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Transportation _$$_TransportationFromJson(Map<String, dynamic> json) =>
    _$_Transportation(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_TransportationToJson(_$_Transportation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TransportationObserver on SupermarketBase, Store {
  late final _$transportationsAtom =
      Atom(name: 'SupermarketBase.transportations', context: context);

  @override
  ObservableFuture<ObservableList<Transportation>>? get transportations {
    _$transportationsAtom.reportRead();
    return super.transportations;
  }

  @override
  set transportations(ObservableFuture<ObservableList<Transportation>>? value) {
    _$transportationsAtom.reportWrite(value, super.transportations, () {
      super.transportations = value;
    });
  }

  late final _$SupermarketBaseActionController =
      ActionController(name: 'SupermarketBase', context: context);

  @override
  Future<dynamic> fetchTransportations() {
    final _$actionInfo = _$SupermarketBaseActionController.startAction(
        name: 'SupermarketBase.fetchTransportations');
    try {
      return super.fetchTransportations();
    } finally {
      _$SupermarketBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
transportations: ${transportations}
    ''';
  }
}
