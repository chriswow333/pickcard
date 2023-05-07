import 'package:flutter/material.dart';
import 'package:pickcard/page/cardcontent/cardcontent.dart';
import 'package:pickcard/page/pickcard/pickcard.dart';

void main() {
  runApp(const Pickcard());
}


class Pickcard extends StatelessWidget {
  const Pickcard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"選卡趣",
      initialRoute:'/',
      routes:{
        '/': (context)=> const PickCardScreen(),
        '/card':(context)=>  const CardContentScreen(),
      },
      onUnknownRoute: (settings) { 
        return MaterialPageRoute(builder: (_) =>const PickCardScreen());
      },
      debugShowCheckedModeBanner: false,
    );
  }
}



class PickCardScreen extends StatelessWidget {
  const PickCardScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top:20),
          child:const SizedBox(
            width:800,
            child: PickcardPage(),
          )
        ),
      ),
    );
  }
}


class CardContentScreen extends StatelessWidget {
  const CardContentScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.only(top:20),
          child: const SizedBox(
            width:800,
            child:CardContentPage(),
          ),
        ),
      ),
    );
  }
}

