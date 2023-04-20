part of 'card_reward.dart';


final HttpService _httpService = HttpService();


class CardRewardObserver = CardRewardBase with _$CardRewardObserver;


abstract class CardRewardBase with Store {

  @observable
  ObservableFuture<CardReward>? cardReward;

  @action
  Future fetchCardReward(String cardID){
    return cardReward = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/card/resp/' + cardID);
      
        final jsonStr = json.encode(response.data);
      
        final CardReward result = cardRewardFromJson(jsonStr);

        return ObservableFuture.value(result);
        
      })
    );
  }

}



