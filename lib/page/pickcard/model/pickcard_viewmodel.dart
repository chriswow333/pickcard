


import 'package:flutter/material.dart';
import 'package:pickcard/common/model/channels/amusement/amusement.dart';
import 'package:pickcard/common/model/channels/appstore/appstore.dart';
import 'package:pickcard/common/model/channels/cinema/cinema.dart';
import 'package:pickcard/common/model/channels/conveniencestore/conveniencestore.dart';
import 'package:pickcard/common/model/channels/delivery/delivery.dart';
import 'package:pickcard/common/model/channels/ecommerce/ecommerce.dart';
import 'package:pickcard/common/model/channels/food/food.dart';
import 'package:pickcard/common/model/channels/hotel/hotel.dart';
import 'package:pickcard/common/model/channels/insurance/insurance.dart';
import 'package:pickcard/common/model/channels/mall/mall.dart';
import 'package:pickcard/common/model/channels/onlinegame/onlinegame.dart';
import 'package:pickcard/common/model/channels/publicutility/publicutility.dart';
import 'package:pickcard/common/model/channels/sport/sport.dart';
import 'package:pickcard/common/model/channels/streaming/streaming.dart';
import 'package:pickcard/common/model/channels/supermarket/supermarket.dart';
import 'package:pickcard/common/model/channels/transportation/transportation.dart';
import 'package:pickcard/common/model/evaluate/evaluate_resp.dart';
import 'package:pickcard/common/model/evaluate/param.dart';
import 'package:pickcard/common/model/channels/mobilepay/mobilepay.dart';
import 'package:pickcard/common/model/channels/travel/travel.dart';
import 'package:provider/provider.dart';
import 'package:mobx/mobx.dart';



class ChannelTypeModel{

  final int channelTypeID;
  final String channelName;

  ChannelTypeModel(this.channelTypeID, this.channelName);
}




class ChannelTypeModels {

  static final Map<int, ChannelTypeModel> _channelTypeModelMap = {
    3:ChannelTypeModel(3, "行動支付"),
    4:ChannelTypeModel(4, "網路購物"), 
    5:ChannelTypeModel(5, "賣場"),
    6:ChannelTypeModel(6, "線上遊戲"), 
    7:ChannelTypeModel(7, "影音串流"), 
    8:ChannelTypeModel(8, "美食"), 
    9:ChannelTypeModel(9, "交通"), 
    10:ChannelTypeModel(10, "旅遊"),
    11:ChannelTypeModel(11, "外送服務"), 
    12:ChannelTypeModel(12, "保險"), 
    13:ChannelTypeModel(13, "百貨"), 
    14:ChannelTypeModel(14, "運動"), 
    15:ChannelTypeModel(15, "超市"),
    16:ChannelTypeModel(16, "App store"),
    17:ChannelTypeModel(17, "飯店"),
    18:ChannelTypeModel(18, "遊樂園"),
    19:ChannelTypeModel(19, "影城"),
    20:ChannelTypeModel(20, "公共事業"),
  };

  static List<ChannelTypeModel> getChannelTypeModels(){

    List<ChannelTypeModel> channelTypeModels = [];

    _channelTypeModelMap.forEach((key, value) {
      channelTypeModels.add(value);
    });

    return channelTypeModels;
  }

  static ChannelTypeModel getChannelTypeModel(int channelTypeID) {
    return _channelTypeModelMap[channelTypeID]!;
  }


  static Map<int, IconData> getChannelTypeIconModels(){
    return {
      3:Icons.send_to_mobile_outlined,
      4:Icons.web_asset_outlined,
      5:Icons.local_convenience_store_outlined,
      6:Icons.book_online_outlined,
      7:Icons.video_label_outlined,
      8:Icons.restaurant_menu_outlined,
      9:Icons.emoji_transportation_outlined,
      10:Icons.travel_explore_outlined,
      11:Icons.delivery_dining_outlined,
      12:Icons.local_hospital_outlined,
      13:Icons.store_mall_directory_outlined,
      14:Icons.sports_bar_outlined,
      15:Icons.store_mall_directory_outlined,
      16:Icons.apps_outlined,
      17:Icons.hotel_outlined,
      18:Icons.where_to_vote_outlined,
      19:Icons.theaters_outlined,
      20:Icons.cable_outlined,
    };
  }

}




class SortTypeNamesModel {

   final Map<int, String> _sortTypeNames = {
    0:"符合程度",
    1:"回饋高低"
  };

