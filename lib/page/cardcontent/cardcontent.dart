



// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:convert';

import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pickcard/page/cardcontent/model/cardcontent_viewmodel.dart';
import 'package:pickcard/page/cardcontent/model/card_reward/card_reward.dart';
import 'package:pickcard/common/model/evaluate/evaluate_resp.dart';
import 'package:pickcard/common/model/evaluate/param.dart';
import 'package:pickcard/common/repository/storage.dart';
import 'package:pickcard/page/pickcard/model/pickcard_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'dart:html' as html;


class CardContentPage extends StatelessWidget {
  const CardContentPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers:[
        Provider<EvaluateRespObserver>(create:(_)=>EvaluateRespObserver()),
        Provider<CardRewardObserver>(create:(_)=>CardRewardObserver()),

        ChangeNotifierProvider<CardRewardViewModel>(create:(_)=>CardRewardViewModel()),
        ChangeNotifierProvider<CardFeatureViewModel>(create:(_)=>CardFeatureViewModel()),

        ChangeNotifierProvider<CashViewModel>(create:(_)=>CashViewModel()),
        ChangeNotifierProvider<EffectiveTimeViewModel>(create:(_) => EffectiveTimeViewModel()),

        ChangeNotifierProvider<CardRewardEvaluationViewModel>(create:(_)=> CardRewardEvaluationViewModel()),

    ],
      child:const InitialCardContentWrapper(),
    );
    
  }
}


class InitialCardContentWrapper extends StatelessWidget {
  const InitialCardContentWrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context, listen:false);
    
    CardRewardObserver cardRewardObserver = Provider.of<CardRewardObserver>(context, listen:false);

    String cardID = CardIDRepository.getCardID();

    cardRewardObserver.fetchCardReward(cardID);
    
    final cardRewardResp = cardRewardObserver.cardReward;

    cardRewardObserver.fetchCardReward(cardID);

    return Observer(builder:(context){
      if(cardRewardResp == null || cardRewardResp.result == null)return Container();
      
      cardRewardViewModel.initCardRewardModel(cardRewardResp.result);

      return const CardContent();

    });
  }
}

class CardContent extends StatelessWidget {
  const CardContent({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    CardFeatureViewModel cardFeatureViewModel = Provider.of<CardFeatureViewModel>(context);

    String selectedFeature = cardFeatureViewModel.getSelectedFeature();

    if("卡片優惠" == selectedFeature){
      return const CardRewardWrapper();
    }else {
      return const CardOtherRewardWrapper();
    }
  }
}

class CardRewardWrapper extends StatelessWidget {
  const CardRewardWrapper({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CardInfo(),
        SizedBox(height:20),
        CardFeatures(),
        CardRewardList(),
        SizedBox(height:50),
      ], 
    );
  }
}

class CardInfo extends StatelessWidget {
  const CardInfo({ 
    Key? key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);

    String bankName = cardRewardViewModel.getBankName();
    String cardName = cardRewardViewModel.getCardName();
    String imagePath = cardRewardViewModel.getImagePath();
    
    List<String> descs = cardRewardViewModel.getDescs();

    return Container(
      alignment: Alignment.centerLeft,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Column(
            children:[
              CardIcon(imagePath: imagePath,),
              CardTitle(bankName: bankName,cardName: cardName,),
            ],
          ),
          const SizedBox(width:20,),
          CardDescs(descs:descs),
        ],
      ),
    );
  }
}

class CardIcon extends StatelessWidget {
  const CardIcon({ Key? key, required this.imagePath, }) : super(key: key);

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Image(
        width:200,
        image: AssetImage('images/' + imagePath),
    )
    );
  }
}

class CardTitle extends StatelessWidget {
  const CardTitle({ Key? key, required this.bankName, required this.cardName, }) : super(key: key);
  
  final String bankName;
  final String cardName;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Text(
            cardName,
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 20,
              color: Colors.black87,
            ),
          ),
          Text(
            bankName,
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 20,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

class CardDescs extends StatelessWidget {
  const CardDescs({ Key? key, required this.descs }) : super(key: key);
  final List<String> descs;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:Container(
        padding:const EdgeInsets.only(top:10),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            for (String desc in descs) 
              CardDesc(desc:desc),
          ],
        ),
      ),
    );
  }
}

class CardDesc extends StatelessWidget {
  const CardDesc({ Key? key, required this.desc, }) : super(key: key);

  final String desc;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children:[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                padding:const EdgeInsets.only(top:2),
                child:const Icon(Icons.arrow_right_outlined,),
              ),
              Expanded(
                child:Text(
                  desc,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height:5),
      ]
    );
  }
}



class LinkURL extends StatelessWidget {
  const LinkURL({ Key? key, required this.linkURL, }) : super(key: key);

