

part of 'amusement.dart';

final HttpService  _httpService = HttpService();

class AmusementObserver = AmusementBase with _$AmusementObserver;


abstract class AmusementBase with Store {



  @observable
  ObservableFuture<ObservableList<Amusement>>? amusements;

  @action
  Future fetchAmusements() {
    return amusements = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/amusements');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Amusement> result =
            ObservableList.of(amusementFromJson(jsonStr));

        return amusements = ObservableFuture.value(result);
      }),
    );
  }
}