  String getSortTypeName(int sortType) {
    return _sortTypeNames[sortType] ?? "";
  }


  int getSortType(String sortTypeName) {

    int sortType = 0;
    _sortTypeNames.forEach((key, value) {
        if (sortTypeName == value) {
          sortType = key;
        }
    });
    return sortType;
  }

  List<String> getSortTypeNames() {

    List<String> sortTypeNames = [];

    _sortTypeNames.forEach((key, value) {
      sortTypeNames.add(value);
    });

    return sortTypeNames;
  }

}


class RewardTypeNamesModel {

  final Map<int, String> _rewardTypeNames = {
    0:"不拘",
    1:"現金回饋",
    2:"點數回饋",
    3:"紅利點數"

  };

  String getRewardName(int rewardType){
    return _rewardTypeNames[rewardType] ?? "";
  }

  int getRewardType(String rewardName) {

    int rewardType = 0;

    _rewardTypeNames.forEach((key, value) {
      if(rewardName == value){
        rewardType = key;
      }
    });

    return rewardType;
  }

  List<String> getRewardNames(){
    List<String> rewardNames = [];
    _rewardTypeNames.forEach((key, value) {
        rewardNames.add(value);
    });
    return rewardNames;
  }
  
  List<int> getRewardTypes(){
    List<int> rewardTypes = [];
    _rewardTypeNames.forEach((key, value) {
      rewardTypes.add(key);
    });
    return rewardTypes;
  }
}



class ChannelModel {

  final String id;
  final String name;

  ChannelModel({required this.id, required this.name});
}



class PickcardViewModel extends ChangeNotifier{



  int _selectedChannelTypeID = 4;

  final Map<int, Set<String>> _chosenChannelType = {
    3 :{},
    4 :{},
    5 :{},
    6 :{},
    7 :{},
    8 :{},
    9 :{},
    10:{},
    11:{},
    12:{},
    13:{},
    14:{},
    15:{},
    16:{},
    17:{},
    18:{},
    19:{},
    20:{},
  };




  final Map<int, List<ChannelModel>> _allChannelModels = {
    3 :[],
    4 :[],
    5 :[],
    6 :[],
    7 :[],
    8 :[],
    9 :[],
    10:[],
    11:[],
    12:[],
    13:[],
    14:[],
    15:[],
    16:[],
    17:[],
    18:[],
    19:[],
    20:[],
  };


  initPickcardViewModel(BuildContext context){

    MobilepayObserver mobilepayViewModel = Provider.of<MobilepayObserver>(context);
    mobilepayViewModel.fetchMobilepays().then((value) => value);

    EcommerceObserver ecommerceViewModel = Provider.of<EcommerceObserver>(context);
    ecommerceViewModel.fetchEcommerces();

    DeliveryObserver deliveryViewModel = Provider.of<DeliveryObserver>(context);
    deliveryViewModel.fetchDeliveries();


    SupermarketObserver supermarketViewModel = Provider.of<SupermarketObserver>(context);
    supermarketViewModel.fetchSupermarkets();


    FoodObserver foodObserver = Provider.of<FoodObserver>(context);
    foodObserver.fetchFoods();

    OnlinegameObserver onlinegameViewModel = Provider.of<OnlinegameObserver>(context);
    onlinegameViewModel.fetchOnlinegames();

    StreamingObserver streamingViewModel = Provider.of<StreamingObserver>(context);
    streamingViewModel.fetchStreamings();

    TransportationObserver transportationViewModel = Provider.of<TransportationObserver>(context);
    transportationViewModel.fetchTransportations();

    TravelObserver travelViewModel = Provider.of<TravelObserver>(context);
    travelViewModel.fetchTravels();

    InsuranceObserver insuranceViewModel = Provider.of<InsuranceObserver>(context);
    insuranceViewModel.fetchInsurances();

    MallObserver mallViewModel = Provider.of<MallObserver>(context);
    mallViewModel.fetchMalls();

    SportObserver sportObserver = Provider.of<SportObserver>(context);
    sportObserver.fetchSports();

    ConveniencestoreObserver conveniencestoreObserver = Provider.of<ConveniencestoreObserver>(context);
    conveniencestoreObserver.fetchConveniencestores();

    AppstoreObserver appstoreObserver = Provider.of<AppstoreObserver>(context);
    appstoreObserver.fetchAppstores();

    HotelObserver hotelObserver = Provider.of<HotelObserver>(context);
    hotelObserver.fetchHotels();

    AmusementObserver amusementObserver = Provider.of<AmusementObserver>(context);
    amusementObserver.fetchAmusements();

    CinemaObserver cinemaObserver = Provider.of<CinemaObserver>(context);
    cinemaObserver.fetchCinemas();

    PublicutilityObserver publicutilityObserver = Provider.of<PublicutilityObserver>(context);
    publicutilityObserver.fetchPublicutilities();

  }


