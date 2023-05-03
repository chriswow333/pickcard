


import 'package:flutter/material.dart';
import 'package:pickcard/common/model/channels/amusement/amusement.dart';
import 'package:pickcard/common/model/channels/appstore/appstore.dart';
import 'package:pickcard/common/model/channels/cinema/cinema.dart';
import 'package:pickcard/common/model/channels/conveniencestore/conveniencestore.dart';
import 'package:pickcard/common/model/channels/delivery/delivery.dart';
import 'package:pickcard/common/model/channels/ecommerce/ecommerce.dart';
import 'package:pickcard/common/model/channels/food/food.dart';
import 'package:pickcard/common/model/channels/hotel/hotel.dart';
import 'package:pickcard/common/model/channels/mall/mall.dart';
import 'package:pickcard/common/model/channels/onlinegame/onlinegame.dart';
import 'package:pickcard/common/model/channels/publicutility/publicutility.dart';
import 'package:pickcard/common/model/channels/sport/sport.dart';
import 'package:pickcard/common/model/channels/streaming/streaming.dart';
import 'package:pickcard/common/model/channels/supermarket/supermarket.dart';
import 'package:pickcard/common/model/channels/transportation/transportation.dart';
import 'package:pickcard/common/model/evaluate/evaluate_resp.dart';
import 'package:pickcard/common/model/evaluate/param.dart';
import 'package:pickcard/common/model/channels/insurance/insurance.dart';
import 'package:pickcard/common/model/channels/mobilepay/mobilepay.dart';
import 'package:pickcard/common/model/channels/travel/travel.dart';
import 'package:pickcard/common/repository/storage.dart';
import 'package:pickcard/page/cardcontent/model/card_reward/card_reward.dart';
import 'package:provider/provider.dart';



class CardFeatureViewModel extends ChangeNotifier{

  String _selectedFeature = "卡片優惠";
  
  final List<String> _features = ["卡片優惠", "其他優惠"];
  

  String getSelectedFeature(){
    return _selectedFeature; 
  }

  void toggelFeature(String feature){
    _selectedFeature = feature;
    notifyListeners();
  }

  List<String> getFeatures(){
    return _features;
  }

}

class Channels {

  static final Map<int, String> _channelTypeName = {
    0:"not found",

    2:"任務清單",
    3:"行動支付 ",
    4:"網路購物",
    5:"生鮮超市",
    6:"遊戲",
    7:"影音串流",
    8:"美食",
    9:"交通",
    10:"旅遊",
    11:"外送",
    12:"保險",
    13:"百貨",
    14:"運動",
    15:"超市",
    16:"App store",
    17:"飯店",
    18:"遊樂園",
    19:"影城",
    20:"公共事業",
  };

  static Map<int, String> getChannels(){
    return _channelTypeName;
  }

  static String getChannelTypeName(int channelType) {
    return _channelTypeName.containsKey(channelType) ? _channelTypeName[channelType]!:"";
  }

}


class RewardTypes {

  // static final Map<int, String> _rewardTypeName = {
  //   0:"不拘",
  //   1:"現金回饋",
  //   2:"LINE POINT",

  // };


   static final Map<int, Color> _rewardTypeColor = {
    1:Colors.amber[700]!,
    2:Colors.greenAccent[700]!,
  };



  static Color getRewardTypeColor(int rewardType) {
    return (rewardType == 1) ?  _rewardTypeColor[1]!:_rewardTypeColor[2]!;
  }

}


class RewardTypeLimitTypeName {
  
  static final Map<int, String> _rewardTypeLimitTypeName = {
    1:"限量",
    2:"限時",
    3:"需登錄",
    4:"新戶"
  };

  static String getRewardTypeLimitName(int rewardType){
    return _rewardTypeLimitTypeName[rewardType] ?? ""; 
  }

}


class ChannelModel {

  final String id;
  final String name;

  ChannelModel({required this.id, required this.name});
}



class CardModel {


  final String _cardID = CardIDRepository.getCardID();

  late String _bankName;
  late String _cardName;
  late String _imagePath;
  late String _linkURL;
  late List<String> _descs;

  final Map<int, String> _feedbackTypeNames = {};
  final List<OtherReward> _otherRewards = [];


  final Map<String, CardRewardModel> _cardRewardModels = {};