  final String linkURL;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding:const EdgeInsets.only(top:40,),
      alignment: Alignment.centerLeft,
      width:120,
      child:
       TextButton(
         onPressed: (){
          html.window.open(linkURL, 'new tab');
         },
         child:Row(
          children:const [
            Text(
              '點我官網',
              style: TextStyle(
                fontFamily: "Netflix",
                fontWeight: FontWeight.w300,
                fontSize: 15,
                letterSpacing: 0.0,
                color: Colors.black87,
              ),
            ),
            Icon(
              Icons.double_arrow,
              color: Colors.black45,
              size: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}


class CardFeatures extends StatelessWidget {
  const CardFeatures({ Key? key,}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);
    String linkURL = cardRewardViewModel.getLinkURL();
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          const CardFeatureTitles(),
          LinkURL(linkURL: linkURL),
         
        ],
      ),
    );
  }
}






class CardFeatureTitles extends StatelessWidget {
  const CardFeatureTitles({ Key? key, }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    CardFeatureViewModel cardFeatureViewModel = Provider.of<CardFeatureViewModel>(context);

    List<String> featureTitles = cardFeatureViewModel.getFeatures();

    return Container(
      child:Wrap(
        children:[
          for(var f in featureTitles)
            FeatureTitle(title: f,),
        ],
      ),
    );
  }
}


class FeatureTitle extends StatelessWidget {
  const FeatureTitle({ Key? key, required this.title,}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
  
    CardFeatureViewModel cardFeatureViewModel = Provider.of<CardFeatureViewModel>(context);
    String selectedFeature = cardFeatureViewModel.getSelectedFeature();

    bool selected = selectedFeature == title;
    
    return Container(
        padding: const EdgeInsets.only(top:5),
        child:TextButton(
          onPressed:(){
            cardFeatureViewModel.toggelFeature(title);
          },
          child:Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 14,
              letterSpacing: 0.0,
              color: selected ? const Color(0xff2db3ff):Colors.black87,
            ),
          ),
        ),
      );
  }
}


class CardRewardList extends StatelessWidget {
  const CardRewardList({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);
    
    CardModel cardModel = cardRewardViewModel.getCardModel();
    List<CardRewardModel> cardRewardModels = cardModel.getCardRewardModels();

    return Container(
      child:Column(
        children:[
          for(CardRewardModel cardRewardModel in cardRewardModels) 
            CardRewardItem(cardRewardModel:cardRewardModel),
        ],
      ),
    );
  }
}


class CardRewardItem extends StatelessWidget {
  
  const CardRewardItem({ 
    Key? key, 
    required this.cardRewardModel, 
  }) : super(key: key);

  final CardRewardModel cardRewardModel;

  @override
  Widget build(BuildContext context) {
    
    String title = cardRewardModel.getTitle();

    String cardRewardID = cardRewardModel.getID();

    List<String> descs = cardRewardModel.getDescs();
    
    String startDate = cardRewardModel.getStartDate();
    String endDate = cardRewardModel.getEndDate();

    double totalBonus = cardRewardModel.getTotalBonus();

    int calculateType = cardRewardModel.getCalculateType();

    int rewardType = cardRewardModel.getRewardType();

    List<int> limitTypes = cardRewardModel.getLimitTypes();


    String feedbackTypeName = cardRewardModel.getFeedbackTypeName();

    List<String> limitTypeNames = [];

    for(int limitType in limitTypes) {
      limitTypeNames.add(RewardTypeLimitTypeName.getRewardTypeLimitName(limitType));
    }


    return Container(
      padding:const EdgeInsets.only(bottom:20),
      child:Container(
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10)
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.01),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
        padding:const EdgeInsets.all(20.0),
        alignment: Alignment.centerLeft,
        width:MediaQuery.of(context).size.width,
        child:SingleChildScrollView(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              CardRewardTitleWrapper(
                title:title, 
                rewardType: rewardType, 
                feedbackTypeName: feedbackTypeName,
                limitTypeNames: limitTypeNames,
                startDate: startDate,
                endDate: endDate,
              ),
              
              const SizedBox(height:20),
              const Divider(),
              
              CardRewardDescs(descs:descs),
              
              const Divider(),
              

              CardRewardChannelBtnWrapper(cardRewardID: cardRewardID, totalBonus: totalBonus, calculateType:calculateType),
              
            ],
          ),
        ),
      ),
    );
  }
}


class CardRewardTitleWrapper extends StatelessWidget {
  const CardRewardTitleWrapper({ 
    Key? key, 
    required this.title, 
    required this.rewardType, 
    required this.feedbackTypeName, 
    required this.limitTypeNames,
    required this.startDate,
    required this.endDate,
  }) : super(key: key);

  final String title;
  final int rewardType;
  final String feedbackTypeName;
  final List<String> limitTypeNames;
  final String startDate;
  final String endDate;