  List<ChannelModel> getChannelModelsByChannelTypeID(BuildContext context, int channelTypeID, dynamic result){
    
    List<ChannelModel> channelModels = [];
    
    switch(channelTypeID){
      case 3:
        if(_allChannelModels[3]!.isNotEmpty){
          return _allChannelModels[3]!;
        }else {
            List<ChannelModel> mobilepayChannelModels = [];
            for(Mobilepay m in result){
              ChannelModel mobilepayChannelModel = ChannelModel(id:m.id!, name:m.name!);
              mobilepayChannelModels.add(mobilepayChannelModel);
            }  
            _allChannelModels[3] = mobilepayChannelModels;
            channelModels =  _allChannelModels[3]!;
        }
        break;
      case 4:
        if(_allChannelModels[4]!.isNotEmpty){
          return _allChannelModels[4]!;
        } else {
            List<ChannelModel> ecommerceChannelModels = [];
            for(Ecommerce e in result){
              ChannelModel ecommerceChannelModel = ChannelModel(id:e.id!, name:e.name!);
              ecommerceChannelModels.add(ecommerceChannelModel);
            }
            _allChannelModels[4] = ecommerceChannelModels;
            channelModels =  _allChannelModels[4]!;
        }
        break;
      case 5:
        if(_allChannelModels[5]!.isNotEmpty){
          return _allChannelModels[5]!;
        } else {
            List<ChannelModel> supermarketChannelModels = [];
            for(Supermarket e in result){
              ChannelModel supermarketChannelModel = ChannelModel(id:e.id!, name:e.name!);
              supermarketChannelModels.add(supermarketChannelModel);
            }
            _allChannelModels[5] = supermarketChannelModels;
            channelModels =  _allChannelModels[5]!;
        }
        break;
      case 6:
        if(_allChannelModels[6]!.isNotEmpty){
          return _allChannelModels[6]!;
        } else {
            List<ChannelModel> onlinegameChannelModels = [];
            for(Onlinegame e in result){
              ChannelModel onlinegameChannelModel = ChannelModel(id:e.id!, name:e.name!);
              onlinegameChannelModels.add(onlinegameChannelModel);
            }
            _allChannelModels[6] = onlinegameChannelModels;
            channelModels =  _allChannelModels[6]!;
        }
        break;
      case 7:
        if(_allChannelModels[7]!.isNotEmpty){
          return _allChannelModels[7]!;
        } else {
            List<ChannelModel> streamingChannelModels = [];
            for(Streaming e in result){
              
              ChannelModel streamingChannelModel = ChannelModel(id:e.id!, name:e.name!);
              streamingChannelModels.add(streamingChannelModel);
            }
            _allChannelModels[7] = streamingChannelModels;
            channelModels =  _allChannelModels[7]!;
        }
        break;
      case 8: 
        if(_allChannelModels[8]!.isNotEmpty){
          return _allChannelModels[8]!;
        } else {
            List<ChannelModel> foodChannelModels = [];
            for(Food e in result){
              
              ChannelModel foodChannelModel = ChannelModel(id:e.id!, name:e.name!);
              foodChannelModels.add(foodChannelModel);
            }
            _allChannelModels[8] = foodChannelModels;
            channelModels =  _allChannelModels[8]!;
        }
        break;
      
      case 9: 
        if(_allChannelModels[9]!.isNotEmpty){
          return _allChannelModels[9]!;
        } else {
            List<ChannelModel> transportationChannelModels = [];
            for(Transportation e in result){
              
              ChannelModel transportationChannelModel = ChannelModel(id:e.id!, name:e.name!);
              transportationChannelModels.add(transportationChannelModel);
            }
            _allChannelModels[9] = transportationChannelModels;
            channelModels =  _allChannelModels[9]!;
        }
        break;  
      case 10: 
        if(_allChannelModels[10]!.isNotEmpty){
          return _allChannelModels[10]!;
        } else {
            List<ChannelModel> travelChannelModels = [];
            for(Travel e in result){
              
              ChannelModel travelChannelModel = ChannelModel(id:e.id!, name:e.name!);
             travelChannelModels.add(travelChannelModel);
            }
            _allChannelModels[10] = travelChannelModels;
            channelModels =  _allChannelModels[10]!;
        }
        break;  
      case 11: 
        if(_allChannelModels[11]!.isNotEmpty){
          return _allChannelModels[11]!;
        } else {
            List<ChannelModel> deliveryChannelModels = [];
            for(Delivery e in result){
              
              ChannelModel deliveryChannelModel = ChannelModel(id:e.id!, name:e.name!);
              deliveryChannelModels.add(deliveryChannelModel);
            }
            _allChannelModels[11] = deliveryChannelModels;
            channelModels =  _allChannelModels[11]!;
        }
        break;   
      case 12: 
        if(_allChannelModels[12]!.isNotEmpty){
          return _allChannelModels[12]!;
        } else {
            List<ChannelModel> insuranceChannelModels = [];
            for(Insurance e in result){
              
              ChannelModel insuranceChannelModel = ChannelModel(id:e.id!, name:e.name!);
              insuranceChannelModels.add(insuranceChannelModel);
            }
            _allChannelModels[12] = insuranceChannelModels;
            channelModels =  _allChannelModels[12]!;
        }
        break; 

      case 13:
        if(_allChannelModels[13]!.isNotEmpty){
          return _allChannelModels[13]!;
        } else {
            List<ChannelModel> mallChannelModels = [];
            for(Mall e in result){
              
              ChannelModel mallChannelModel = ChannelModel(id:e.id!, name:e.name!);
              mallChannelModels.add(mallChannelModel);
            }
            _allChannelModels[13] = mallChannelModels;
            channelModels =  _allChannelModels[13]!;
        }
        break;
      case 14:
        if(_allChannelModels[14]!.isNotEmpty){
          return _allChannelModels[14]!;
        } else {
            List<ChannelModel> sportChannelModels = [];
            for(Sport e in result){
              
              ChannelModel sportChannelModel = ChannelModel(id:e.id!, name:e.name!);
              sportChannelModels.add(sportChannelModel);
            }
            _allChannelModels[14] = sportChannelModels;
            channelModels =  _allChannelModels[14]!;
        }
        break; 
      case 15:
        if(_allChannelModels[15]!.isNotEmpty){
          return _allChannelModels[15]!;
        } else {
            List<ChannelModel> conveniencestoreChannelModels = [];
            for(Conveniencestore e in result){
              
              ChannelModel conveniencestoreChannelModel = ChannelModel(id:e.id!, name:e.name!);
              conveniencestoreChannelModels.add(conveniencestoreChannelModel);
            }
            _allChannelModels[15] = conveniencestoreChannelModels;
            channelModels =  _allChannelModels[15]!;
        }
        break; 
      case 16:
        if(_allChannelModels[16]!.isNotEmpty){
          return _allChannelModels[16]!;
        } else {
            List<ChannelModel> appstoreChannelModels = [];
            for(Appstore e in result){
              
              ChannelModel appstoreChannelModel = ChannelModel(id:e.id!, name:e.name!);
              appstoreChannelModels.add(appstoreChannelModel);
            }
            _allChannelModels[16] = appstoreChannelModels;
            channelModels =  _allChannelModels[16]!;
        }
        break;
      
      case 17:
        if(_allChannelModels[17]!.isNotEmpty){
          return _allChannelModels[17]!;
        } else {
            List<ChannelModel> hotelChannelModels = [];
            for(Hotel e in result){
              
              ChannelModel hotelChannelModel = ChannelModel(id:e.id!, name:e.name!);
              hotelChannelModels.add(hotelChannelModel);
            }
            _allChannelModels[17] = hotelChannelModels;
            channelModels =  _allChannelModels[17]!;
        }
        break;

      case 18:
        if(_allChannelModels[18]!.isNotEmpty){
          return _allChannelModels[18]!;
        } else {
            List<ChannelModel> amusementChannelModels = [];
            for(Amusement e in result){
              
              ChannelModel amusementChannelModel = ChannelModel(id:e.id!, name:e.name!);
              amusementChannelModels.add(amusementChannelModel);
            }
            _allChannelModels[18] = amusementChannelModels;
            channelModels =  _allChannelModels[18]!;
        }
        break; 
      case 19:
        if(_allChannelModels[19]!.isNotEmpty){
          return _allChannelModels[19]!;
        } else {
            List<ChannelModel> cinemaChannelModels = [];
            for(Cinema e in result){
              
              ChannelModel cinemaChannelModel = ChannelModel(id:e.id!, name:e.name!);
              cinemaChannelModels.add(cinemaChannelModel);
            }
            _allChannelModels[19] = cinemaChannelModels;
            channelModels =  _allChannelModels[19]!;
        }
        break; 


      case 20:
        if(_allChannelModels[20]!.isNotEmpty){
          return _allChannelModels[20]!;
        } else {
            List<ChannelModel> publicutilityChannelModels = [];
            for(Publicutility e in result){
              
              ChannelModel publicutilityChannelModel = ChannelModel(id:e.id!, name:e.name!);
              publicutilityChannelModels.add(publicutilityChannelModel);
            }
            _allChannelModels[20] = publicutilityChannelModels;
            channelModels =  _allChannelModels[20]!;
        }
        break; 
    }

    return channelModels;

  }



