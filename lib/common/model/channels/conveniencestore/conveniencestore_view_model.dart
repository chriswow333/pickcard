

part of 'conveniencestore.dart';

final HttpService  _httpService = HttpService();

class ConveniencestoreObserver = ConveniencestoreBase with _$ConveniencestoreObserver;


abstract class ConveniencestoreBase with Store {


  @observable
  ObservableFuture<ObservableList<Conveniencestore>>? conveniencestores;

  @action
  Future fetchConveniencestores() {
    return conveniencestores = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/conveniencestores');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Conveniencestore> result =
            ObservableList.of(conveniencestoreFromJson(jsonStr));

        return conveniencestores = ObservableFuture.value(result);
      }),
    );
  }
}