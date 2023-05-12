

import 'package:flutter/material.dart';
import 'package:pickcard/shared/repository/creditcard/creditcard.dart';

class CreditCardViewModel with ChangeNotifier {


  CreditCardViewModel({
    required this.creditCardRepo,
  });

  final CreditCardRepo creditCardRepo;

  Future<void> fetchData() async {
    
    try {
    
      List<String> likes = _keyword.split(" ");
      final future = await creditCardRepo.fetchCards(likes);
      _cards = future;
    
    }catch(exc) {
      debugPrint('Error in _fetchData : ${exc.toString()}');
    }
    notifyListeners();
  }

  searchKeyword(String keyword){
    
    if(keyword.isNotEmpty) {
      isEnabled = true;
    }else {
      isEnabled = false;
    }
    
    _keyword = keyword;

    notifyListeners();
  }

  String _keyword = "";

  set creditCards(List<CreditCard> creditCards) => _cards = creditCards;
  List<CreditCard> get creditCards => _cards;

  List<CreditCard> _cards = [];

  bool isEnabled = false;


  setDis() {

  }

}
