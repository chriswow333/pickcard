



import 'package:flutter/material.dart';
import 'package:pickcard/shared/viewmodel/searchcard.viewmodel.dart';
import 'package:provider/provider.dart';

import 'dart:html' as html;


class TopBar extends StatelessWidget {
  const TopBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children:[
          TopTitle(),
          SizedBox(width:20),
          SearchCardBar(),
        ]
      )
    );
  }
}

class TopTitle extends StatelessWidget {
  const TopTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        html.window.open('/', '_self');
      }, 
      style:ElevatedButton.styleFrom(
        // primary: Color.fromRGBO(34, 188, 208, 1),
        shape: RoundedRectangleBorder( 
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
      child:Container(
        padding:const EdgeInsets.all(5),
        child:Row(
          children:[
            Container(
              padding:const EdgeInsets.only(top:5),
              child:Image(
                width:30,
                image:AssetImage('images/homepage.png')
              ),
            ),
            const SizedBox(width:5,),
            const Text(
              '選卡趣',
              style:TextStyle(
                fontSize: 25,
                color: Color.fromRGBO(34, 188, 208, 1),
                fontWeight:FontWeight.w500,
              ),
            )
          ]
        ),
        
      )
    );
  }
}

class SearchCardBar extends StatefulWidget {
  const SearchCardBar({ Key? key }) : super(key: key);

  @override
  _SearchCardBarState createState() => _SearchCardBarState();
}

class _SearchCardBarState extends State<SearchCardBar> {

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState(){
    super.initState();

  }

  @override
  Widget build(BuildContext context) {

    CreditCardViewModel creditCardViewModel = Provider.of<CreditCardViewModel>(context, listen:false);

    return SizedBox(
      height:35,
      width:200,
      child:TextField(
        controller:_searchController,
        textAlign: TextAlign.start,
        textAlignVertical:TextAlignVertical.bottom,
        onChanged: (String value){
          creditCardViewModel.searchKeyword(value);
        },
        decoration: InputDecoration(
          hintText: '信用卡',
          prefixIcon:const Icon(Icons.search),
          suffixIcon: IconButton(
            icon:const Icon(Icons.clear),
            onPressed: () {
              _searchController.clear();
              creditCardViewModel.searchKeyword('');
            },
          ),
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          )
        ),
        style:const TextStyle(
          fontSize:18,
        ),
      ),
    );
  }
}