  int getSelectedChannelTypeID(){
    return _selectedChannelTypeID;
  }  

  void toggleChannelTypeID(int channelTypeID) {
    _selectedChannelTypeID = channelTypeID;
    notifyListeners();
  }

  bool hasChosenChannelBtn(BuildContext context, int channelTypeID){

    if(!_chosenChannelType.containsKey(channelTypeID))return false;

    return _chosenChannelType[channelTypeID]!.isNotEmpty;
  }

  IconData getIconChannelBtn(BuildContext context, int channelTypeID){

    bool hasChosen = hasChosenChannelBtn(context, channelTypeID);
    
    if(hasChosen)return Icons.check_circle_outline;

    IconData icon = Icons.send_to_mobile_outlined;
    
    if(!ChannelTypeModels.getChannelTypeIconModels().containsKey(channelTypeID)) return icon;
    
    return ChannelTypeModels.getChannelTypeIconModels()[channelTypeID]!;
    
  }


  void toggleChannelAllItem(BuildContext context, int channelTypeID){
    
    int size = _allChannelModels[channelTypeID]!.length;

    int chosenSize = _chosenChannelType[channelTypeID]!.length;

    if(size == chosenSize){
      
      _chosenChannelType[channelTypeID]!.clear();

    }else {
      for(ChannelModel channelModel in _allChannelModels[channelTypeID]!){
        _chosenChannelType[channelTypeID]!.add(channelModel.id);
      }
    }

    notifyListeners();
  }


