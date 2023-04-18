// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appstore.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Appstore _$$_AppstoreFromJson(Map<String, dynamic> json) => _$_Appstore(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_AppstoreToJson(_$_Appstore instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppstoreObserver on AppstoreBase, Store {
  late final _$appstoresAtom =
      Atom(name: 'AppstoreBase.appstores', context: context);

  @override
  ObservableFuture<ObservableList<Appstore>>? get appstores {
    _$appstoresAtom.reportRead();
    return super.appstores;
  }

  @override
  set appstores(ObservableFuture<ObservableList<Appstore>>? value) {
    _$appstoresAtom.reportWrite(value, super.appstores, () {
      super.appstores = value;
    });
  }

  late final _$AppstoreBaseActionController =
      ActionController(name: 'AppstoreBase', context: context);

  @override
  Future<dynamic> fetchAppstores() {
    final _$actionInfo = _$AppstoreBaseActionController.startAction(
        name: 'AppstoreBase.fetchAppstores');
    try {
      return super.fetchAppstores();
    } finally {
      _$AppstoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
appstores: ${appstores}
    ''';
  }
}
