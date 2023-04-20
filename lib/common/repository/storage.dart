

import 'package:localstorage/localstorage.dart';
import 'dart:html';

import 'package:logger/logger.dart';

class LocalStorageService {

  static final storage = LocalStorage('pickcard.json');
  static final logger = Logger();
  
  static String getCardID() {
    logger.i("${storage.getItem("cardID")}");

    return storage.getItem("cardID");// ?? "cfae77f6-4eff-4112-5053-b129889e3ebb"; 
  }

  static void setCardID(String cardID) {
    logger.i(cardID);
    logger.i("${storage.getItem("cardID")}");
    storage.setItem("cardID", cardID);
  }
}  



class CardIDRepository {
  static final Storage _localStorage = window.localStorage;

  static Future save(String cardID) async {
    _localStorage['cardID'] = cardID;
  }


  static String getCardID() {
     String? cardID = _localStorage['cardID'];
     return cardID ?? "no cardID";
  }

  static Future invalidate() async {
    _localStorage.remove('cardID');
  }
}