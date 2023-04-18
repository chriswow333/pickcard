// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Hotel _$$_HotelFromJson(Map<String, dynamic> json) => _$_Hotel(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_HotelToJson(_$_Hotel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HotelObserver on HotelBase, Store {
  late final _$hotelsAtom = Atom(name: 'HotelBase.hotels', context: context);

  @override
  ObservableFuture<ObservableList<Hotel>>? get hotels {
    _$hotelsAtom.reportRead();
    return super.hotels;
  }

  @override
  set hotels(ObservableFuture<ObservableList<Hotel>>? value) {
    _$hotelsAtom.reportWrite(value, super.hotels, () {
      super.hotels = value;
    });
  }

  late final _$HotelBaseActionController =
      ActionController(name: 'HotelBase', context: context);

  @override
  Future<dynamic> fetchHotels() {
    final _$actionInfo =
        _$HotelBaseActionController.startAction(name: 'HotelBase.fetchHotels');
    try {
      return super.fetchHotels();
    } finally {
      _$HotelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hotels: ${hotels}
    ''';
  }
}