  CardModel(CardReward cardReward){
    
    _bankName = cardReward.bankName ?? "";
    _cardName = cardReward.name ?? "";
    _imagePath = cardReward.imagePath ?? "";
    
    _descs = cardReward.descs ?? [];

    _linkURL = cardReward.linkURL ?? "";

    for(CardRewardResp cardRewardResp in cardReward.cardRewardResps!) {
      String cardRewardID = cardRewardResp.id ?? "";
      CardRewardModel cardRewardModel = CardRewardModel(cardRewardResp);
      _cardRewardModels[cardRewardID] = cardRewardModel;
      
      switch (cardRewardResp.rewardType) {
        case 1:
          // _feedbackTypeNames[cardRewardResp!.feedbackBonus!.feedbackType!] = cardRewardResp.feedbackDesc!.name!;  
        break;
        case 2:
        
        break;
      }
      
    }
 

    transferCardOtherReward(cardReward.otherRewardResps ?? []);
  }

  
  
  void transferCardOtherReward(List<OtherRewardResp> otherRewardResps){
    for(OtherRewardResp otherRewardResp in otherRewardResps){

      String title = otherRewardResp.title ?? "";
      List<String> descs = otherRewardResp.descs ?? [];
      OtherReward otherReward = OtherReward(title:title, descs:descs);

      _otherRewards.add(otherReward);
    }
  }

  List<OtherReward> getCardOtherRewards() => _otherRewards;


  List<CardRewardModel> getCardRewardModels(){

    List<CardRewardModel> cardRewardModels = [];

    _cardRewardModels.forEach((key, value) {
      cardRewardModels.add(value);
    });

    return cardRewardModels;
  }

  CardRewardModel? getCardRewardModelByCardRewardID(String cardRewardID){
    return _cardRewardModels.containsKey(cardRewardID) ? _cardRewardModels[cardRewardID]:null;
  }


  int getRewardTypeByCardRewardID(String cardRewardID){
     
    if(!_cardRewardModels.containsKey(cardRewardID)) return 0;

    return _cardRewardModels[cardRewardID]!.getRewardType();

  }


  // Set<int> getRewardTypes(){
    
  //   Set<int> rewardTypes = {};
    
  //   _cardRewardModels.forEach((key, value) {
      
  //     int rewardType = value.getRewardType();
      

  //     rewardTypes.add(rewardType);
  //   });

  //   return rewardTypes;
  // }


  Map<int, List> getCardRewardChannelsByCardReward(String cardRewardID){
    
    if(!_cardRewardModels.containsKey(cardRewardID))return {};

    return _cardRewardModels[cardRewardID]!.getCardRewardChannels();
  }


  List<ChannelModel> getCardRewardChannelsByChannelType(String cardRewardID, int channelType){
    
    if(!_cardRewardModels.containsKey(cardRewardID))return [];
    
    if(!_cardRewardModels[cardRewardID]!.getCardRewardChannels().containsKey(channelType))return [];
    
    return _cardRewardModels[cardRewardID]!.getCardRewardChannels()[channelType]! as List<ChannelModel>;

  }


  List<Task> getCardRewardTasksByChannelType(String cardRewardID, int channelType){
    
    if(!_cardRewardModels.containsKey(cardRewardID))return [];
    
    if(!_cardRewardModels[cardRewardID]!.getCardRewardChannels().containsKey(channelType))return [];
    
    return _cardRewardModels[cardRewardID]!.getCardRewardChannels()[channelType]! as List<Task>;

  }

  Task? getSelectedTaskByID(String cardRewardID, String selectedTaskID) {
    
    if (!_cardRewardModels.containsKey(cardRewardID)) {
      return null;
    }

    if(!_cardRewardModels[cardRewardID]!.getCardRewardChannels().containsKey(2))  {
      return null;
    }


    List<Task> tasks = _cardRewardModels[cardRewardID]!.getCardRewardChannels()[2] as List<Task>;

    for (Task task in tasks) {
      if (task.id == selectedTaskID){
        return task;
      }
    }
    return null;

  }


  String getBankName() => _bankName;

  String getCardName() => _cardName;

  String getImagePath() => _imagePath;

  String getLinkURL() => _linkURL;

  String getCardID() => _cardID;

  List<String> getDescs() => _descs;
}




class CardRewardModel {

  late String _title;
  late String _id;
  late List<String> _descs;
  late int _rewardType;
  late String _startDate;
  late String _endDate;
  late double _totalBonus;
  late List<int> _limitTypes;
  late String _feedbackTypeName;
  late int _calculateType;

