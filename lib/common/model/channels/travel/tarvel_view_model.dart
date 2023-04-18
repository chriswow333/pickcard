

part of 'travel.dart';

final HttpService  _httpService = HttpService();

class TravelObserver = TravelBase with _$TravelObserver;


abstract class TravelBase with Store {


  // @observable
  // ObservableSet<String> selectedTravelIDs = ObservableSet<String>();

  @observable
  ObservableFuture<ObservableList<Travel>>? travels;

  @action
  Future fetchTravels() {
    return travels = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/travels');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Travel> result =
            ObservableList.of(travelFromJson(jsonStr));
        
        return travels = ObservableFuture.value(result);
      }),
    );
  }


  // @action
  // void toggleTravelID(String travelID) {
    
  //   if(selectedTravelIDs.contains(travelID)){
  //     selectedTravelIDs.remove(travelID);
  //   }else{
  //     selectedTravelIDs.add(travelID);
  //   }
  // }


  // @action
  // void toggleAllTravelIDs() {
    
  //   if (travels == null || travels!.result == null )return;
  //   ObservableList<Travel> travelResult = travels!.result;

  //   if (selectedTravelIDs.length < travelResult.length){

  //     for (Travel e in travelResult){
  //       String id = e.id!;
  //       // add the rest
  //       if (!selectedTravelIDs.contains(id)){
  //         toggleTravelID(id);
  //       }
  //     }
  //   }else {
  //     // cancel all 
  //     for (Travel ec in travelResult){
  //       toggleTravelID(ec.id!);
  //     }
  //   }
  // }
}