  @override
  Widget build(BuildContext context) {

    Color rewardTypeColor = RewardTypes.getRewardTypeColor(rewardType);

    return Container(
      child:Row(
        // runSpacing: 10.0,
        children:[

          Container(
            padding:const EdgeInsets.only(top:5, bottom: 5, left:10, right:10),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                 Radius.circular(10.0),
              ),
              color: rewardTypeColor,
            ),
            
            child:Text(
              feedbackTypeName,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
                letterSpacing: 0.0,
                color: Colors.white,
              ),
            ), 
          ),
          
          const SizedBox(width:15),

          Expanded(
            flex:3,
            child:CardRewardTitle(title:title),
          ),
          
          Expanded(
            flex:1,
            child:CardRewardDuration(startDate: startDate, endDate: endDate,),
          ),


          // const SizedBox(width:10),
          // for(String limitTypeName in limitTypeNames)
          //   Container(
          //     padding:const EdgeInsets.only(right:5,),
          //     child:Container(
          //       // alignment: Alignment.center,
          //       // width:50,
          //       // height:30,
          //       padding:const EdgeInsets.only(top:5, bottom: 5, left:10, right:10),
          //       decoration: BoxDecoration(
          //         borderRadius: const BorderRadius.all(
          //             Radius.circular(10.0),
          //         ),
          //         color:Colors.deepOrange[500],
          //       ),
          //       child:Text(
          //         limitTypeName,
          //         style: const TextStyle(
          //           fontFamily: "Netflix",
          //           fontWeight: FontWeight.w300,
          //           fontSize: 13,
          //           letterSpacing: 0.0,
          //           color: Colors.white,
          //         ),
          //       ),
          //     ),
          //   )
        ]
      ),
      
    );
  }
}
class CardRewardTitle extends StatelessWidget {
  const CardRewardTitle({ Key? key, required this.title, }) : super(key: key);
  
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 20,
          letterSpacing: 0.0,
          color: Colors.black87,
        ),
      ),
    );
  }
}



// class CardRewardDurationWrapper extends StatelessWidget {
//   const CardRewardDurationWrapper({
//     Key? key, required this.startDate, required this.endDate,
//   }) : super(key: key);

//   final String startDate;
//   final String endDate;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // padding:const EdgeInsets.only(top:20,),
//       child:Row(
//         // mainAxisAlignment: MainAxisAlignment.end,
//         children:[
//           // const CardRewardDurationTitle(),
//           // SizedBox(width:5),
//           CardRewardDutaion(startDate: startDate, endDate: endDate,),
//         ]
//       ),
//     );
//   }
// }

class CardRewardDuration extends StatelessWidget {
  const CardRewardDuration({ Key? key, required this.startDate, required this.endDate, }) : super(key: key);

  final String startDate;
  final String endDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(
        '$startDate - $endDate',
        style: const TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 14,
          color: Colors.black87,
        ),
      ),
    );
  }
}


// class CardRewardDurationTitle extends StatelessWidget {
//   const CardRewardDurationTitle({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:const Text(
//         '優惠期間',
//         style: TextStyle(
//           fontWeight: FontWeight.w300,
//           fontSize: 14,
//           color: Colors.black87,
//         ),
//       ),
//     );
//   }
// }



class CardRewardDescs extends StatefulWidget {
  const CardRewardDescs({ Key? key, required this.descs }) : super(key: key);

  final List<String> descs;

  @override
  _CardRewardDescsState createState() => _CardRewardDescsState();
}

class _CardRewardDescsState extends State<CardRewardDescs> {
  
  bool needCollapse = false;
  bool show = false;

  @override
  void initState(){
    
    int length = widget.descs.length;

    setState((){

      if(length <= 1){

        show = true;
        needCollapse = false;

      }else {

        show = false;
        needCollapse = true;

      }
    }); 

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    
    List<String> showDescs = widget.descs;

    // if(!show){
    //   for(int i = 0; i < widget.descs.length; i++){  
    //     if(i == 1)break;
    //     showDescs.add(widget.descs[i]);
    //   }
    // }else {
    //   showDescs = widget.descs;
    // }

    return Container(
      alignment: Alignment.centerLeft,
      padding:const EdgeInsets.only(top:10,),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          const Text(
            "詳細說明",
             style: TextStyle(
              fontFamily: "Netflix",
              fontWeight: FontWeight.w300,
              fontSize: 14,
              color: Colors.black87,
            ),
          ),
        
          for(String desc in showDescs)
            CardRewardDesc(desc:desc),
        ],
      ),
    );
  }
}

class CardRewardDesc extends StatelessWidget {
  const CardRewardDesc({ Key? key, required this.desc, }) : super(key: key);
  
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(
        desc,
        style: const TextStyle(
          fontFamily: "Netflix",
          fontWeight: FontWeight.w300,
          fontSize: 14,
          color: Colors.black87,
        ),
      ),
    );
  }
}


class CardRewardChannelBtnWrapper extends StatelessWidget {
  const CardRewardChannelBtnWrapper({ 
    Key? key, 
    required this.cardRewardID,
    required this.totalBonus,
    required this.calculateType,
  }) : super(key: key);


  final String cardRewardID;
  final double totalBonus;
  final int calculateType;

  @override
  Widget build(BuildContext context) {
    
    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);

    Set<int> channelTypes = {};
    bool hasTaskType = false;

    Map<int, List> rewardChannels = cardRewardViewModel.getCardModel().getCardRewardChannelsByCardReward(cardRewardID);
    
    rewardChannels.forEach((key, value) {
      if(2 != key) {
        channelTypes.add(key);
      }else {
        hasTaskType = true;
      }
    });

