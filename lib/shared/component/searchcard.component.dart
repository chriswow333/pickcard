

import 'package:flutter/material.dart';
import 'package:pickcard/common/repository/storage.dart';
import 'package:pickcard/shared/repository/creditcard/creditcard.dart';
import 'package:pickcard/shared/viewmodel/searchcard.viewmodel.dart';
import 'package:provider/provider.dart';

class CardSearchBtn extends StatelessWidget {
  const CardSearchBtn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    CreditCardViewModel creditCardViewModel = Provider.of<CreditCardViewModel>(context);

    return Container(
      alignment: Alignment.centerLeft,
      child:ElevatedButton(
        onPressed: (){
          creditCardViewModel.fetchData();
        },
        style:ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 34, 188, 208),
          shape: RoundedRectangleBorder( 
            borderRadius: BorderRadius.circular(10.0),
          ),
          fixedSize: Size(100,35),
        ),
        child:const Text(
          '尋找卡片',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 15,
            color: Color.fromRGBO(245, 246, 255, 1),
          ),
        ),
      )
    );
  }
}



class CreditCardItemList extends StatelessWidget {
  const CreditCardItemList({ Key? key, required this.creditCards }) : super(key: key);

  final List<CreditCard> creditCards;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          for(CreditCard creditCard in creditCards)
            _CreditCardItem(creditCard: creditCard),
        ]
      )
    );
  }
}

class _CreditCardItem extends StatelessWidget {
  const _CreditCardItem({ Key? key, required this.creditCard }) : super(key: key);

  final CreditCard creditCard;

  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.centerLeft,
      padding:const EdgeInsets.only(bottom:10),
      child:ElevatedButton(
        onPressed: (){
          CardIDRepository.save(creditCard.id!);
          LocalStorageService.setCardID(creditCard.id!);
          Navigator.of(context).pushNamed('/card',);
        },
        style:ElevatedButton.styleFrom(
          shadowColor: Colors.grey.withOpacity(0.1),
          primary: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
          shape: RoundedRectangleBorder( 
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child:Container(
          padding:const EdgeInsets.all(20),
          child:Row(
            children:[
              Expanded(
                flex:2,
                child:Container(
                  // width: 100,
                  child:Image(
                    image: AssetImage('images/${creditCard.imagePath}'),
                  ),
                ),
              ),
              Expanded(
                flex:2,
                child:Column(
                  children:[
                    Container(
                      child:Text(
                        creditCard.name!,
                        style: TextStyle(
                          color:Colors.black,
                        ),
                      )
                    ),
                    Container(
                      child:Text(
                        creditCard.bankName!,
                        style: TextStyle(
                          color:Colors.black,
                        ),
                      )
                    ),
                  ]
                ),
              ),
              SizedBox(width:10,),
              Expanded(
                flex:5,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    for(String desc in creditCard.descs!)
                      Text( 
                        desc,
                        style: TextStyle(
                          color:Colors.black,
                        ),
                      ),
                  ]
                ),
              ),  
            ]
          )
        )
        
      )
    );
  }
}



class CardListTitle extends StatelessWidget {
  const CardListTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child:Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children:const [
          Text(
            '搜尋卡片結果',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
        ]
      )
    );
  }
}
