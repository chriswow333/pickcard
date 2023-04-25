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
        '/': (context)=> PickCardScreen(),
        '/card':(context)=>  CardContentScreen(),
      },
      onUnknownRoute: (settings) { 
        return MaterialPageRoute(builder: (_) => PickCardScreen());
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
      appBar: AppBar(
        title:Text('選卡趣'),        
        backgroundColor:const Color.fromARGB(255, 58, 133, 255),

      ),
      body:Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top:20),
        child: SingleChildScrollView(
          child:ConstrainedBox(
            constraints: const BoxConstraints(
            minWidth: 800,
            maxWidth: 800,
          ),
            child: PickcardPage(),
          ),
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
      appBar: AppBar(
        title:Text('選卡趣'),
        backgroundColor: const Color(0x0077B6),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top:20),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: const BoxConstraints( 
              // minWidth: 720, // not working..
              maxWidth: 800,
            ),
            child:const CardContentPage(),
          ),
        ),
      ),
    );
  }
}