    return Container(
      alignment: Alignment.centerLeft,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[

          const EvaluationCardRewardTitle(),

          const SizedBox(height:10),

          const CardRewardChannelBtnTitle(),

          CardRewardChannelBtnList(cardRewardID:cardRewardID, channelTypes:channelTypes),
          
          const SizedBox(height:10,),
          
          if(hasTaskType)
            const CardRewardTaskBtnTitle(),
          
          if(hasTaskType)
            CardRewardTaskBtnList(cardRewardID:cardRewardID, ),
          

          // ChannelList(cardRewardID:cardRewardID),


          CardRewardReturnWrapper(cardRewardID: cardRewardID, totalBonus: totalBonus, calculateType:calculateType,),

          const SizedBox(height:20),

         
          const SizedBox(height:10),
          
          const Divider(),
        ],
      ),
    );
  }
}

class EvaluationCardRewardTitle extends StatelessWidget {
  const EvaluationCardRewardTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(
        '優惠通路試算',
        style: const TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 20,
          letterSpacing: 0.0,
          color: Colors.black87,
        )
      ),
    );
  }
}

class CardRewardChannelBtnTitle extends StatelessWidget {
  const CardRewardChannelBtnTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(
        '精選通路',
        style: const TextStyle(
          fontFamily: "Netflix",
          fontWeight: FontWeight.w300,
          fontSize: 20,
          letterSpacing: 0.0,
          color: Colors.black87,
        ),
      ),
    );
  }
}


class CardRewardChannelBtnList extends StatelessWidget {
  const CardRewardChannelBtnList({ Key? key, required this.cardRewardID, required this.channelTypes, }) : super(key: key);

  final String cardRewardID;
  final Set<int> channelTypes;
  @override
  Widget build(BuildContext context) {

    return Container(
      padding:const EdgeInsets.only(top:10),
      child:Wrap(
        spacing: 10,
        runSpacing: 20,
        children:[
          for(int channelType in channelTypes)
            CardRewardChannelBtn(cardRewardID:cardRewardID, channelType:channelType,),
        ],
      )
    );
  }
}




class CardRewardTaskBtnTitle extends StatelessWidget {
  const CardRewardTaskBtnTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Text(
        '優惠任務',
        style: const TextStyle(
          fontFamily: "Netflix",
          fontWeight: FontWeight.w300,
          fontSize: 20,
          letterSpacing: 0.0,
          color: Colors.black87,
        ),
      ),
    );
  }
}

class CardRewardTaskBtnList extends StatelessWidget {
  const CardRewardTaskBtnList({ Key? key, required this.cardRewardID, }) : super(key: key);

  final String cardRewardID;

  @override
  Widget build(BuildContext context) {
    
    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);

    List<Task> tasks = cardRewardViewModel.getCardModel().getCardRewardTasksByChannelType(cardRewardID, 2);
    
    return Container(
      padding:const EdgeInsets.only(top:10),
      alignment: Alignment.centerLeft,
      child:Wrap(
        spacing: 10,
        runSpacing: 20,
        children:[
          for(Task t in tasks)
            CardRewardTaskBtn(cardRewardID:cardRewardID, taskID:t.id ?? "", name:t.name ?? "")
        ]
      ),
    );
  }
}




class CardRewardTaskBtn extends StatelessWidget {
  const CardRewardTaskBtn({ Key? key, required this.cardRewardID, required this.taskID, required this.name, }) : super(key: key);
  
  final String cardRewardID;
  final String taskID;
  final String name;

  @override
  Widget build(BuildContext context) {
    
    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);
  
    bool isSelected = cardRewardViewModel.hasSelectedTaskID(cardRewardID, taskID);
    
    bool hasChosen = cardRewardViewModel.hasChosenCardRewardTaskID(cardRewardID, taskID);
    
    return ElevatedButton(
      style: isSelected ? 
        ElevatedButton.styleFrom(
          primary: hasChosen ? Colors.greenAccent[700]!:const Color(0xff2db3ff),
          shape: RoundedRectangleBorder( 
            borderRadius: BorderRadius.circular(10.0),
          ),
        )
        :ElevatedButton.styleFrom(
          primary: const Color(0xffFFFBFB),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
          side: BorderSide(width: 0.5, color: hasChosen ? Colors.greenAccent[700]!:const Color(0xff2db3ff),),
        ),
      onPressed: (){
  
        cardRewardViewModel.toggleSelectedCardRewardTask(cardRewardID, taskID);
        // cardRewardViewModel.getCallbackPosition()(taskID);

      },
      child:Text(
        name,
        style: isSelected ?
          const TextStyle(
            fontFamily: "Netflix",
            fontWeight: FontWeight.w100,
            fontSize: 12,
            color:Colors.white,
          )
          : TextStyle(
            fontFamily: "Netflix",
            fontWeight: FontWeight.w100,
            fontSize: 12,
            color: hasChosen ? Colors.greenAccent[700]!: const Color(0xff2db3ff),
          ),
      ),
    );
  }
}



class CardRewardChannelBtn extends StatelessWidget {
  const CardRewardChannelBtn({ Key? key, required this.cardRewardID, required this.channelType }) : super(key: key);