  final Map<int, List> _rewardChannels = {};


  String getTitle() => _title;

  String getID() => _id;

  List<String> getDescs() => _descs;

  String getStartDate() => _startDate;

  String getEndDate() => _endDate;

  double getTotalBonus() => _totalBonus;
  
  
  int getRewardType() => _rewardType;

  Map<int, List> getCardRewardChannels() => _rewardChannels;

  List<int> getLimitTypes() => _limitTypes;

  String getFeedbackTypeName() => _feedbackTypeName;

  int getCalculateType() => _calculateType;


  CardRewardModel(CardRewardResp cardRewardResp){
    
    _rewardType = cardRewardResp.rewardType ?? 0;
    _descs = cardRewardResp.descs ?? [];
    _id = cardRewardResp.id ?? "";
    _title = cardRewardResp.title ?? "";
    _startDate = cardRewardResp.startDate ?? "";
    _endDate = cardRewardResp.endDate ?? "";

    _limitTypes = cardRewardResp.cardRewardLimitTypes ?? [];
    
    switch (_rewardType){
      case 1:
        _feedbackTypeName = cardRewardResp.feedbackBonus!.cashFeedbackBonus!.title!;
        _totalBonus = cardRewardResp.feedbackBonus!.cashFeedbackBonus!.totalBonus!;
        _calculateType = cardRewardResp.feedbackBonus!.cashFeedbackBonus!.cashCalculateType!;
        break;
      case 2:
        _feedbackTypeName = cardRewardResp.feedbackBonus!.pointFeedbackBonus!.title!;
        _totalBonus = cardRewardResp.feedbackBonus!.pointFeedbackBonus!.totalBonus!;
        _calculateType = cardRewardResp.feedbackBonus!.pointFeedbackBonus!.pointCalculateType!;
        break;
      default:
        _feedbackTypeName = "";
        _totalBonus = 0.0;
        _calculateType = 1;

    }


    for(ChannelResp channelResp in cardRewardResp.channelResps!){

      int channelType = channelResp.channelType ?? 0;

      switch(channelType) {
        case 2:
          _rewardChannels[channelType] = channelResp.tasks!;
          break;

        case 3:
          
          List<Mobilepay>  mobilepays = channelResp.mobilepays!;
          List<ChannelModel> channelModels = [];
          for(Mobilepay mobilepay in mobilepays){
            channelModels.add(ChannelModel(id:mobilepay.id!, name:mobilepay.name!));
          }
          _rewardChannels[channelType] = channelModels;
          break;

        case 4:

          List<Ecommerce> ecommerces = channelResp.ecommerces!;
          List<ChannelModel> channelModels = [];

          for(Ecommerce ecommerce in ecommerces){
            channelModels.add(ChannelModel(id:ecommerce.id!, name:ecommerce.name!));
          }
          _rewardChannels[channelType] = channelModels;
          break;

        case 5:
          List<Supermarket> supermarkets = channelResp.supermarkets!;
          List<ChannelModel> channelModels = [];

          for(Supermarket supermarket in supermarkets){
            channelModels.add(ChannelModel(id:supermarket.id!, name:supermarket.name!));
          }
          _rewardChannels[channelType] = channelModels;

          break;

        case 6:
          
          List<Onlinegame> onlinegames = channelResp.onlinegames!;
          List<ChannelModel> channelModels = [];

          for(Onlinegame onlinegame in onlinegames){
            channelModels.add(ChannelModel(id:onlinegame.id!, name:onlinegame.name!));
          }
          _rewardChannels[channelType] = channelModels;

          break;

        case 7:
          
          List<Streaming> streamings = channelResp.streamings!;
          List<ChannelModel> channelModels = [];

          for(Streaming streaming in streamings){
            channelModels.add(ChannelModel(id:streaming.id!, name:streaming.name!));
          }
          _rewardChannels[channelType] = channelModels;

          break;
        
        case 8:
          
          List<Food> foods = channelResp.foods!;
          List<ChannelModel> channelModels = [];

          for(Food food in foods){
            channelModels.add(ChannelModel(id:food.id!, name:food.name!));
          }
          _rewardChannels[channelType] = channelModels;

          break;

        case 9:
          List<Transportation> transportations = channelResp.transportations!;
          List<ChannelModel> channelModels = [];

          for(Transportation transportation in transportations){
            channelModels.add(ChannelModel(id:transportation.id!, name:transportation.name!));
          }
          _rewardChannels[channelType] = channelModels;

          break;

        case 10:

          List<Travel> travels = channelResp.travels!;
          List<ChannelModel> channelModels = [];

          for(Travel travel in travels){
            channelModels.add(ChannelModel(id:travel.id!, name:travel.name!));
          }
          _rewardChannels[channelType] = channelModels;
          break;

        case 11:
          List<Delivery> deliveries = channelResp.deliveries!;
          List<ChannelModel> channelModels = [];

          for(Delivery delivery in deliveries){
            channelModels.add(ChannelModel(id:delivery.id!, name:delivery.name!));
          }
          _rewardChannels[channelType] = channelModels;
          break;


        case 12:

          List<Insurance> insurances = channelResp.insurances!;
          List<ChannelModel> channelModels = [];

          for(Insurance insurance in insurances){
            channelModels.add(ChannelModel(id:insurance.id!, name:insurance.name!));
          }
          _rewardChannels[channelType] = channelModels;
          break;

        case 13:

          List<Mall> malls = channelResp.malls!;
          List<ChannelModel> channelModels = [];

          for(Mall mall in malls){
            channelModels.add(ChannelModel(id:mall.id!, name:mall.name!));
          }
          _rewardChannels[channelType] = channelModels;
          break;


        case 14:

          List<Sport> sports = channelResp.sports!;
          List<ChannelModel> channelModels = [];

          for(Sport sport in sports){
            channelModels.add(ChannelModel(id:sport.id!, name:sport.name!));
          }
          _rewardChannels[channelType] = channelModels;
          break;

        case 15:
          
          List<Conveniencestore> conveniencestores = channelResp.conveniencestores!;
          List<ChannelModel> channelModels = [];

          for(Conveniencestore conveniencestore in conveniencestores){
            channelModels.add(ChannelModel(id:conveniencestore.id!, name:conveniencestore.name!));
          }
          _rewardChannels[channelType] = channelModels;

          break;
        case 16:
          
          List<Appstore> appstores = channelResp.appstores!;
          List<ChannelModel> channelModels = [];

          for(Appstore appstore in appstores){
            channelModels.add(ChannelModel(id:appstore.id!, name:appstore.name!));
          }
          _rewardChannels[channelType] = channelModels;

          break;

        case 17:
          
          List<Hotel> hotels = channelResp.hotels!;
          List<ChannelModel> channelModels = [];

          for(Hotel hotel in hotels){
            channelModels.add(ChannelModel(id:hotel.id!, name:hotel.name!));
          }
          _rewardChannels[channelType] = channelModels;

          break;

        case 18:
          List<Amusement> amusements = channelResp.amusements!;
          List<ChannelModel> channelModels = [];

          for(Amusement amusement in amusements){
            channelModels.add(ChannelModel(id:amusement.id!, name:amusement.name!));
          }
          _rewardChannels[channelType] = channelModels;

          break;


        case 19:
          List<Cinema> cinemas = channelResp.cinemas!;
          List<ChannelModel> channelModels = [];

          for(Cinema cinema in cinemas){
            channelModels.add(ChannelModel(id:cinema.id!, name:cinema.name!));
          }
          _rewardChannels[channelType] = channelModels;

          break;

        case 20:
          List<Publicutility> publicutilities = channelResp.publicutilities!;
          List<ChannelModel> channelModels = [];

          for(Publicutility publicutility in publicutilities){
            channelModels.add(ChannelModel(id:publicutility.id!, name:publicutility.name!));
          }
          _rewardChannels[channelType] = channelModels;
          break;

      }
    }
  }
}

