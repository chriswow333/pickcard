

part of 'streaming.dart';

final HttpService  _httpService = HttpService();

class StreamingObserver = StreamingBase with _$StreamingObserver;


abstract class StreamingBase with Store {


  // @observable
  // ObservableSet<String> selectedStreamingIDs = ObservableSet<String>();

  @observable
  ObservableFuture<ObservableList<Streaming>>? streamings;

  @action
  Future fetchStreamings() {
    return streamings = ObservableFuture(
      Future(() async {
        final response = await _httpService.get('/channel/streamings');
      
        final jsonStr = json.encode(response.data);
      
        final ObservableList<Streaming> result =
            ObservableList.of(streamingFromJson(jsonStr));

        return streamings = ObservableFuture.value(result);
      }),
    );
  }


  // @action
  // void toggleStreamingID(String streamingID) {
    
  //   if(selectedStreamingIDs.contains(streamingID)){
  //     selectedStreamingIDs.remove(streamingID);
  //   }else{
  //     selectedStreamingIDs.add(streamingID);
  //   }
  // }

  // @action
  // void toggleAllStreamingIDs() {
    
  //   if (streamings == null || streamings!.result == null )return;
  //   ObservableList<Streaming> streamingResult = streamings!.result;

  //   if (selectedStreamingIDs.length < streamingResult.length){

  //     for (Streaming e in streamingResult){
  //       String id = e.id!;
  //       // add the rest
  //       if (!selectedStreamingIDs.contains(id)){
  //         toggleStreamingID(id);
  //       }
  //     }
  //   }else {
  //     // cancel all 
  //     for (Streaming d in streamingResult){
  //       toggleStreamingID(d.id!);
  //     }
  //   }
  // }
}