

part of 'appstore.dart';

final HttpService  _httpService = HttpService();

class AppstoreObserver = AppstoreBase with _$AppstoreObserver;


abstract class AppstoreBase with Store {


  @observable
  ObservableFuture<ObservableList<Appstore>>? appstores;

  @action
  Future fetchAppstores() {
    return appstores = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/appstores');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Appstore> result =
            ObservableList.of(appstoreFromJson(jsonStr));

        return appstores = ObservableFuture.value(result);
      }),
    );
  }
}