// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ecommerce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Ecommerce _$$_EcommerceFromJson(Map<String, dynamic> json) => _$_Ecommerce(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_EcommerceToJson(_$_Ecommerce instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EcommerceObserver on EcommerceBase, Store {
  late final _$ecommercesAtom =
      Atom(name: 'EcommerceBase.ecommerces', context: context);

  @override
  ObservableFuture<ObservableList<Ecommerce>>? get ecommerces {
    _$ecommercesAtom.reportRead();
    return super.ecommerces;
  }

  @override
  set ecommerces(ObservableFuture<ObservableList<Ecommerce>>? value) {
    _$ecommercesAtom.reportWrite(value, super.ecommerces, () {
      super.ecommerces = value;
    });
  }

  late final _$EcommerceBaseActionController =
      ActionController(name: 'EcommerceBase', context: context);

  @override
  Future<dynamic> fetchEcommerces() {
    final _$actionInfo = _$EcommerceBaseActionController.startAction(
        name: 'EcommerceBase.fetchEcommerces');
    try {
      return super.fetchEcommerces();
    } finally {
      _$EcommerceBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
ecommerces: ${ecommerces}
    ''';
  }
}