  bool hasSelectedChannelItemID(BuildContext context, int chanelTypeID, String id){
    return _chosenChannelType[chanelTypeID]!.contains(id);
  }

  void toggleChannelItemID(BuildContext context, int channelTypeID, String id){

    if(_chosenChannelType[channelTypeID]!.contains(id)){
      _chosenChannelType[channelTypeID]!.remove(id);
    }else {
      _chosenChannelType[channelTypeID]!.add(id);
    }
    notifyListeners();
  }




  CardRewardEventResp getMaxBackBonusEventResp(List<CardRewardEventResp> cardRewardEventResps){
    CardRewardEventResp? maxReturnEventResp;
    double maxBackBonus = 0.0;

    for(CardRewardEventResp cardRewardEventResp in cardRewardEventResps){
      
      maxReturnEventResp ??= cardRewardEventResp;

      switch (cardRewardEventResp.rewardType) {
        case 1:
         if(maxBackBonus <= cardRewardEventResp.feedReturn!.cashReturn!.cashReturnBonus!){
           maxReturnEventResp = cardRewardEventResp;
         }
          break;
        case 2:
          if(maxBackBonus <= cardRewardEventResp.feedReturn!.pointReturn!.pointReturnBonus!){
            maxReturnEventResp = cardRewardEventResp;
          }
          break;
      }

    }

    return maxReturnEventResp!;
  }

  List<String> getLimitTypeNames(CardRewardEventResp rewardEventResp){
    List<String> limitTypeNames = [];

    for(int limitType in rewardEventResp.cardRewardLimitTypes ?? []){
      switch(limitType) {
        case 1:
          limitTypeNames.add("限量");
          break;
        case 2:
          limitTypeNames.add("限時");
          break;
      }
    }
    return limitTypeNames;
  }

  Color getRewardTypeNameColor(int rewardType) {
    switch(rewardType){
      case 1:
        return Colors.amber[700]!;
      case 2:
        return Colors.greenAccent[700]!;
      default:
        return Colors.white;
    }
  }


