

part of 'sport.dart';

final HttpService  _httpService = HttpService();

class SportObserver = SportBase with _$SportObserver;


abstract class SportBase with Store {

  @observable
  ObservableFuture<ObservableList<Sport>>? sports;

  @action
  Future fetchSports() {
    return sports = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/sports');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Sport> result =
            ObservableList.of(sportFromJson(jsonStr));

        return sports = ObservableFuture.value(result);
      }),
    );
  }


}