class OtherReward {
  
  final String title;
  final List<String> descs;
  
  OtherReward({required this.title,required this.descs});

}

class CardRewardViewModel extends ChangeNotifier {

  late CardModel _cardModel;

  String _selectedCardRewardID = "";

  int _selectedChannelType = 0;

  String _selectedTaskID = "";


  initCardRewardModel(CardReward cardReward){

    _cardModel = CardModel(cardReward);

    notifyListeners();
  }


  String getCardID() => _cardModel.getCardID();

  String getBankName() => _cardModel.getBankName();

  String getCardName () => _cardModel.getCardName(); 

  String getImagePath() => _cardModel.getImagePath();

  String getLinkURL() => _cardModel.getLinkURL();

  List<String> getDescs() => _cardModel.getDescs();

  String getSelectedTaskID() => _selectedTaskID;

  // Map<int, String> getRewardTypeNames ()=> _cardModel._feedbackTypeNames;
  // String getRewardTypeName (int rewardType)=> _cardModel._feedbackTypeNames[rewardType] ?? "";


  int getRewardTypeByCardRewardID(String cardRewardID) =>_cardModel.getRewardTypeByCardRewardID(cardRewardID);


  CardModel getCardModel() => _cardModel;

  // late Function(String) _callbackPosition;

  // void setCallbackPosition(Function(String) c) =>  _callbackPosition = c;

