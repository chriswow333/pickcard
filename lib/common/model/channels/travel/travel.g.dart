// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Travel _$$_TravelFromJson(Map<String, dynamic> json) => _$_Travel(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_TravelToJson(_$_Travel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TravelObserver on TravelBase, Store {
  late final _$travelsAtom = Atom(name: 'TravelBase.travels', context: context);

  @override
  ObservableFuture<ObservableList<Travel>>? get travels {
    _$travelsAtom.reportRead();
    return super.travels;
  }

  @override
  set travels(ObservableFuture<ObservableList<Travel>>? value) {
    _$travelsAtom.reportWrite(value, super.travels, () {
      super.travels = value;
    });
  }

  late final _$TravelBaseActionController =
      ActionController(name: 'TravelBase', context: context);

  @override
  Future<dynamic> fetchTravels() {
    final _$actionInfo = _$TravelBaseActionController.startAction(
        name: 'TravelBase.fetchTravels');
    try {
      return super.fetchTravels();
    } finally {
      _$TravelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
travels: ${travels}
    ''';
  }
}
