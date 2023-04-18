

part of 'cinema.dart';

final HttpService  _httpService = HttpService();

class CinemaObserver = CinemaBase with _$CinemaObserver;


abstract class CinemaBase with Store {


  @observable
  ObservableFuture<ObservableList<Cinema>>? cinemas;

  @action
  Future fetchCinemas() {
    return cinemas = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/cinemas');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Cinema> result =
            ObservableList.of(cinemaFromJson(jsonStr));

        return cinemas = ObservableFuture.value(result);
      }),
    );
  }
}