  double getReturnBonus(FeedReturn feedReturn, int rewardType){
    
    switch(rewardType) {
      case 1:
        return feedReturn.cashReturn!.cashReturnBonus!;
      case 2:
        return feedReturn.pointReturn!.pointReturnBonus!;
        
      default:
        return 0.0;
    }
  }

  double getActualBack(FeedReturn feedReturn, int rewardType) {
    switch(rewardType) {
      case 1:
        return feedReturn.cashReturn!.actualCashReturn!;
      case 2:
        return feedReturn.pointReturn!.actualPointReturn!;
      default:
        return 0.0;
    }
  }



  EvaluateParams buildEvaluateParam(BuildContext context){
    
    EffectiveTimeViewModel effectiveTimeModel = Provider.of<EffectiveTimeViewModel>(context, listen:false);
    DateTime effectiveTime = effectiveTimeModel.effectiveTime;

    int effectiveTimeInt = (effectiveTime.millisecondsSinceEpoch/1000).round();
    CashViewModel cashViewModel = Provider.of<CashViewModel>(context,listen: false);
    int cash = cashViewModel.cash;
    int cashType = 0;

    SortTypeViewModel sortTypeViewModel = Provider.of<SortTypeViewModel>(context, listen:false);
    int sortType = sortTypeViewModel.getSortType();

    // evaluate credit card bonus
    int actionType = 0;

    RewardTypeViewModel rewardTypeViewModel = Provider.of<RewardTypeViewModel>(context, listen:false);
    int rewardType = rewardTypeViewModel.getRewardType();

    List<String> mobilepays = _chosenChannelType[3]!.toList();
    List<String> ecommerces = _chosenChannelType[4]!.toList();
    List<String> supermarkets = _chosenChannelType[5]!.toList();
    List<String> onlinegames = _chosenChannelType[6]!.toList();
    List<String> streamings = _chosenChannelType[7]!.toList();
    List<String> foods =  _chosenChannelType[8]!.toList();
    List<String> transportations = _chosenChannelType[9]!.toList();
    List<String> travels = _chosenChannelType[10]!.toList();
    List<String> deliveries = _chosenChannelType[11]!.toList();
    List<String> insurances = _chosenChannelType[12]!.toList();
    List<String> malls =  _chosenChannelType[13]!.toList();
    List<String> sports =  _chosenChannelType[14]!.toList();
    List<String> conveniencestores =  _chosenChannelType[15]!.toList();
    List<String> appstores =  _chosenChannelType[16]!.toList();
    List<String> hotels =  _chosenChannelType[17]!.toList();
    List<String> amusements =  _chosenChannelType[18]!.toList();
    List<String> cinemas =  _chosenChannelType[19]!.toList();
    List<String> publicutilities =  _chosenChannelType[20]!.toList();


    return EvaluateParams(
      cash:cash,
      cashType:cashType,
      sortType: sortType,
      actionType:actionType,
      rewardType:rewardType,
      effectiveTime:effectiveTimeInt,
      cardIDs:[],
      cardRewardIDs:[],
      
      tasks:[],
      
      mobilepays:mobilepays,
      ecommerces:ecommerces,
      supermarkets:supermarkets,
      onlinegames:onlinegames,
      streamings: streamings,
      foods:foods,
      transportations: transportations,
      travels:travels,
      deliveries: deliveries,
      insurances: insurances,
      malls: malls,
      sports:sports,
      conveniencestores:conveniencestores,
      appstores:appstores,
      hotels:hotels,
      amusements:amusements,
      cinemas:cinemas,
      publicutilities:publicutilities,
    );
  }

  

