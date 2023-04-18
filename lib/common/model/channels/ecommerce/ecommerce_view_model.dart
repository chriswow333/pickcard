

part of 'ecommerce.dart';

final HttpService  _httpService = HttpService();

class EcommerceObserver = EcommerceBase with _$EcommerceObserver;


abstract class EcommerceBase with Store {


  // @observable
  // ObservableSet<String> selectedEcommerceIDs = ObservableSet<String>();

  @observable
  ObservableFuture<ObservableList<Ecommerce>>? ecommerces;

  @action
  Future fetchEcommerces() {
    return ecommerces = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/ecommerces');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Ecommerce> result =
            ObservableList.of(ecommerceFromJson(jsonStr));

        return ecommerces = ObservableFuture.value(result);
      }),
    );
  }


  // @action
  // void toggleEcommerceID(String ecommerceID) {
    
  //   if(selectedEcommerceIDs.contains(ecommerceID)){
  //     selectedEcommerceIDs.remove(ecommerceID);
  //   }else{
  //     selectedEcommerceIDs.add(ecommerceID);
  //   }
  // }


  // @action
  // void toggleAllEcommerceIDs() {
    
  //   if (ecommerces == null || ecommerces!.result == null )return;
  //   ObservableList<Ecommerce> ecommerceResult = ecommerces!.result;

  //   if (selectedEcommerceIDs.length < ecommerceResult.length){

  //     for (Ecommerce e in ecommerceResult){
  //       String id = e.id!;
  //       // add the rest
  //       if (!selectedEcommerceIDs.contains(id)){
  //         toggleEcommerceID(id);
  //       }
  //     }
  //   }else {
  //     // cancel all 
  //     for (Ecommerce ec in ecommerceResult){
  //       toggleEcommerceID(ec.id!);
  //     }
  //   }
  // }
}