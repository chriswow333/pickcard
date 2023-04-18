// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobilepay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Mobilepay _$$_MobilepayFromJson(Map<String, dynamic> json) => _$_Mobilepay(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_MobilepayToJson(_$_Mobilepay instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MobilepayObserver on MobilepayBase, Store {
  late final _$mobilepaysAtom =
      Atom(name: 'MobilepayBase.mobilepays', context: context);

  @override
  ObservableFuture<ObservableList<Mobilepay>>? get mobilepays {
    _$mobilepaysAtom.reportRead();
    return super.mobilepays;
  }

  @override
  set mobilepays(ObservableFuture<ObservableList<Mobilepay>>? value) {
    _$mobilepaysAtom.reportWrite(value, super.mobilepays, () {
      super.mobilepays = value;
    });
  }

  late final _$MobilepayBaseActionController =
      ActionController(name: 'MobilepayBase', context: context);

  @override
  Future<dynamic> fetchMobilepays() {
    final _$actionInfo = _$MobilepayBaseActionController.startAction(
        name: 'MobilepayBase.fetchMobilepays');
    try {
      return super.fetchMobilepays();
    } finally {
      _$MobilepayBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mobilepays: ${mobilepays}
    ''';
  }
}