  ObservableFuture<ObservableList>? getChannelItemObserver(BuildContext context, int channelTypeID){
    switch(channelTypeID){
      case 3:
        final mobilepayViewModel = Provider.of<MobilepayObserver>(context, listen:false);
        final mobilepays = mobilepayViewModel.mobilepays;
        if (mobilepays == null || mobilepays.result == null) {
         mobilepayViewModel.fetchMobilepays();
        }
        return mobilepays;
        
      case 4:
        final ecommerceViewModel = Provider.of<EcommerceObserver>(context, listen:false); 
        final ecommerces = ecommerceViewModel.ecommerces;
        if (ecommerces == null || ecommerces.result == null) {
          ecommerceViewModel.fetchEcommerces();
        }
        return ecommerces;
      case 5:
        final supermarketObserver = Provider.of<SupermarketObserver>(context, listen:false); 
        final supermarkets = supermarketObserver.supermarkets;
        if (supermarkets == null || supermarkets.result == null) {
          supermarketObserver.fetchSupermarkets();
        }
        return supermarkets;

      case 6:
        final onlinegameObserver = Provider.of<OnlinegameObserver>(context, listen:false); 
        final onlinegames = onlinegameObserver.onlinegames;
        if (onlinegames == null || onlinegames.result) {
          onlinegameObserver.fetchOnlinegames();
        }
        return onlinegames;
      case 7:
        final streamingObserver = Provider.of<StreamingObserver>(context, listen:false); 
        final streamings = streamingObserver.streamings;
        if(streamings == null || streamings.result == null) {
          streamingObserver.fetchStreamings();
        }
        return streamings;
      case 8:
        final foodObserver = Provider.of<FoodObserver>(context, listen:false); 
        final foods = foodObserver.foods;
        if(foods == null || foods.result == null) {
          foodObserver.fetchFoods();
        }
        return foods;
      case 9:
        final transportationObserver = Provider.of<TransportationObserver>(context, listen:false); 
        final transportations = transportationObserver.transportations;
        if(transportations == null || transportations.result == null) {
          transportationObserver.fetchTransportations();
        }
        return transportations;
      case 10:
        final travelObserver = Provider.of<TravelObserver>(context, listen:false); 
        final travels = travelObserver.travels;
        if(travels == null || travels.result == null) {
          travelObserver.fetchTravels();
        }
        return travels;
      case 11:
        final deliveryObserver = Provider.of<DeliveryObserver>(context, listen:false); 
        final deliveries = deliveryObserver.deliveries;
        if(deliveries == null || deliveries.result == null) {
          deliveryObserver.fetchDeliveries();
        }
        return deliveries;
      case 12:
        final insuranceObserver = Provider.of<InsuranceObserver>(context, listen:false); 
        final insurances = insuranceObserver.insurances; 
        if(insurances == null || insurances.result == null) {
          insuranceObserver.fetchInsurances();
        }
        return insurances;
      case 13:
        final mallObserver = Provider.of<MallObserver>(context, listen:false); 
        final malls = mallObserver.malls;
        if(malls == null || malls.result == null) {
          mallObserver.fetchMalls();
        }
        return malls;
      case 14:
        final sportObserver = Provider.of<SportObserver>(context, listen:false); 
        final sports = sportObserver.sports;
        if(sports == null || sports.result == null)  {
          sportObserver.fetchSports();
        }
        return sports;
      case 15:
        final conveniencestoreObserver = Provider.of<ConveniencestoreObserver>(context, listen:false); 
        final conveniencestores = conveniencestoreObserver.conveniencestores;
        if(conveniencestores == null || conveniencestores.result == null) {
          conveniencestoreObserver.fetchConveniencestores();
        }
        return conveniencestores;
      case 16:
        final appstoreObserver = Provider.of<AppstoreObserver>(context, listen:false); 
        final appstores = appstoreObserver.appstores;
        if(appstores == null || appstores.result == null) {
          appstoreObserver.fetchAppstores();
        }
        return appstores;
      case 17:
        final hotelObserver = Provider.of<HotelObserver>(context, listen:false); 
        final hotels = hotelObserver.hotels;
        if(hotels == null || hotels.result == null) {
          hotelObserver.fetchHotels();
        }
        return hotels;
      case 18:
        final amusementObserver = Provider.of<AmusementObserver>(context, listen:false); 
        final amusements = amusementObserver.amusements;
        if(amusements == null || amusements.result == null) {
          amusementObserver.fetchAmusements();
        }
        return amusements;
      case 19:
        final cinemaObserver = Provider.of<CinemaObserver>(context, listen:false); 
        final cinemas = cinemaObserver.cinemas;
        if(cinemas == null || cinemas.result == null) {
          cinemaObserver.fetchCinemas();
        }
        return cinemas;
      case 20:
        final publicutilityObserver = Provider.of<PublicutilityObserver>(context, listen:false); 
        final publicutilities = publicutilityObserver.publicutilities;
        if(publicutilities == null || publicutilities.result == null) {
          publicutilityObserver.fetchPublicutilities();
        }
        return publicutilities;
    }
  }

