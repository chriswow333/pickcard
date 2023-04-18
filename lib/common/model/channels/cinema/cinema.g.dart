// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cinema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cinema _$$_CinemaFromJson(Map<String, dynamic> json) => _$_Cinema(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_CinemaToJson(_$_Cinema instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CinemaObserver on CinemaBase, Store {
  late final _$cinemasAtom = Atom(name: 'CinemaBase.cinemas', context: context);

  @override
  ObservableFuture<ObservableList<Cinema>>? get cinemas {
    _$cinemasAtom.reportRead();
    return super.cinemas;
  }

  @override
  set cinemas(ObservableFuture<ObservableList<Cinema>>? value) {
    _$cinemasAtom.reportWrite(value, super.cinemas, () {
      super.cinemas = value;
    });
  }

  late final _$CinemaBaseActionController =
      ActionController(name: 'CinemaBase', context: context);

  @override
  Future<dynamic> fetchCinemas() {
    final _$actionInfo = _$CinemaBaseActionController.startAction(
        name: 'CinemaBase.fetchCinemas');
    try {
      return super.fetchCinemas();
    } finally {
      _$CinemaBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cinemas: ${cinemas}
    ''';
  }
}