  final String cardRewardID;
  final int channelType;

  @override
  Widget build(BuildContext context) {
   
    String channelTypeName = Channels.getChannelTypeName(channelType);

    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);

    bool isSelected = cardRewardViewModel.hasSelectedCardRewardChannelType(cardRewardID, channelType);

    bool hasChosen = cardRewardViewModel.hasChosenCardRewardChannelType(cardRewardID, channelType);

    ChannelTypeModel channelTypeModel = ChannelTypeModels.getChannelTypeModel(channelType);
    IconData icon = ChannelTypeModels.getChannelTypeIconModels()[channelType]!;

    return TextButton(
      onPressed: (){

        cardRewardViewModel.toggleSelectedCardRewardChannelType(cardRewardID, channelType);

      },
      child:Column(
        children:[
           Icon(
                icon,
                color: hasChosen ? Colors.greenAccent[700]!: const Color(0xff2db3ff),
                size: 35.0,
              ),
              Text(
                channelTypeName,
                style: TextStyle(
                  fontSize: 15,
                  color: hasChosen ? Colors.greenAccent[700]!:const Color(0xff2db3ff),
                ),
              ),
        ]
      ),
      
      // Text(
      //   channelTypeName,
      //   style: isSelected ?
      //   const TextStyle(
      //     fontFamily: "Netflix",
      //     fontWeight: FontWeight.w100,
      //     fontSize: 12,
      //     color:Colors.white,
      //   )
      //   : TextStyle(
      //     fontFamily: "Netflix",
      //     fontWeight: FontWeight.w100,
      //     fontSize: 12,
      //     color: hasChosen ? Colors.greenAccent[700]!: const Color(0xff2db3ff),
      //   ),
      // ),
    );
  }
}


class CardRewardReturnWrapper extends StatelessWidget {
  const CardRewardReturnWrapper({ Key? key, required this.cardRewardID, required this.totalBonus, required this.calculateType,}) : super(key: key);

  final String cardRewardID;
  final double totalBonus;
  final int calculateType;

  @override
  Widget build(BuildContext context) {

    CardRewardEvaluationViewModel cardRewardEvaluationViewModel = Provider.of<CardRewardEvaluationViewModel>(context);

    double backBonus = cardRewardEvaluationViewModel.getRewardReturnBackBonus(cardRewardID);

    double backBonusPercentage = (backBonus/ totalBonus) * 100 ;

    bool initRewardReturn = cardRewardEvaluationViewModel.hasInitCardRewardEvaluation(cardRewardID);

    String percentageDesc = "點我試算";

    if(initRewardReturn){
      percentageDesc = "${backBonusPercentage.roundToDouble()}%";
    }

    return Container(
      child:Wrap(
        children:[
          const CashItemStf(),
          const DateItem(),
          const SizedBox(width:10),
          EvaluateRewardReturnBtn(cardRewardID:cardRewardID),
          const SizedBox(width:10),
          if (calculateType == 2)
            RewardReturnPercentage(cardRewardID:cardRewardID, totalBonus: totalBonus,),
          
          const SizedBox(width:10),
          RewardReturnDesc(cardRewardID:cardRewardID),
        ],
      ),
    );

  }
}


class CashItemStf extends StatefulWidget {
  const CashItemStf({ Key? key }) : super(key: key);

  @override
  _CashItemStfState createState() => _CashItemStfState();
}

class _CashItemStfState extends State<CashItemStf> {

  TextEditingController _controller = new TextEditingController();


  @override
  void initState(){
    super.initState();
    _controller.text = '1000';
  }


  @override
  Widget build(BuildContext context) {

    CashViewModel cashViewModel = Provider.of<CashViewModel>(context);

    return Container(
      child:Row(
        children:[
          Container(
            width:60,
            child:Text('消費金額')
          ),
          const SizedBox(width:15,),
          Container(
          // height:30,
          width:120,
          // alignment: Alignment.topCenter,
          child:TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ], 
             decoration: const InputDecoration(  
              border: InputBorder.none,  
            ),  
            style: const TextStyle(
              fontSize: 15,
            ),
            onChanged:(text){
              var cash = int.parse(text);
              cashViewModel.changeCash(cash);
            },
          ),
        ),
        ],
      ),
    );
  }
}



final format = DateFormat("yyyy-MM-dd hh:mm:ss");

class DateItem extends StatelessWidget {
  const DateItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    EffectiveTimeViewModel effectiveTimeViewModel = Provider.of<EffectiveTimeViewModel>(context);


    return Container(
      child:Row(
        children:[
          Container(
            width:60,
            child:const Text(
              '消費日期',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 15,
              ),
            )
          ),
          SizedBox(width:15),
          SizedBox(
            height:32,
            width:160,
            child:DateTimeField(
              resetIcon:null,
              initialValue: DateTime.now(),
              format: format,
              decoration: const InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: "",
              ),
              onShowPicker: (context, currentValue) async {
                

                final date = await showDatePicker(
                    context: context,
                    firstDate: DateTime(1900),
                    initialDate: currentValue ?? DateTime.now(),
                    lastDate: DateTime(2100));
                    
                if (date != null) {
                  final time = await showTimePicker(
                    context: context,
                    initialTime:
                        TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
                  );

                  final dateTime = DateTimeField.combine(date, time);

                  effectiveTimeViewModel.changeEffectiveTime(dateTime);
                  
                  return dateTime;

                } else {
                  
                  effectiveTimeViewModel.changeEffectiveTime(currentValue!);
                  
                  return currentValue;

                }
              },
            ),
          ),
        ],
      ),
    );
  }
}





