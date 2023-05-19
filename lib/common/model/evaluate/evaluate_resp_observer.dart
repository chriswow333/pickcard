part of 'evaluate_resp.dart';



final HttpService _httpService = HttpService();


class EvaluateRespObserver = EvaluateRespBase with _$EvaluateRespObserver;

final logger = Logger();

abstract class EvaluateRespBase with Store {

  @observable
  ObservableFuture<EvaluateResp>? evaluateResp;

  @action
  Future evaluate(EvaluateParams param) {
        logger.i(param);
    return evaluateResp = ObservableFuture(
     Future(() async {

        final response = await _httpService.post('/evaluator/evaluate',data:param);
      
        final jsonStr = json.encode(response.data);
        
        final EvaluateResp result = evaluateRespFromJson(jsonStr);

        // logger.i(result);

        return evaluateResp = ObservableFuture.value(result);
      }),
    );
  }
}