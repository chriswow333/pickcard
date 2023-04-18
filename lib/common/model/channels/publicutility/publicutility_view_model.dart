

part of 'publicutility.dart';

final HttpService  _httpService = HttpService();

class PublicutilityObserver = PublicutilityBase with _$PublicutilityObserver;


abstract class PublicutilityBase with Store {


  // @observable
  // ObservableSet<String> selectedOnlinegameIDs = ObservableSet<String>();

  @observable
  ObservableFuture<ObservableList<Publicutility>>? publicutilities;

  @action
  Future fetchPublicutilities() {
    return publicutilities = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/publicutilities');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Publicutility> result =
            ObservableList.of(publicutilityFromJson(jsonStr));

        return publicutilities = ObservableFuture.value(result);
      }),
    );
  }


  // @action
  // void toggleOnlinegameID(String onlinegameID) {
    
  //   if(selectedOnlinegameIDs.contains(onlinegameID)){
  //     selectedOnlinegameIDs.remove(onlinegameID);
  //   }else{
  //     selectedOnlinegameIDs.add(onlinegameID);
  //   }
  // }

  // @action
  // void toggleAllOnlinegameIDs() {
    
  //   if (onlinegames == null || onlinegames!.result == null )return;
  //   ObservableList<Onlinegame> onlinegameResult = onlinegames!.result;

  //   if (selectedOnlinegameIDs.length < onlinegameResult.length){

  //     for (Onlinegame e in onlinegameResult){
  //       String id = e.id!;
  //       // add the rest
  //       if (!selectedOnlinegameIDs.contains(id)){
  //         toggleOnlinegameID(id);
  //       }
  //     }
  //   }else {
  //     // cancel all 
  //     for (Onlinegame d in onlinegameResult){
  //       toggleOnlinegameID(d.id!);
  //     }
  //   }
  // }
}