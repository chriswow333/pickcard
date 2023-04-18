// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insurance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Insurance _$$_InsuranceFromJson(Map<String, dynamic> json) => _$_Insurance(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_InsuranceToJson(_$_Insurance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$InsuranceObserver on InsuranceBase, Store {
  late final _$insurancesAtom =
      Atom(name: 'InsuranceBase.insurances', context: context);

  @override
  ObservableFuture<ObservableList<Insurance>>? get insurances {
    _$insurancesAtom.reportRead();
    return super.insurances;
  }

  @override
  set insurances(ObservableFuture<ObservableList<Insurance>>? value) {
    _$insurancesAtom.reportWrite(value, super.insurances, () {
      super.insurances = value;
    });
  }

  late final _$InsuranceBaseActionController =
      ActionController(name: 'InsuranceBase', context: context);

  @override
  Future<dynamic> fetchInsurances() {
    final _$actionInfo = _$InsuranceBaseActionController.startAction(
        name: 'InsuranceBase.fetchInsurances');
    try {
      return super.fetchInsurances();
    } finally {
      _$InsuranceBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
insurances: ${insurances}
    ''';
  }
}
