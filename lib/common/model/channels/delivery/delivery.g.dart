// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Delivery _$$_DeliveryFromJson(Map<String, dynamic> json) => _$_Delivery(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_DeliveryToJson(_$_Delivery instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DeliveryObserver on DeliveryBase, Store {
  late final _$deliveriesAtom =
      Atom(name: 'DeliveryBase.deliveries', context: context);

  @override
  ObservableFuture<ObservableList<Delivery>>? get deliveries {
    _$deliveriesAtom.reportRead();
    return super.deliveries;
  }

  @override
  set deliveries(ObservableFuture<ObservableList<Delivery>>? value) {
    _$deliveriesAtom.reportWrite(value, super.deliveries, () {
      super.deliveries = value;
    });
  }

  late final _$DeliveryBaseActionController =
      ActionController(name: 'DeliveryBase', context: context);

  @override
  Future<dynamic> fetchDeliveries() {
    final _$actionInfo = _$DeliveryBaseActionController.startAction(
        name: 'DeliveryBase.fetchDeliveries');
    try {
      return super.fetchDeliveries();
    } finally {
      _$DeliveryBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
deliveries: ${deliveries}
    ''';
  }
}
