// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onlinegame.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Onlinegame _$$_OnlinegameFromJson(Map<String, dynamic> json) =>
    _$_Onlinegame(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_OnlinegameToJson(_$_Onlinegame instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OnlinegameObserver on OnlinegameBase, Store {
  late final _$onlinegamesAtom =
      Atom(name: 'OnlinegameBase.onlinegames', context: context);

  @override
  ObservableFuture<ObservableList<Onlinegame>>? get onlinegames {
    _$onlinegamesAtom.reportRead();
    return super.onlinegames;
  }

  @override
  set onlinegames(ObservableFuture<ObservableList<Onlinegame>>? value) {
    _$onlinegamesAtom.reportWrite(value, super.onlinegames, () {
      super.onlinegames = value;
    });
  }

  late final _$OnlinegameBaseActionController =
      ActionController(name: 'OnlinegameBase', context: context);

  @override
  Future<dynamic> fetchOnlinegames() {
    final _$actionInfo = _$OnlinegameBaseActionController.startAction(
        name: 'OnlinegameBase.fetchOnlinegames');
    try {
      return super.fetchOnlinegames();
    } finally {
      _$OnlinegameBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
onlinegames: ${onlinegames}
    ''';
  }
}