  List<ChannelModel> getCardItem(BuildContext context, int channelTypeID){
        
    late ObservableFuture<ObservableList> future;
    
    switch(channelTypeID){
      case 3:
        final mobilepayViewModel = Provider.of<MobilepayObserver>(context, listen:false);
        final mobilepays = mobilepayViewModel.mobilepays;
        if (mobilepays == null) {
          future = mobilepayViewModel.fetchMobilepays() as ObservableFuture<ObservableList>;
        }else {
          future = mobilepays;
        } 
        break;
      case 4:
        final ecommerceViewModel = Provider.of<EcommerceObserver>(context, listen:false); 
        final ecommerces = ecommerceViewModel.ecommerces!;
        future = ecommerces;
        break;
      case 5:
        final supermarketObserver = Provider.of<SupermarketObserver>(context, listen:false); 
        final supermarkets = supermarketObserver.supermarkets!;
        future = supermarkets;
        break;
      case 6:
        final onlinegameObserver = Provider.of<OnlinegameObserver>(context, listen:false); 
        final onlinegames = onlinegameObserver.onlinegames!;
        future = onlinegames;
        break;
      case 7:
        final streamingObserver = Provider.of<StreamingObserver>(context, listen:false); 
        final streamings = streamingObserver.streamings!;
        future = streamings;
        break;
      case 8:
        final foodObserver = Provider.of<FoodObserver>(context, listen:false); 
        final foods = foodObserver.foods!;
        future = foods;
        break;
      case 9:
        final transportationObserver = Provider.of<TransportationObserver>(context, listen:false); 
        final transportations = transportationObserver.transportations!;
        future = transportations;
        break;
      case 10:
        final travelObserver = Provider.of<TravelObserver>(context, listen:false); 
        final travels = travelObserver.travels!;
        future = travels;
        break;
      case 11:
        final deliveryObserver = Provider.of<DeliveryObserver>(context, listen:false); 
        final deliveries = deliveryObserver.deliveries!;
        future = deliveries;
        break;
      case 12:
        final insuranceObserver = Provider.of<InsuranceObserver>(context, listen:false); 
        final insurances = insuranceObserver.insurances!;
        future = insurances;
        break;
      case 13:
        final mallObserver = Provider.of<MallObserver>(context, listen:false); 
        final malls = mallObserver.malls!;
        future = malls;
        break;
      case 14:
        final sportObserver = Provider.of<SportObserver>(context, listen:false); 
        final sports = sportObserver.sports!;
        future = sports;
        break;
      case 15:
        final conveniencestoreObserver = Provider.of<ConveniencestoreObserver>(context, listen:false); 
        final conveniencestores = conveniencestoreObserver.conveniencestores!;
        future = conveniencestores;
        break;
      case 16:
        final appstoreObserver = Provider.of<AppstoreObserver>(context, listen:false); 
        final appstores = appstoreObserver.appstores!;
        future = appstores;
        break;
      case 17:
        final hotelObserver = Provider.of<HotelObserver>(context, listen:false); 
        final hotels = hotelObserver.hotels!;
        future = hotels;
        break;
      case 18:
        final amusementObserver = Provider.of<AmusementObserver>(context, listen:false); 
        final amusements = amusementObserver.amusements!;
        future = amusements;
        break;
      case 19:
        final cinemaObserver = Provider.of<CinemaObserver>(context, listen:false); 
        final cinemas = cinemaObserver.cinemas!;
        future = cinemas;
        break;
      case 20:
        final publicutilityObserver = Provider.of<PublicutilityObserver>(context, listen:false); 
        final publicutilities = publicutilityObserver.publicutilities!;
        future = publicutilities;
        break;
    }


    switch(future.status) {
      case FutureStatus.pending:
        return [];
      case FutureStatus.rejected:
        return [];
      case FutureStatus.fulfilled:
        return getChannelModelsByChannelTypeID(context, channelTypeID, future.result);
      default:
        return [];       
    }

  }




  List<ChannelItemStatus> transferChannelItemStatus(BuildContext context, int channelTypeID, List<ChannelModel> channelModels){
    
    List<ChannelItemStatus> channelItemStatuses = [];

    for(ChannelModel channelModel in channelModels){
      
      bool hasChosen = hasSelectedChannelItemID(context, channelTypeID, channelModel.id);

      channelItemStatuses.add(ChannelItemStatus(id:channelModel.id,name:channelModel.name, hasChosen:hasChosen));
    }
    return channelItemStatuses;
  }


}


class ChannelItemStatus {
  final String id;
  final String name;
  bool hasChosen;

  ChannelItemStatus({required this.id, required this.name, required this.hasChosen});
}