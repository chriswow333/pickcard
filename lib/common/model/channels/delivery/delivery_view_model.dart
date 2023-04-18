

part of 'delivery.dart';

final HttpService  _httpService = HttpService();

class DeliveryObserver = DeliveryBase with _$DeliveryObserver;


abstract class DeliveryBase with Store {


  // @observable
  // ObservableSet<String> selectedDeliveryIDs = ObservableSet<String>();

  @observable
  ObservableFuture<ObservableList<Delivery>>? deliveries;

  @action
  Future fetchDeliveries() {
    return deliveries = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/deliveries');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Delivery> result =
            ObservableList.of(deliveryFromJson(jsonStr));

        return deliveries = ObservableFuture.value(result);
      }),
    );
  }


  // @action
  // void toggleDeliveryID(String deliveryID) {
    
  //   if(selectedDeliveryIDs.contains(deliveryID)){
  //     selectedDeliveryIDs.remove(deliveryID);
  //   }else{
  //     selectedDeliveryIDs.add(deliveryID);
  //   }
  // }

  // @action
  // void toggleAllDeliveryIDs() {
    
  //   if (deliveries == null || deliveries!.result == null )return;
  //   ObservableList<Delivery> deliveryResult = deliveries!.result;

  //   if (selectedDeliveryIDs.length < deliveryResult.length){

  //     for (Delivery e in deliveryResult){
  //       String id = e.id!;
  //       // add the rest
  //       if (!selectedDeliveryIDs.contains(id)){
  //         toggleDeliveryID(id);
  //       }
  //     }
  //   }else {
  //     // cancel all 
  //     for (Delivery d in deliveryResult){
  //       toggleDeliveryID(d.id!);
  //     }
  //   }
  // }
}