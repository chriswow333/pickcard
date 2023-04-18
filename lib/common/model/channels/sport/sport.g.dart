// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sport _$$_SportFromJson(Map<String, dynamic> json) => _$_Sport(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_SportToJson(_$_Sport instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SportObserver on SportBase, Store {
  late final _$sportsAtom = Atom(name: 'SportBase.sports', context: context);

  @override
  ObservableFuture<ObservableList<Sport>>? get sports {
    _$sportsAtom.reportRead();
    return super.sports;
  }

  @override
  set sports(ObservableFuture<ObservableList<Sport>>? value) {
    _$sportsAtom.reportWrite(value, super.sports, () {
      super.sports = value;
    });
  }

  late final _$SportBaseActionController =
      ActionController(name: 'SportBase', context: context);

  @override
  Future<dynamic> fetchSports() {
    final _$actionInfo =
        _$SportBaseActionController.startAction(name: 'SportBase.fetchSports');
    try {
      return super.fetchSports();
    } finally {
      _$SportBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
sports: ${sports}
    ''';
  }
}