class EvaluateRewardReturnBtn extends StatelessWidget {
  const EvaluateRewardReturnBtn({ Key? key, required this.cardRewardID, }) : super(key: key);

  final String cardRewardID;

  @override
  Widget build(BuildContext context) {

    CardRewardEvaluationViewModel cardRewardEvaluationViewModel = Provider.of<CardRewardEvaluationViewModel>(context);

    return Container(
      padding:const EdgeInsets.only(top:5),
      width:100,
      child:ElevatedButton(
        style:ElevatedButton.styleFrom(
          primary: const Color(0xff2db3ff),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
          side: const BorderSide(width: 0.5, color: Color(0xff2db3ff),),
        ),
        onPressed: (){
          cardRewardEvaluationViewModel.evaluateSpecifiedCardReward(context, cardRewardID);
        },
        child:const Text(
        '點我試算',
        style: TextStyle(
          fontFamily: "Netflix",
          fontWeight: FontWeight.w100,
          fontSize: 12,
          color:Colors.white,
        ),
        ),
      ),

    );
  }
}


class RewardReturnPercentage extends StatelessWidget {
  const RewardReturnPercentage({ Key? key, required this.cardRewardID, required this.totalBonus, }) : super(key: key);
  
  final String cardRewardID;

  final double totalBonus;


