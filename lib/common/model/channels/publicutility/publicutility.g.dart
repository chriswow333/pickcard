// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publicutility.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Publicutility _$$_PublicutilityFromJson(Map<String, dynamic> json) =>
    _$_Publicutility(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_PublicutilityToJson(_$_Publicutility instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PublicutilityObserver on PublicutilityBase, Store {
  late final _$publicutilitiesAtom =
      Atom(name: 'PublicutilityBase.publicutilities', context: context);

  @override
  ObservableFuture<ObservableList<Publicutility>>? get publicutilities {
    _$publicutilitiesAtom.reportRead();
    return super.publicutilities;
  }

  @override
  set publicutilities(ObservableFuture<ObservableList<Publicutility>>? value) {
    _$publicutilitiesAtom.reportWrite(value, super.publicutilities, () {
      super.publicutilities = value;
    });
  }

  late final _$PublicutilityBaseActionController =
      ActionController(name: 'PublicutilityBase', context: context);

  @override
  Future<dynamic> fetchPublicutilities() {
    final _$actionInfo = _$PublicutilityBaseActionController.startAction(
        name: 'PublicutilityBase.fetchPublicutilities');
    try {
      return super.fetchPublicutilities();
    } finally {
      _$PublicutilityBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
publicutilities: ${publicutilities}
    ''';
  }
}
