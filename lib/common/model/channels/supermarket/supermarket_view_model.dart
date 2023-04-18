

part of 'supermarket.dart';

final HttpService  _httpService = HttpService();

class SupermarketObserver = SupermarketBase with _$SupermarketObserver;


abstract class SupermarketBase with Store {


  // @observable
  // ObservableSet<String> selectedSupermarketIDs = ObservableSet<String>();

  @observable
  ObservableFuture<ObservableList<Supermarket>>? supermarkets;

  @action
  Future fetchSupermarkets() {
    return supermarkets = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/supermarkets');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Supermarket> result =
            ObservableList.of(supermarketFromJson(jsonStr));

        return supermarkets = ObservableFuture.value(result);
      }),
    );
  }


  // @action
  // void toggleSupermarketID(String supermarketID) {
    
  //   if(selectedSupermarketIDs.contains(supermarketID)){
  //     selectedSupermarketIDs.remove(supermarketID);
  //   }else{
  //     selectedSupermarketIDs.add(supermarketID);
  //   }
  // }

  // @action
  // void toggleAllSupermarketIDs() {
    
  //   if (supermarkets == null || supermarkets!.result == null )return;
  //   ObservableList<Supermarket> supermarketResult = supermarkets!.result;

  //   if (selectedSupermarketIDs.length < supermarketResult.length){

  //     for (Supermarket e in supermarketResult){
  //       String id = e.id!;
  //       // add the rest
  //       if (!selectedSupermarketIDs.contains(id)){
  //         toggleSupermarketID(id);
  //       }
  //     }
  //   }else {
  //     // cancel all 
  //     for (Supermarket d in supermarketResult){
  //       toggleSupermarketID(d.id!);
  //     }
  //   }
  // }
}