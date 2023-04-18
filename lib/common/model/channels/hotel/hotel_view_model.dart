

part of 'hotel.dart';

final HttpService  _httpService = HttpService();

class HotelObserver = HotelBase with _$HotelObserver;


abstract class HotelBase with Store {


  // @observable
  // ObservableSet<String> selectedFoodIDs = ObservableSet<String>();

  @observable
  ObservableFuture<ObservableList<Hotel>>? hotels;

  @action
  Future fetchHotels() {
    return hotels = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/hotels');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Hotel> result =
            ObservableList.of(hotelFromJson(jsonStr));

        return hotels = ObservableFuture.value(result);
      }),
    );
  }
}