  // Function(String) getCallbackPosition() => _callbackPosition;



  final Map<String, Map<int, Set<String>>> _chosenCardRewardChannel = {};


  Map<int, Set<String>> getChosenChannelsByCardRewardID(String cardRewardID) {
    return _chosenCardRewardChannel[cardRewardID] ?? {};
  }

  bool hasChosenCardRewardTaskID(String cardRewardID, String taskID){
    
    if(!_chosenCardRewardChannel.containsKey(cardRewardID))return false; 

    if(!_chosenCardRewardChannel[cardRewardID]!.containsKey(2)) return false;

    if(!_chosenCardRewardChannel[cardRewardID]![2]!.contains(taskID)) return false;

    return true;
  }


  bool hasSelectedCardRewardTaskID(String cardRewardID, String taskID) {
    return _selectedCardRewardID == cardRewardID && _selectedTaskID == taskID;
  }


  void toggleSelectedCardRewardTask(String cardRewardID, String taskID) {

    _selectedTaskID = taskID;
    _selectedCardRewardID = cardRewardID;
    _selectedChannelType = 2;

    notifyListeners();
  }


  void toggleChosenCardRewardTask(String cardRewardID, String taskID) {
    
    
    if(!_chosenCardRewardChannel.containsKey(cardRewardID)){
      _chosenCardRewardChannel[cardRewardID] = { 2: { taskID }};
      notifyListeners();
      return;
    }


    if(!_chosenCardRewardChannel[cardRewardID]!.containsKey(2)){
      _chosenCardRewardChannel[cardRewardID]![2] = { taskID };
      notifyListeners();
      return;
    }


    if(!_chosenCardRewardChannel[cardRewardID]![2]!.contains(taskID)){
      _chosenCardRewardChannel[cardRewardID]![2]!.add(taskID);
      notifyListeners();
      return;
    }

    _chosenCardRewardChannel[cardRewardID]![2]!.remove(taskID);
    notifyListeners();

  }

  void toggleCardRewardChannel(String cardRewardID, int channelType, String channelID) {
    if(!_chosenCardRewardChannel.containsKey(cardRewardID)){
      _chosenCardRewardChannel[cardRewardID] = {
        channelType:{channelID},
      };
      notifyListeners();
      return;
    }

    if(!_chosenCardRewardChannel[cardRewardID]!.containsKey(channelType)){
       _chosenCardRewardChannel[cardRewardID]!.addAll({
         channelType:{channelID},
       });
        
       notifyListeners();
       return;
    }

    if(!_chosenCardRewardChannel[cardRewardID]![channelType]!.contains(channelID)){
       _chosenCardRewardChannel[cardRewardID]![channelType]!.add(channelID);   
        notifyListeners();
       return;
    }

    _chosenCardRewardChannel[cardRewardID]![channelType]!.remove(channelID);
    notifyListeners();

  }


  void toggleAllChosenCardRewardChannel(String selectedCardRewardID, int chosenChannelType){

    Set<String> channelIDSet = {};

    if(chosenChannelType != 2) {
      
      List<ChannelModel> channelModels = _cardModel.getCardRewardChannelsByChannelType(selectedCardRewardID, chosenChannelType);
      
      for(ChannelModel channelModel in channelModels) {
        channelIDSet.add(channelModel.id);
      }

    }else {
      
      List<Task> tasks = _cardModel.getCardRewardTasksByChannelType(selectedCardRewardID, 2);

      for(Task task in tasks){
        channelIDSet.add(task.id!);
      }

    }

    if(!_chosenCardRewardChannel.containsKey(selectedCardRewardID)){

      _chosenCardRewardChannel[selectedCardRewardID] = {
          chosenChannelType: channelIDSet,
      };

      notifyListeners();
      return;

    } 


    if(!_chosenCardRewardChannel[selectedCardRewardID]!.containsKey(chosenChannelType)){
      
      _chosenCardRewardChannel[selectedCardRewardID]![chosenChannelType] = channelIDSet;
      notifyListeners();
      return;

    }


    Set<String> nowChosenChannels = _chosenCardRewardChannel[selectedCardRewardID]![chosenChannelType]!;

    if(nowChosenChannels.length == channelIDSet.length){

      _chosenCardRewardChannel[selectedCardRewardID]![chosenChannelType] = {};

    }else {

      _chosenCardRewardChannel[selectedCardRewardID]![chosenChannelType] = channelIDSet;

    }

    notifyListeners();
    return;
  }