  @override
  Widget build(BuildContext context) {

    CardRewardEvaluationViewModel cardRewardEvaluationViewModel = Provider.of<CardRewardEvaluationViewModel>(context);


    bool initRewardReturn = cardRewardEvaluationViewModel.hasInitCardRewardEvaluation(cardRewardID);
    

    if(!initRewardReturn) return Container();

    double backBonus = cardRewardEvaluationViewModel.getRewardReturnBackBonus(cardRewardID);

    return Container(
      padding:const EdgeInsets.only(top:5,),
      child:Wrap(
        // crossAxisAlignment: CrossAxisAlignment.,
        // mainAxisAlignment: MainAxisAlignment.start,
        children:[
          Text(
            '${backBonus}%',
            style: const TextStyle(
              fontFamily: "Netflix",
              fontWeight: FontWeight.w300,
              fontSize: 20,
              letterSpacing: 0.0,
              color: Colors.black87,
            ),
          ),
          const SizedBox(width:5),
          const Text(
            '/',
            style:TextStyle(
              fontFamily: "Netflix",
              fontWeight: FontWeight.w300,
              fontSize:15,
              letterSpacing: 0.0,
              color: Colors.black87,
            ),
          ),
          const SizedBox(width:2),
          Text(
            '$totalBonus%',
            style: const TextStyle(
              fontFamily: "Netflix",
              fontWeight: FontWeight.w300,
              fontSize: 20,
              letterSpacing: 0.0,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
    
    
  }
}


class RewardReturnDesc extends StatelessWidget {
  const RewardReturnDesc({ Key? key, required this.cardRewardID,}) : super(key: key);

  final String cardRewardID;

  @override
  Widget build(BuildContext context) {

    
    CardRewardEvaluationViewModel cardRewardEvaluationViewModel = Provider.of<CardRewardEvaluationViewModel>(context);

    bool initRewardReturn = cardRewardEvaluationViewModel.hasInitCardRewardEvaluation(cardRewardID);

    if(!initRewardReturn) return Container();

    String actualBackDesc = cardRewardEvaluationViewModel.getActualBackDesc(cardRewardID);

    return Container(
      child:Text(
        actualBackDesc,
        style: const TextStyle(
          fontFamily: "Netflix",
          fontWeight: FontWeight.w300,
          fontSize: 20,
          letterSpacing: 0.0,
          color: Colors.black87,
        ),
      ),
    );
    
  }
}

// class ChannelList extends StatelessWidget {
//   const ChannelList({ Key? key, required this.cardRewardID, }) : super(key: key);

//   final String cardRewardID;

//   @override
//   Widget build(BuildContext context) {

//     CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);

//     bool isSelectedCardRewardID = cardRewardViewModel.isSelectedCardRewardID(cardRewardID);

//     if(!isSelectedCardRewardID)return Container();

//     return Container(
//       padding:const EdgeInsets.only(top:20,),
//       child:Wrap(
//         children:[
//           Column(
//             children:[
//               ChannelTitle(cardRewardID: cardRewardID,),
//               const ChannelItemList(),
//             ]
//           ),
//         ],
//       ),
      
      
//     );
//   }
// }

class ChannelTitle extends StatelessWidget {
  const ChannelTitle({ Key? key, required this.cardRewardID }) : super(key: key);

  final String cardRewardID;

  @override
  Widget build(BuildContext context) {

    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);
      
    int channelType = cardRewardViewModel.getSelectedChannelType();

    String channelTypeName = Channels.getChannelTypeName(channelType);

    if (2 == channelType) return Container();

    return Container(
      alignment: Alignment.centerLeft,
      child:Wrap(
        children:[
          Text(
            channelTypeName,
            style: const TextStyle(
              fontFamily: "Netflix",
              fontWeight: FontWeight.w300,
              fontSize: 20,
              letterSpacing: 0.0,
              color: Colors.black87,
            ),
          ),
          
          const SizedBox(width:10),
          const ChannelToggleAllWidget(),
          
        ],
      ),
    );
  }
}

class ChannelToggleAllWidget extends StatelessWidget {
  const ChannelToggleAllWidget({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     
    
    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);

    String cardRewardID = cardRewardViewModel.getSelectedCardRewardID();
    int selectedChannelType = cardRewardViewModel.getSelectedChannelType();
    
    if(2 == selectedChannelType) {
      return Container();
    }

    return Container(
      child:TextButton(
      onPressed:(){

        cardRewardViewModel.toggleAllChosenCardRewardChannel(cardRewardID, selectedChannelType);

      },
      style:TextButton.styleFrom(
        backgroundColor: Colors.greenAccent[700],
      ),
      child:const Text(
        "全選",
        style: TextStyle(
          fontFamily: "Netflix",
          fontWeight: FontWeight.w100,
          fontSize: 10,
          color:Colors.white,
        ),
      ),
    )
    );
  }
}

// class ChannelItemList extends StatelessWidget {
//   const ChannelItemList({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
    
//     CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);

//     int selectedChannelType = cardRewardViewModel.getSelectedChannelType();
//     String selectedCardRewardID = cardRewardViewModel.getSelectedCardRewardID();
    
//     if(selectedChannelType == 2) {

//       String selectedTaskID = cardRewardViewModel.getSelectedTaskID();  

//       return Container(
//         alignment: Alignment.centerLeft,
//         child:ChannelTaskWrapper(cardRewardID: selectedCardRewardID, selectedTaskID: selectedTaskID,),
//       );    

//     }else {
    
//       List<ChannelModel> channelModels = cardRewardViewModel.getCardModel().getCardRewardChannelsByChannelType(selectedCardRewardID, selectedChannelType);

//       return Container(
//         alignment: Alignment.centerLeft,
//         child:Wrap(
//           children:[
//             for(ChannelModel channelModel in channelModels)
//               ChannelItem(channelModel:channelModel),
//           ],
//         ),
//       );
//     }
//   }
// }



class ChannelTaskWrapper extends StatelessWidget {
  const ChannelTaskWrapper({ Key? key, required this.cardRewardID, required this.selectedTaskID, }) : super(key: key);

  final String cardRewardID;
  final String selectedTaskID;

  @override
  Widget build(BuildContext context) {

    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);
    CardModel cardModel = cardRewardViewModel.getCardModel();
    Task? task = cardModel.getSelectedTaskByID(cardRewardID, selectedTaskID);

    if (task == null) {
      return Container();
    }else {

      String name = task.name!;
      List<String> descs = task.descs!;

      return Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children:[
          const SizedBox(height:10),
          ChannelTaskTitle(taskID:task.id!, title:name),
          const SizedBox(height:10),
          ChannelTaskDesc(descs: descs,)
        ]
      );
    }
  }
}


class ChannelTaskDesc extends StatelessWidget {
  const ChannelTaskDesc({ Key? key, required this.descs, }) : super(key: key);

  final List<String> descs;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding:const EdgeInsets.only(left:10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          for(String desc in descs)
            Text(desc)
        ]
      )
    );
  }
}



// class ChannelTaskList extends StatelessWidget {
//   ChannelTaskList({ Key? key, required this.tasks, }) : super(key: key);

//   final List<Task> tasks;

//   final ScrollController _controller = ScrollController();
//   late List _keys;

//   void callbackPosition(String taskID){
    
//     double totalLength = 0.0;
//     double currentLength = 0.0;
    
//     for(int i = 0; i < tasks.length; i++) {
//         RenderBox box = _keys[i].currentContext.findRenderObject();
//         totalLength += box.size.height;
//     }

//     for(int i = 0; i < tasks.length; i++) {
//         if (tasks[i].id == taskID){
//           break;
//         }
//         RenderBox box =_keys[i].currentContext.findRenderObject();
//         currentLength += box.size.height;
//       }
      
//       if(totalLength < 400){
//         currentLength = 0;
//       }else if(currentLength > (totalLength - 400)){
//         currentLength = totalLength - 400;
//       }

//       _controller.animateTo(currentLength, duration:const Duration(milliseconds:500), curve: Curves.decelerate);
//   }

//   @override
//   Widget build(BuildContext context) {

//     CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);

//     int size = tasks.length;
//     _keys = [for (var i = 0; i < size; ++i) GlobalKey()];
//     cardRewardViewModel.setCallbackPosition(callbackPosition);

