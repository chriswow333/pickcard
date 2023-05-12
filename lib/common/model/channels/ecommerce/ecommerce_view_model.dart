

part of 'ecommerce.dart';

final HttpService  _httpService = HttpService();

class EcommerceObserver = EcommerceBase with _$EcommerceObserver;


abstract class EcommerceBase with Store {

  @observable
  ObservableList<Ecommerce> ecommerces = ObservableList<Ecommerce>();

  @observable
  ObservableFuture<ObservableList<Ecommerce>>? ecommerceFuture;

  @observable
  bool isLoading = true;

  // @action
  // set changeLoadingStatus(bool value){
  //   this.isLoading = value;
  // }

  @action
  Future fetchEcommerces(int offset) async {
    return ecommerceFuture = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/ecommerces?offset='+offset.toString());
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Ecommerce> result =
            ObservableList.of(ecommerceFromJson(jsonStr));

        ecommerces.addAll(result);
        
        return ecommerceFuture = ObservableFuture.value(result);
      }),
    );

      // runInAction((){
      //   isLoading = true;
      // });

      // final response = await _httpService.get('/channel/ecommerces?offset='+offset.toString());
    
      // final jsonStr = json.encode(response.data);
    
      // final ObservableList<Ecommerce> result = ObservableList.of(ecommerceFromJson(jsonStr));
      // runInAction(() {
      //   ecommerces.addAll(result);
      //   isLoading = false;
      // });
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