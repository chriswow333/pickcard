

part of 'mall.dart';

final HttpService  _httpService = HttpService();

class MallObserver = MallBase with _$MallObserver;


abstract class MallBase with Store {


  @observable
  ObservableFuture<ObservableList<Mall>>? malls;

  @action
  Future fetchMalls() {
    return malls = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/malls');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Mall> result =
            ObservableList.of(mallFromJson(jsonStr));

        return malls = ObservableFuture.value(result);
      }),
    );
  }

}