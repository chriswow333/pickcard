

part of 'food.dart';

final HttpService  _httpService = HttpService();

class FoodObserver = FoodBase with _$FoodObserver;


abstract class FoodBase with Store {


  // @observable
  // ObservableSet<String> selectedFoodIDs = ObservableSet<String>();

  @observable
  ObservableFuture<ObservableList<Food>>? foods;

  @action
  Future fetchFoods() {
    return foods = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/foods');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Food> result =
            ObservableList.of(foodFromJson(jsonStr));

        return foods = ObservableFuture.value(result);
      }),
    );
  }


  // @action
  // void toggleFoodID(String foodID) {
    
  //   if(selectedFoodIDs.contains(foodID)){
  //     selectedFoodIDs.remove(foodID);
  //   }else{
  //     selectedFoodIDs.add(foodID);
  //   }
  // }

  // @action
  // void toggleAllFoodIDs() {
    
  //   if (foods == null || foods!.result == null )return;
  //   ObservableList<Food> foodResult = foods!.result;

  //   if (selectedFoodIDs.length < foodResult.length){

  //     for (Food e in foodResult){
  //       String id = e.id!;
  //       // add the rest
  //       if (!selectedFoodIDs.contains(id)){
  //         toggleFoodID(id);
  //       }
  //     }
  //   }else {
  //     // cancel all 
  //     for (Food d in foodResult){
  //       toggleFoodID(d.id!);
  //     }
  //   }
  // }
}