
part of 'creditcard.dart';


final HttpService  _httpService = HttpService();


class CreditCardRepo extends CreditCardBase with _$CreditCardRepo{}


abstract class CreditCardBase with Store {

  // @observable
  // ObservableFuture<ObservableList<Card>>? cardFuture;

  // @action
  Future<List<CreditCard>> fetchCards(List<String> like) {
    final creditCardParams = CreditCardParams(likes:like);
    return Future(() async {
      
      print(creditCardParams);
      final response = await _httpService.post('/card/likecard',data:creditCardParams);
      final jsonStr = json.encode(response.data);
      print("aa : " + jsonStr);
      return cardFromJson(jsonStr);
    });


    // runInAction((){
    //   isLoading = true;
    // });

    // final response = await _httpService.get('/card/likecard');
  
    // final jsonStr = json.encode(response.data);
  
    // final ObservableList<Card> result = ObservableList.of(cardFromJson(jsonStr));
    // runInAction(() {
    //   cardObs.addAll(result);
    //   isLoading = false;
    // });

  }

}

class CreditCardParams {

  CreditCardParams({
    required this.likes,
  });

  List<String> likes = [];

  CreditCardParams.fromJson(Map<String, dynamic> json) 
  : likes = json['likes'];

  Map<String, dynamic> toJson(){
    return {
      'likes':likes,
    };
  }

}
