

part of 'transportation.dart';

final HttpService  _httpService = HttpService();

class TransportationObserver = SupermarketBase with _$TransportationObserver;


abstract class SupermarketBase with Store {


  // @observable
  // ObservableSet<String> selectedTransportationIDs = ObservableSet<String>();

  @observable
  ObservableFuture<ObservableList<Transportation>>? transportations;

  @action
  Future fetchTransportations() {
    return transportations = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/transportations');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Transportation> result =
            ObservableList.of(transportationFromJson(jsonStr));

        return transportations = ObservableFuture.value(result);
      }),
    );
  }


  // @action
  // void toggleTransportationID(String transportationID) {
    
  //   if(selectedTransportationIDs.contains(transportationID)){
  //     selectedTransportationIDs.remove(transportationID);
  //   }else{
  //     selectedTransportationIDs.add(transportationID);
  //   }
  // }

  // @action
  // void toggleAllTransportationIDs() {
    
  //   if (transportations == null || transportations!.result == null )return;
  //   ObservableList<Transportation> transportationResult = transportations!.result;

  //   if (selectedTransportationIDs.length < transportationResult.length){

  //     for (Transportation e in transportationResult){
  //       String id = e.id!;
  //       // add the rest
  //       if (!selectedTransportationIDs.contains(id)){
  //         toggleTransportationID(id);
  //       }
  //     }
  //   }else {
  //     // cancel all 
  //     for (Transportation d in transportationResult){
  //       toggleTransportationID(d.id!);
  //     }
  //   }
  // }
}