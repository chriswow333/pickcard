part of 'mobilepay.dart';



final HttpService _httpService = HttpService();

class MobilepayObserver = MobilepayBase with _$MobilepayObserver;

abstract class MobilepayBase with Store {


  // @observable
  // ObservableSet<String> selectedMobilepayIDs = ObservableSet<String>();
  

  @observable
  ObservableFuture<ObservableList<Mobilepay>>? mobilepays;


 @action
  Future fetchMobilepays() {
    return mobilepays = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/mobilepays');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Mobilepay> result =
          ObservableList.of(mobilepayFromJson(jsonStr));

        return mobilepays = ObservableFuture.value(result);
      }),
    );
  }


//   @action
//   void toggleMobilepayID(String mobilepayID) {
    
//     if(selectedMobilepayIDs.contains(mobilepayID)){
//       selectedMobilepayIDs.remove(mobilepayID);
//     }else{
//       selectedMobilepayIDs.add(mobilepayID);
//     }
//   }

// @action
//   void toggleAllMobilepayIDs() {
    
//     if (mobilepays == null || mobilepays!.result == null )return;
//     ObservableList<Mobilepay> mobilepayResult = mobilepays!.result;

//     if (selectedMobilepayIDs.length < mobilepayResult.length){

//       for (Mobilepay m in mobilepayResult){
//         String id = m.id!;
//         // add the rest
//         if (!selectedMobilepayIDs.contains(id)){
//           toggleMobilepayID(id);
//         }
//       }
//     }else {
//       // cancel all 
//       for (Mobilepay m in mobilepayResult){
//         toggleMobilepayID(m.id!);
//       }
//     }
//   }
}
