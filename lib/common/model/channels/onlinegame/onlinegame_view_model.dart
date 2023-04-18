

part of 'onlinegame.dart';

final HttpService  _httpService = HttpService();

class OnlinegameObserver = OnlinegameBase with _$OnlinegameObserver;


abstract class OnlinegameBase with Store {


  // @observable
  // ObservableSet<String> selectedOnlinegameIDs = ObservableSet<String>();

  @observable
  ObservableFuture<ObservableList<Onlinegame>>? onlinegames;

  @action
  Future fetchOnlinegames() {
    return onlinegames = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/onlinegames');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Onlinegame> result =
            ObservableList.of(onlinegameFromJson(jsonStr));

        return onlinegames = ObservableFuture.value(result);
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