//     return Container(
//       height:200,
//       child:SingleChildScrollView(
//         controller: _controller,
//         child:Column(
//           children:[
//             for(int i = 0; i < tasks.length; i++)
//               ChannelTask(key:_keys[i], task:tasks[i])
//           ]
//         ),
//       )
//     );
//   }
// }
// class ChannelTask extends StatelessWidget {
//   const ChannelTask({ Key? key, required this.task, }) : super(key: key);

//   final Task task;

//   @override
//   Widget build(BuildContext context) {

//     String name = task.name ?? "";
//     List<String> descs = task.descs ?? [];
    
//     return Container(
//       alignment: Alignment.centerLeft,
//       child:Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children:[
//           ChannelTaskTitle(taskID:task.id!, title:name),
//           for(String desc in descs)
//             Text(desc)  
//         ]
//       )
//     );
//   }
// }

class ChannelTaskTitle extends StatelessWidget {
  const ChannelTaskTitle({ Key? key,required this.taskID, required this.title, }) : super(key: key);
  
  final String taskID;
  final String title;
  
  @override
  Widget build(BuildContext context) {

    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);

    String selectedCardRewardID = cardRewardViewModel.getSelectedCardRewardID();

    bool hasChosenTaskID = cardRewardViewModel.hasChosenCardRewardTaskID(selectedCardRewardID, taskID);

    return Container(
      
      child:TextButton(
        onPressed: (){
          cardRewardViewModel.toggleChosenCardRewardTask(selectedCardRewardID, taskID);
        },
        child:Container(
          decoration: BoxDecoration(
            border: hasChosenTaskID ? 
              Border.all(
                color: Colors.greenAccent[700]!,
                width: 2,
              ):
              Border.all(
                color: Colors.white12,
                width: 2,
              ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          padding:const EdgeInsets.all(5.0),
          child:Text(
            title,
            style: const TextStyle(
              fontFamily: "Netflix",
              fontWeight: FontWeight.w100,
              fontSize: 20,
              color:Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}

// class ChannelItem extends StatelessWidget {
//   const ChannelItem({ Key? key, required this.channelModel, }) : super(key: key);
  
//   final ChannelModel channelModel;

//   @override
//   Widget build(BuildContext context) {

//     CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);

//     String cardRewardID = cardRewardViewModel.getSelectedCardRewardID();
//     int channelType = cardRewardViewModel.getSelectedChannelType();

//     String channelID = channelModel.id;
//     String name = channelModel.name;

//     bool hasChosenChannelID = cardRewardViewModel.hasChosenCardRewardChannel(cardRewardID, channelType, channelID);

//     return Container(
//       padding:const EdgeInsets.only(top:20,),
//       child:TextButton(
//         onPressed: (){
//           cardRewardViewModel.toggleCardRewardChannel(cardRewardID, channelType, channelID);
//         },
//         child:Container(
//           decoration: BoxDecoration(
//             border: hasChosenChannelID ? 
//               Border.all(
//                 color: Colors.greenAccent[700]!,
//                 width: 2,
//               ):
//               Border.all(
//                 color: Colors.white12,
//                 width: 2,
//               ),
//             borderRadius: const BorderRadius.all(
//               Radius.circular(10),
//             ),
//           ),
//           padding:const EdgeInsets.all(10.0),
//           child:Text(
//             name,
//             style: const TextStyle(
//               fontFamily: "Netflix",
//               fontWeight: FontWeight.w100,
//               fontSize: 12,
//               color:Colors.black87,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


class CardOtherRewardWrapper extends StatelessWidget {
  const CardOtherRewardWrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Column( 
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: const [

        CardInfo(),

        SizedBox(height:20),

        CardFeatures(),
        
        CardOtherRewardList(),
      ],
    );
  }
}

class CardOtherRewardList extends StatelessWidget {
  const CardOtherRewardList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);

    CardModel cardModel = cardRewardViewModel.getCardModel();
    List<OtherReward> otherRewards =  cardModel.getCardOtherRewards();
    return Container(
      padding:const EdgeInsets.only(top:10),
      child:Column(
        children:[
          for(OtherReward otherReward in otherRewards)
            CardOtherReward(otherReward:otherReward),
        ],
      ), 
    );
  }
}


class CardOtherReward extends StatelessWidget {
  const CardOtherReward({ Key? key, required this.otherReward }) : super(key: key);
  
  final OtherReward otherReward;
  
  @override
  Widget build(BuildContext context) {

    String title = otherReward.title;
    
    List<String> descs = otherReward.descs;

    return Container(
      padding:const EdgeInsets.only(bottom:20),
      child:Container(
        padding:const EdgeInsets.all(20),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.01),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Text(
              title,
              style: const TextStyle(
                fontFamily: "Netflix",
                fontWeight: FontWeight.w300,
                fontSize: 20,
                letterSpacing: 0.0,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height:10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                for(String d in descs)
                Container(
                  padding:const EdgeInsets.only(bottom:5),
                  child:SelectableText(
                    d,
                    style: const TextStyle(
                      fontFamily: "Netflix",
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                      letterSpacing: 0.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
                  
              ],
            ),
          ],
        ),
      )
    );
  }
}

