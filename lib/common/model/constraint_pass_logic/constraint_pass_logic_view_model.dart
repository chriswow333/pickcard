part of 'constraint_pass_logic.dart';



final HttpService _httpService = HttpService();


class ConstraintPassLogicViewModel = ConstraintPassLogicBase with _$ConstraintPassLogicViewModel;


abstract class ConstraintPassLogicBase with Store {


  @observable
  ObservableFuture<ConstraintPassLogic>? cardReward;


  @action
  Future fetchCardReward(String cardRewardID){
    return cardReward = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/card/evaluateConstraintLogic/' + cardRewardID);
      
        final jsonStr = json.encode(response.data);
      
        final ConstraintPassLogic result = constraintPassLogicFromJson(jsonStr);
        
        return ObservableFuture.value(result);
      })
    );
  }
}



