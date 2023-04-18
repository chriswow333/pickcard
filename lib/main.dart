import 'package:flutter/material.dart';
import 'package:pickcard/page/pickcard/pickcard.dart';

void main() {
  runApp(const Pickcard());
}


class Pickcard extends StatelessWidget {
  const Pickcard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:"Pick card",
        // initialRoute:'/',
        // routes:{
        //   '/':(context)=> const PickCardScreen(),
        //   // '/card':(context)=> const CardContentScreen(),
        // }, 
        home: PickCardScreen(),
        debugShowCheckedModeBanner: false,
    );
  }
}



class PickCardScreen extends StatelessWidget {
  const PickCardScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Title')
      ),
      body:Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top:20),
        child: const SingleChildScrollView(
          child: PickcardPage(),
        ),
      ),
    );
  }
}

