// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amusement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Amusement _$$_AmusementFromJson(Map<String, dynamic> json) => _$_Amusement(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_AmusementToJson(_$_Amusement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AmusementObserver on AmusementBase, Store {
  late final _$amusementsAtom =
      Atom(name: 'AmusementBase.amusements', context: context);

  @override
  ObservableFuture<ObservableList<Amusement>>? get amusements {
    _$amusementsAtom.reportRead();
    return super.amusements;
  }

  @override
  set amusements(ObservableFuture<ObservableList<Amusement>>? value) {
    _$amusementsAtom.reportWrite(value, super.amusements, () {
      super.amusements = value;
    });
  }

  late final _$AmusementBaseActionController =
      ActionController(name: 'AmusementBase', context: context);

  @override
  Future<dynamic> fetchAmusements() {
    final _$actionInfo = _$AmusementBaseActionController.startAction(
        name: 'AmusementBase.fetchAmusements');
    try {
      return super.fetchAmusements();
    } finally {
      _$AmusementBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
amusements: ${amusements}
    ''';
  }
}