  String getSelectedCardRewardID() => _selectedCardRewardID;


  bool isSelectedCardRewardID(String cardRewardID) {
    return cardRewardID == _selectedCardRewardID;
  }

  int getSelectedChannelType() => _selectedChannelType;

  bool hasSelectedCardRewardChannelType(String cardRewardID, int channelType){
    if(cardRewardID == _selectedCardRewardID && channelType == _selectedChannelType) return true; 
    return false;
  }

  bool hasChosenCardRewardChannelType(String cardRewardID, int channelType){

    if(_chosenCardRewardChannel.containsKey(cardRewardID)){
      if(_chosenCardRewardChannel[cardRewardID]!.containsKey(channelType) 
        && _chosenCardRewardChannel[cardRewardID]![channelType]!.isNotEmpty){
        return true;
      }
    }

    return false;
  }

  bool hasChosenCardRewardChannel(String cardRewardID, int channelType, String channelID){

    if(_chosenCardRewardChannel.containsKey(cardRewardID)){
      if(_chosenCardRewardChannel[cardRewardID]!.containsKey(channelType)){
        if(_chosenCardRewardChannel[cardRewardID]![channelType]!.contains(channelID)){
          return true;
        }
      }
    }
    return false;
  }

  void toggleSelectedCardRewardChannelType(String cardRewardID, int channelType){
    
    _selectedCardRewardID = cardRewardID;
    _selectedChannelType = channelType;
    _selectedTaskID = "";
    notifyListeners();
  }

  bool hasSelectedTaskID(String cardRewardID, String taskID){
    return cardRewardID == _selectedCardRewardID && taskID == _selectedTaskID;
  }

  void toggleSelectedCardRewardID(String cardRewardID) {
    _selectedCardRewardID = cardRewardID;
    notifyListeners();
  }

  void toggleChosenCardRewardChannel(String cardRewardID, int channelType, String channelID) {


    if(!_chosenCardRewardChannel.containsKey(cardRewardID)){
      
      _chosenCardRewardChannel[cardRewardID] = {
        channelType:{channelID},
      };

      notifyListeners();
      return;
    }

    if(!_chosenCardRewardChannel[cardRewardID]!.containsKey(channelType)) {
      
       _chosenCardRewardChannel[cardRewardID]![channelType] = {channelID};

      notifyListeners();
      
      return;
    }


    
    if(!_chosenCardRewardChannel[cardRewardID]![channelType]!.contains(channelID)){

      _chosenCardRewardChannel[cardRewardID]![channelType]!.add(channelID);

    }else {

      _chosenCardRewardChannel[cardRewardID]![channelType]!.remove(channelID);

    }

    notifyListeners();

  }

  // Set<int> getInstinctRewardTypes() => _cardModel.getRewardTypes();

}


class CardRewardEvaluationViewModel extends ChangeNotifier {

  final Map<String, EvaluateResp> _cardRewardEvaluationResps = {};

  EvaluateParams evaluteCardReward(BuildContext context, String cardRewardID){

    CashViewModel cashViewModel = Provider.of<CashViewModel>(context, listen:false);

    int cash = cashViewModel.cash;
    
    EffectiveTimeViewModel effectiveTimeViewModel = Provider.of<EffectiveTimeViewModel>(context, listen:false);
    DateTime dateTime = effectiveTimeViewModel.effectiveTime;
    
    int dateTimeInt = (dateTime.millisecondsSinceEpoch/1000).round();
    
    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context, listen:false);
    Map<int, Set<String>> chosenChannels = cardRewardViewModel.getChosenChannelsByCardRewardID(cardRewardID);


