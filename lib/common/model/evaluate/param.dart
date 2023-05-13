


import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



class SortTypeViewModel extends ChangeNotifier{
  
  int _sortType = 2;

  void toggleSortType(int sortType) {
    _sortType = sortType;
    notifyListeners();
  }

  int getSortType(){
    return _sortType;
  }

}

class CashViewModel extends ChangeNotifier {
  
  int cash = 1000;
  void changeCash(int cash) {
    this.cash = cash;
    notifyListeners();
  }
}



class RewardTypeViewModel extends ChangeNotifier {
  
  int _rewardType = 1;


  void toggleRewardType(int rewardType) {
    _rewardType = rewardType;
    notifyListeners();
  }

  int getRewardType(){
    return _rewardType;
  }

}


class EffectiveTimeViewModel extends ChangeNotifier {


// final format = DateFormat("yyyy-MM-dd hh:mm:ss");

  DateTime effectiveTime = DateTime.now();

  void changeEffectiveTime(DateTime effectiveTime) {
    this.effectiveTime = effectiveTime;
    notifyListeners();
  }

}


class EvaluateParams {

  EvaluateParams({
    this.cash, 
    this.cashType,
    this.sortType,
    this.actionType,
    this.rewardType,
    required this.effectiveTime,
    this.cardIDs,
    this.cardRewardIDs,
    this.tasks,

    this.ecommerces,
    this.mobilepays,
    this.supermarkets,
    this.onlinegames,
    this.streamings,
    this.foods,
    this.transportations,
    this.travels,
    this.deliveries,
    this.insurances,
    this.malls,
    this.sports,
    this.conveniencestores,
    this.appstores,
    this.hotels,
    this.amusements,
    this.cinemas,
    this.publicutilities,

  });

  int? cash = 1000;
  int? cashType = 0;
  int? sortType = 0;

  int? actionType = 0; 

  int? rewardType = 0;

  int effectiveTime;

  List<String>? cardIDs = [];
  List<String>? cardRewardIDs = [];

  List<String>? tasks = [];
  List<String>? ecommerces = [];
  List<String>? mobilepays = [];
  List<String>? supermarkets = [];
  List<String>? onlinegames = [];
  List<String>? streamings = [];
  List<String>? foods = [];
  List<String>? retails = [];
  List<String>? transportations = [];
  List<String>? travels = [];
  List<String>? deliveries = [];
  List<String>? insurances = [];
  List<String>? malls = [];
  List<String>? sports = [];
  List<String>? conveniencestores = [];
  List<String>? appstores = [];
  List<String>? hotels = [];
  List<String>? amusements = [];
  List<String>? cinemas = [];
  List<String>? publicutilities = [];




  EvaluateParams.fromJson(Map<String, dynamic> json)
      : cash = json['cash'],
        cashType = json['cashType'],
        sortType = json['sortType'],
        actionType = json['actionType'],
        rewardType = json['rewardType'],
        effectiveTime = json['effectiveTime'],

        cardIDs = json['cardIDs'],
        cardRewardIDs = json['cardRewardIDs'],

        tasks = json['tasks'],
        
        mobilepays = json['mobilepays'],
        ecommerces = json['ecommerces'],
        supermarkets = json['supermarkets'],
        onlinegames = json['onlinegames'],
        streamings = json['streamings'],
        foods = json['foods'],
        transportations = json['transportations'],
        travels = json['travels'],
        deliveries = json['deliveries'],
        insurances = json['insurances'],
        malls = json['malls'],
        sports = json['sports'],
        conveniencestores = json['conveniencestores'],
        appstores = json['appstores'],
        hotels = json['hotels'],
        amusements = json['amusements'],
        cinemas = json['cinemas'], 
        publicutilities = json['publicutilities']


      ;

  Map<String, dynamic> toJson() {
    return {
      'cash': cash,
      'cashType':cashType,
      'sortType':sortType,
      'actionType':actionType,
      'rewardType':rewardType,
      'effectiveTime':effectiveTime,
      'cardIDs':cardIDs,
      'cardRewardIDs':cardRewardIDs,

      'tasks':tasks,

      'mobilepays':mobilepays,
      'ecommerces':ecommerces,
      'supermarkets':supermarkets,
      'onlinegames':onlinegames,
      'streamings':streamings,
      'foods':foods,
      'transportations':transportations,
      'travles':travels,
      'deliveries':deliveries,
      'insurances':insurances,
      'malls':malls,
      'sports':sports,
      'conveniencestores':conveniencestores,
      'appstores':appstores,
      'hotels':hotels,
      'amusements':amusements,
      'cinemas':cinemas,
      'publicutilities':publicutilities,
    };
  }
}

