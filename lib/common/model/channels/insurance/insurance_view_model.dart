

part of 'insurance.dart';

final HttpService  _httpService = HttpService();

class InsuranceObserver = InsuranceBase with _$InsuranceObserver;


abstract class InsuranceBase with Store {


  // @observable
  // ObservableSet<String> selectedInsuranceIDs = ObservableSet<String>();

  @observable
  ObservableFuture<ObservableList<Insurance>>? insurances;

  @action
  Future fetchInsurances() {
    return insurances = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/insurances');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Insurance> result =
            ObservableList.of(insuranceFromJson(jsonStr));

        return insurances = ObservableFuture.value(result);
      }),
    );
  }


  // @action
  // void toggleInsuranceID(String insuranceID) {
    
  //   if(selectedInsuranceIDs.contains(insuranceID)){
  //     selectedInsuranceIDs.remove(insuranceID);
  //   }else{
  //     selectedInsuranceIDs.add(insuranceID);
  //   }
  // }


  // @action
  // void toggleAllInsuranceIDs() {
    
  //   if (insurances == null || insurances!.result == null )return;
  //   ObservableList<Insurance> insuranceResult = insurances!.result;

  //   if (selectedInsuranceIDs.length < insuranceResult.length){

  //     for (Insurance e in insuranceResult){
  //       String id = e.id!;
  //       // add the rest
  //       if (!selectedInsuranceIDs.contains(id)){
  //         toggleInsuranceID(id);
  //       }
  //     }
  //   }else {
  //     // cancel all 
  //     for (Insurance ec in insuranceResult){
  //       toggleInsuranceID(ec.id!);
  //     }
  //   }
  // }
}