    Map<int, List<String>> mapCardRewardChannel = {};

    if(chosenChannels.isNotEmpty){
      chosenChannels.forEach((key, value) { 
        mapCardRewardChannel[key] = [];
        mapCardRewardChannel[key]!.addAll(value);
      });
    }


    int rewardType = cardRewardViewModel.getRewardTypeByCardRewardID(cardRewardID);
    String cardID = cardRewardViewModel.getCardID();

    return EvaluateParams(
        cash:cash,
        cashType:0,
        actionType:0,
        rewardType:rewardType,
        effectiveTime:dateTimeInt,
        cardIDs:[cardID],
        cardRewardIDs:[cardRewardID],
        tasks:mapCardRewardChannel[2] ?? [],
        mobilepays: mapCardRewardChannel[3] ?? [],
        ecommerces: mapCardRewardChannel[4] ?? [],
        supermarkets: mapCardRewardChannel[5] ?? [],
        onlinegames: mapCardRewardChannel[6] ?? [],
        streamings: mapCardRewardChannel[7] ?? [],
        foods: mapCardRewardChannel[8] ?? [],
        transportations: mapCardRewardChannel[9] ?? [],
        travels: mapCardRewardChannel[10] ?? [],
        deliveries: mapCardRewardChannel[11] ?? [],
        insurances: mapCardRewardChannel[12] ?? [],
        malls: mapCardRewardChannel[13] ?? [],
        sports:mapCardRewardChannel[14] ?? [],
        conveniencestores:mapCardRewardChannel[15] ?? [],
        appstores:mapCardRewardChannel[16] ?? [],
        hotels:mapCardRewardChannel[17] ?? [],
        amusements:mapCardRewardChannel[18] ?? [],
        cinemas:mapCardRewardChannel[19] ?? [],
        publicutilities:mapCardRewardChannel[20] ?? [],
      );
  }


  void evaluateSpecifiedCardReward(BuildContext context, String cardRewardID){
      
    EvaluateRespObserver evaluateRespObserver = Provider.of<EvaluateRespObserver>(context, listen:false);


    EvaluateParams params = evaluteCardReward(context, cardRewardID);

    evaluateRespObserver.evaluate(params).then((value) => {
      setEvaluateResp(cardRewardID, value)
    });

    }

  bool hasInitCardRewardEvaluation(String cardRewardID) => _cardRewardEvaluationResps.containsKey(cardRewardID);

  EvaluateResp getEvaluateResp(String cardRewardID) => _cardRewardEvaluationResps[cardRewardID]!;


  void setEvaluateResp(String cardRewardID, EvaluateResp evaluateResp){

    _cardRewardEvaluationResps[cardRewardID] = evaluateResp;

    notifyListeners();
  }


  double getRewardReturnBackBonus(String cardRewardID){

     if(!_cardRewardEvaluationResps.containsKey(cardRewardID)){
       return 0.0;
     }

     for(CardEventResp cardEventResp in _cardRewardEvaluationResps[cardRewardID]!.cardEventResps ?? []){
       for(CardRewardEventResp cardRewardEventResp in cardEventResp.cardRewardEventResps ?? [] ) {
         int rewardType = cardRewardEventResp.rewardType ?? 0;

         switch(rewardType) {
           case 1:
            return cardRewardEventResp.feedReturn!.cashReturn!.cashReturnBonus!;
          case 2:
            return cardRewardEventResp.feedReturn!.pointReturn!.pointReturnBonus!;
         }
       }
     }

    return 0.0;
  } 


  String getActualBackDesc(String cardRewardID){

    if(!_cardRewardEvaluationResps.containsKey(cardRewardID)){
       return "";
     }

    for(CardEventResp cardEventResp in _cardRewardEvaluationResps[cardRewardID]!.cardEventResps ?? []){
      for(CardRewardEventResp cardRewardEventResp in cardEventResp.cardRewardEventResps ?? [] ) {
        
        int rewardType = cardRewardEventResp.rewardType ?? 0;
        double actualBack = 0.0;

          switch(rewardType) {
            case 1:
              actualBack = cardRewardEventResp.feedReturn!.cashReturn!.actualCashReturn!;
              return "回饋${actualBack}元";
            case 2:
              actualBack = cardRewardEventResp.feedReturn!.pointReturn!.actualPointReturn!;
              return "回饋${actualBack} 點數";
              
         }
      }
    }
    return "";
  }
}
