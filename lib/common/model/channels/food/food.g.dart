// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Food _$$_FoodFromJson(Map<String, dynamic> json) => _$_Food(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_FoodToJson(_$_Food instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FoodObserver on FoodBase, Store {
  late final _$foodsAtom = Atom(name: 'FoodBase.foods', context: context);

  @override
  ObservableFuture<ObservableList<Food>>? get foods {
    _$foodsAtom.reportRead();
    return super.foods;
  }

  @override
  set foods(ObservableFuture<ObservableList<Food>>? value) {
    _$foodsAtom.reportWrite(value, super.foods, () {
      super.foods = value;
    });
  }

  late final _$FoodBaseActionController =
      ActionController(name: 'FoodBase', context: context);

  @override
  Future<dynamic> fetchFoods() {
    final _$actionInfo =
        _$FoodBaseActionController.startAction(name: 'FoodBase.fetchFoods');
    try {
      return super.fetchFoods();
    } finally {
      _$FoodBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
foods: ${foods}
    ''';
  }
}
