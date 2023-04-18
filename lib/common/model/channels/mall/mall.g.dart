// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mall.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Mall _$$_MallFromJson(Map<String, dynamic> json) => _$_Mall(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_MallToJson(_$_Mall instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MallObserver on MallBase, Store {
  late final _$mallsAtom = Atom(name: 'MallBase.malls', context: context);

  @override
  ObservableFuture<ObservableList<Mall>>? get malls {
    _$mallsAtom.reportRead();
    return super.malls;
  }

  @override
  set malls(ObservableFuture<ObservableList<Mall>>? value) {
    _$mallsAtom.reportWrite(value, super.malls, () {
      super.malls = value;
    });
  }

  late final _$MallBaseActionController =
      ActionController(name: 'MallBase', context: context);

  @override
  Future<dynamic> fetchMalls() {
    final _$actionInfo =
        _$MallBaseActionController.startAction(name: 'MallBase.fetchMalls');
    try {
      return super.fetchMalls();
    } finally {
      _$MallBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
malls: ${malls}
    ''';
  }
}
