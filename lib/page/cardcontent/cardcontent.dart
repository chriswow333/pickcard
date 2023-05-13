



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
import 'package:pickcard/shared/component/searchcard.component.dart';
import 'package:pickcard/shared/component/topbar.component.dart';
import 'package:pickcard/shared/repository/creditcard/creditcard.dart';
import 'package:pickcard/shared/viewmodel/searchcard.viewmodel.dart';
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

        ChangeNotifierProvider<CreditCardViewModel>(create:(_)=>CreditCardViewModel(creditCardRepo: CreditCardRepo())),

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

      return Column(
        children:[
          TopBar(),
          SizedBox(height:20),      
          CardContent()
        ],
      ); 

    });
  }
}

class CardContent extends StatelessWidget {
  const CardContent({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    CardFeatureViewModel cardFeatureViewModel = Provider.of<CardFeatureViewModel>(context);

    String selectedFeature = cardFeatureViewModel.getSelectedFeature();

    CreditCardViewModel creditCardViewModel = Provider.of<CreditCardViewModel>(context);

    return Observer(builder:(context){
    
      if(creditCardViewModel.isEnabled){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            SizedBox(height:20),      
            CardSearchBtn(),
            SizedBox(height:20),
            CardListTitle(),
            CreditCardItemList(creditCards: creditCardViewModel.creditCards,),
          ],
        );
      }else {
        if("卡片優惠" == selectedFeature){
          return const CardRewardWrapper();
        }else {
          return const CardOtherRewardWrapper();
        }
      }

    });

    
  }
}

class CardRewardWrapper extends StatelessWidget {
  const CardRewardWrapper({ Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    bool showDetail = false;

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
          Container(
            child:Column(
              children:[
                CardIcon(imagePath: imagePath,),
                CardTitle(bankName: bankName,cardName: cardName,),
              ],
            ),
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
        width:150,
        image: AssetImage('images/${imagePath}'),
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
              fontSize: 15,
              color: Colors.black87,
            ),
          ),
          Text(
            bankName,
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 15,
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
                child:const Icon(
                  Icons.arrow_right_outlined,
                ),
              ),
              Expanded(
                child:Text(
                  desc,
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 15,
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
              size: 30.0,
              color: Colors.black54,
              
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
              color: selected ? Color.fromARGB(255, 34, 188, 208):Colors.black87,
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
            CardRewardItemStf(cardRewardModel:cardRewardModel),
        ],
      ),
    );
  }
}


class CardRewardItemStf extends StatefulWidget {
  const CardRewardItemStf({ 
    Key? key,
    required this.cardRewardModel, 
  }) : super(key: key);

  final CardRewardModel cardRewardModel;

  @override
  _CardRewardItemStfState createState() => _CardRewardItemStfState();
}

class _CardRewardItemStfState extends State<CardRewardItemStf> {

  late bool showDetail;

  @override
  initState(){
    super.initState();
    showDetail = false;
  }

  @override
  Widget build(BuildContext context) {

    String title = widget.cardRewardModel.getTitle();

    String cardRewardID = widget.cardRewardModel.getID();

    List<String> descs = widget.cardRewardModel.getDescs();
    
    String startDate = widget.cardRewardModel.getStartDate();
    String endDate = widget.cardRewardModel.getEndDate();

    double totalBonus = widget.cardRewardModel.getTotalBonus();

    int calculateType = widget.cardRewardModel.getCalculateType();

    int rewardType = widget.cardRewardModel.getRewardType();

    List<int> limitTypes = widget.cardRewardModel.getLimitTypes();


    String feedbackTypeName = widget.cardRewardModel.getFeedbackTypeName();

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
      alignment: Alignment.centerLeft,
      width:MediaQuery.of(context).size.width,
      child:SingleChildScrollView(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            CardRewardTitleWrapperStf(
              title:title, 
              rewardType: rewardType, 
              feedbackTypeName: feedbackTypeName,
              limitTypeNames: limitTypeNames,
              startDate: startDate,
              endDate: endDate,
              onTapShowMore:(){
                setState(() {
                  showDetail = !showDetail;  
                });
              }
            ),
            if(showDetail)
                CardRewardDetailWrapper(
                  cardRewardID: cardRewardID,
                  totalBonus: totalBonus,
                  calculateType: calculateType,
                  descs: descs,
                ),
            ],
          ),
        ),
      ),
    );
  }
}


class CardRewardDetailWrapper extends StatelessWidget {
  const CardRewardDetailWrapper({ Key? key, this.cardRewardID, this.totalBonus, this.calculateType, this.descs }) : super(key: key);

  final cardRewardID;
  final totalBonus;
  final calculateType;
  final descs;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left:20, right:20, bottom:20),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          CardRewardChannelBtnWrapper(
            cardRewardID:cardRewardID, 
            totalBonus: totalBonus, 
            calculateType:calculateType
          ),
          
          const SizedBox(height:5),
          CardRewardDescs(descs:descs),
        ]
      )
    );
  }
}


class CardRewardTitleWrapperStf extends StatefulWidget {
  const CardRewardTitleWrapperStf({ Key? key, required this.title, required this.rewardType, required this.feedbackTypeName, required this.limitTypeNames, required this.startDate, required this.endDate, required this.onTapShowMore }) : super(key: key);
  final String title;
  final int rewardType;
  final String feedbackTypeName;
  final List<String> limitTypeNames;
  final String startDate;
  final String endDate;

  final Function() onTapShowMore;


  @override
  _CardRewardTitleWrapperStfState createState() => _CardRewardTitleWrapperStfState();
}

class _CardRewardTitleWrapperStfState extends State<CardRewardTitleWrapperStf> {
  

  late bool arrowExpand; 
  @override
  void initState(){
    super.initState();
    arrowExpand = false;
  }
  
  @override
  Widget build(BuildContext context) {
    Color rewardTypeColor = RewardTypes.getRewardTypeColor(widget.rewardType);

    return TextButton(
      onPressed: (){
        widget.onTapShowMore();
        setState((){
          arrowExpand = !arrowExpand;
        });
      },
      child:
      Container(
        padding:const EdgeInsets.all(10),
        child:Row(
          children:[
            if(!arrowExpand)
              const Icon(
                Icons.arrow_right,
                color: Colors.black,
              ),
            if(arrowExpand) 
              const Icon(
                Icons.arrow_drop_down,
                color:Colors.black,
              ),

            const SizedBox(width:5),
            Container(
              padding:const EdgeInsets.only(top:5, bottom: 5, left:10, right:10),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(10.0),
                ),
                color: rewardTypeColor,
              ),
              
              child:Text(
                widget.feedbackTypeName,
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
              child:CardRewardTitle(title:widget.title),
            ),
            
            Expanded(
              flex:1,
              child:CardRewardDuration(startDate: widget.startDate, endDate: widget.endDate,),
            ),
          ]
        ),
      )
      
      
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
          fontSize: 15,
          letterSpacing: 0.0,
          color: Colors.black87,
        ),
      ),
    );
  }
}



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



class CardRewardDescs extends StatelessWidget {
  const CardRewardDescs({ Key? key, required this.descs, }) : super(key: key);

  final List<String> descs;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top:10),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          const Text(
            "詳細說明",
             style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 15,
              color: Colors.black87,
            ),
          ),
        
          for(String desc in descs)
            CardRewardDesc(desc:desc),
        ],
      ),
    );
  }
}


class CardRewardDesc extends StatelessWidget {
  const CardRewardDesc({ Key? key, required this.desc }) : super(key: key);

  final String desc;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(bottom:5, left:5),
      child:Text(desc)
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
      padding:const EdgeInsets.all(10),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 2,
            // spreadRadius: 1,
            offset: Offset(0, 3),
          ),
        ],
        color:Colors.white,
        // color:Colors.grey.withOpacity(0.1),
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          
          const CardRewardChannelBtnTitle(),

          CardRewardChannelBtnList(cardRewardID:cardRewardID, channelTypes:channelTypes),

          const SizedBox(height:10,),
          
          ChannelListStf(cardRewardID:cardRewardID),
          
          if(hasTaskType)
            const CardRewardTaskBtnTitle(),
          
          if(hasTaskType)
            CardRewardTaskList(cardRewardID: cardRewardID,),
          
          
          CardRewardReturnWrapper(cardRewardID: cardRewardID, totalBonus: totalBonus, calculateType:calculateType,),

          SizedBox(height:20),

        ],
      ),
    );
  }
}



class ChannelListStf extends StatefulWidget {
  const ChannelListStf({ Key? key, required this.cardRewardID, }) : super(key: key);
  
  final String cardRewardID;
  
  @override
  _ChannelListStfState createState() => _ChannelListStfState();
}

class _ChannelListStfState extends State<ChannelListStf> {

  int _selectedChannelType = 0;
  
  ScrollController scrollController = ScrollController();

  List<CardContentChannelModel> originChannelModels = [];

  List<CardContentChannelModel> channelModels = [];

  void changeKeyword(String keyWord){

    List<CardContentChannelModel> tempChannelItemList = [];

    if(keyWord.isNotEmpty) {
      final keywordRegxp = RegExp(r".*(" + keyWord+ ").*", caseSensitive:false);
      for(CardContentChannelModel c in originChannelModels) {
        if(keywordRegxp.hasMatch(c.name)){
          tempChannelItemList.add(c);
        }
      }
    } else {
      tempChannelItemList = originChannelModels;
    }

    setState((){
      channelModels = tempChannelItemList;
    });
  }

  @override
  Widget build(BuildContext context) {

    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);
    String selectedCardRewardID = cardRewardViewModel.getSelectedCardRewardID();
    int selectedChannelType = cardRewardViewModel.getSelectedChannelType();

    if(selectedChannelType == 2)return Container();
    if (widget.cardRewardID != selectedCardRewardID)return Container();
    
    if(originChannelModels.isEmpty || _selectedChannelType != selectedChannelType){
      originChannelModels = cardRewardViewModel.getCardModel().getCardRewardChannelsByChannelType(selectedCardRewardID, selectedChannelType);
      channelModels = originChannelModels;
    }
    
    double channelListWidth = channelModels.length * 140; 

    double windowWidth = MediaQuery.of(context).size.width < 800 ? MediaQuery.of(context).size.width:800;

    if( _selectedChannelType != 0 && _selectedChannelType != selectedChannelType) {
      scrollController.jumpTo(0);  
    }

    _selectedChannelType = selectedChannelType;

    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          ChannelItemtitle(
            selectedChannelType: _selectedChannelType, 
            changeKeyword: changeKeyword,

          ),
          
          SingleChildScrollView(
            controller: scrollController,
            scrollDirection:Axis.horizontal,
            child:Row(
              children:[
                for(CardContentChannelModel channelModel in channelModels)
                  Container(
                    padding:const EdgeInsets.only(right: 20),
                    child:TextButton(
                      onPressed: (){
                        cardRewardViewModel.toggleCardRewardChannel(selectedCardRewardID, selectedChannelType, channelModel.id);
                      },
                      child:Column(
                        children:[
                          Container(
                            width:50,
                            height:50,
                            child:Image(
                              image: AssetImage(
                                'images/channel/${selectedChannelType.toString()}/${channelModel.id}.png'
                              )
                            ),
                          ),
                          const SizedBox(height:5),
                          Container(
                            width:100,
                            height:40,
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  child:cardRewardViewModel.hasChosenCardRewardChannel(
                                        selectedCardRewardID, 
                                        selectedChannelType,
                                        channelModel.id)
                                        ?
                                  const Icon(
                                    size:20,
                                    color:Colors.red,
                                    Icons.favorite
                                  )
                                  :
                                const Icon(
                                    size:20,
                                    color:Colors.red,
                                    Icons.favorite_border_outlined
                                  )
                                ),
                                ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxWidth:70,
                                  ),
                                  child:FittedBox(
                                    child:Text(
                                      channelModel.name,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color:Color.fromARGB(255, 34, 188, 208),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ),
                        ]
                      ),
                    ),
                  )
              ]
            )
          ),
          if(windowWidth < channelListWidth)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                TextButton(
                  onPressed: (){
                    setState((){
                      if(scrollController.offset > 0) {
                        scrollController.animateTo(
                          scrollController.offset - 200,
                          curve: Curves.ease, 
                          duration: Duration(milliseconds:100),
                        );
                      }
                    });
                  },
                  child:const Icon(
                    size:50,
                    Icons.arrow_left,
                    color: Color.fromARGB(255, 34, 188, 208),
                  ),
                ),
                TextButton(
                  onPressed: (){
                    setState((){
                      if(scrollController.offset < channelListWidth) {
                        scrollController.animateTo(
                          scrollController.offset + 200,
                          curve: Curves.ease, 
                          duration: const Duration(milliseconds:100),
                        );
                      }
                    });
                  },
                  child:const Icon(
                    size:50,
                    Icons.arrow_right,
                    color: Color.fromARGB(255, 34, 188, 208),
                  ),
                )
              ],
            ),
        ]
      )
    );
  }
}



class ChannelItemtitle extends StatefulWidget {
  const ChannelItemtitle({ 
    Key? key, this.selectedChannelType, 
    required this.changeKeyword 
  }) : super(key: key);

  final selectedChannelType;
  
  final Function(String keyword) changeKeyword;

  @override
  _ChannelItemtitleState createState() => _ChannelItemtitleState();
}

class _ChannelItemtitleState extends State<ChannelItemtitle> {

  final TextEditingController _searchController = TextEditingController();
  
  int _selectedChannelType = 0;


  @override
  void initState(){
    super.initState();
    _selectedChannelType = widget.selectedChannelType;
    _searchController.addListener(_listenKeyword);
  }


  void _listenKeyword(){
    widget.changeKeyword(_searchController.text);
  }


  @override
  Widget build(BuildContext context) {

    if (_selectedChannelType != widget.selectedChannelType) {
      _searchController.text = "";
      _selectedChannelType = widget.selectedChannelType;
    }
    return Container(
      padding:const EdgeInsets.only(top:15, bottom:15),
      child:Row(
        children:[
          Container(
            padding:const EdgeInsets.only(bottom:10, left:20,),
            child:Text(
              Channels.getChannelTypeName(widget.selectedChannelType),
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                color:Color.fromARGB(255, 34, 188, 208),
              ),
            ),
          ), 
          Container(
            padding:const EdgeInsets.only(bottom:7, left:10,),
            child:Icon(
              Icons.search,
              color:Colors.black45,
            ),
          ),
          Container(
            padding:const EdgeInsets.only(bottom:5),
            width:100,
            child:TextField(
              controller:_searchController,
              decoration: InputDecoration(
                isDense: true,
                // contentPadding: EdgeInsets.zero,
              ),
            ),
          )

        ]
      )
    );
  }
}



class CardRewardChannelBtnTitle extends StatelessWidget {
  const CardRewardChannelBtnTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(bottom:10),
      child:Text(
        '選通路',
        style: const TextStyle(
          fontFamily: "Netflix",
          fontWeight: FontWeight.w300,
          fontSize: 15,
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
      ),
    );
  }
}



class CardRewardTaskList extends StatelessWidget {
  const CardRewardTaskList({ Key? key, required this.cardRewardID }) : super(key: key);

  final String cardRewardID;


  @override
  Widget build(BuildContext context) {
    
    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);

    List<Task> tasks = cardRewardViewModel.getCardModel().getCardRewardTasksByChannelType(cardRewardID, 2);

    return Container(
      child:Column(
        children:[
          for(Task task in tasks)
            CardRewardTaskStf(task:task)
        ]
      )
    );
  }
}


class CardRewardTaskStf extends StatefulWidget {
  const CardRewardTaskStf({ Key? key, required this.task, }) : super(key: key);

  final Task task;


  @override
  _CardRewardTaskStfState createState() => _CardRewardTaskStfState();
}

class _CardRewardTaskStfState extends State<CardRewardTaskStf> {

  bool expand = true;

  @override
  Widget build(BuildContext context) {
    CardRewardViewModel cardRewardViewModel = Provider.of<CardRewardViewModel>(context);

    String cardRewardID = cardRewardViewModel.getSelectedCardRewardID();

    bool hasChosen = cardRewardViewModel.hasChosenCardRewardTaskID(cardRewardID, widget.task.id!);

    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          Row(
            children:[
              Container(
                width:20,
                child:TextButton(
                  style:TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    alignment: Alignment.centerLeft
                  ),
                  onPressed: (){
                    setState(() {
                      expand = !expand;
                    });
                  }, 
                  child: expand ? 
                  const Icon(
                    color:Colors.black,
                    Icons.arrow_drop_down,
                  )
                  :const Icon(
                    color:Colors.black,
                    Icons.arrow_right
                  ),
                ),
              ),
              Expanded(
                flex:9,
                child:TextButton(
                  onPressed: (){
                    cardRewardViewModel.toggleChosenCardRewardTask(cardRewardID, widget.task.id!);
                  },
                  child:Row(
                    children:[
                      if(hasChosen) 
                        const Icon(
                            size:20,
                            color:Colors.red,
                            Icons.favorite
                          ),
                      
                      if(!hasChosen) 
                         const Icon(
                            size:20,
                            color:Colors.red,
                            Icons.favorite_border_rounded
                          ),
                      const SizedBox(width:5),
                      Expanded(
                        flex:20,
                        child:Text(
                          widget.task.name!,
                          style:const TextStyle(
                            fontSize:15,
                            fontWeight:FontWeight.w300,
                            color:Color.fromARGB(255, 34, 188, 208),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]
          ),
          const SizedBox(height:10),
          if(expand)
            for(String desc in widget.task.descs!)
              Container(
                padding:const EdgeInsets.only(left:55,bottom:10,),
                child:Text(
                  desc
                ),
              ),
        ]
      )
      
    );
  }
}



class CardRewardTaskBtnTitle extends StatelessWidget {
  const CardRewardTaskBtnTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top:10, bottom:10),
      child:Text(
        '選任務',
        style: const TextStyle(
          fontFamily: "Netflix",
          fontWeight: FontWeight.w300,
          fontSize: 15,
          letterSpacing: 0.0,
          color: Colors.black87,
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

    bool hasChosen = cardRewardViewModel.hasChosenCardRewardChannelType(cardRewardID, channelType);

    IconData icon = ChannelTypeModels.getChannelTypeIconModels()[channelType]!;

    return TextButton(
      onPressed: (){
        cardRewardViewModel.toggleSelectedCardRewardChannelType(cardRewardID, channelType);
      },
      child:Column(
        children:[
          if(hasChosen) 
            Icon(
              Icons.check_circle_outline_outlined,
              color:Color.fromARGB(255, 255, 126, 7),
              size: 35.0,
            ),
          if(!hasChosen)
            Icon(
              icon,
              color:Color.fromARGB(255, 34, 188, 208),
              size: 35.0,
            ),
          Text(
            channelTypeName,
            style: TextStyle(
              fontSize: 15,
              color: hasChosen ? Color.fromARGB(255, 255, 126, 7):Color.fromARGB(255, 34, 188, 208),
            ),
          ),
        ]
      ),
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


    return Container(
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          const CashItemStf(),
          const DateItem(),
          Container(
            padding:const EdgeInsets.only(top:20),
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                EvaluateRewardReturnBtn(cardRewardID:cardRewardID),
                const SizedBox(width:10),

                if (calculateType == 2)
                  RewardReturnPercentage(cardRewardID:cardRewardID, totalBonus: totalBonus,),
                
                const SizedBox(width:10),
                RewardReturnDesc(cardRewardID:cardRewardID),

              ]
            ),
          ),
          
          
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
            width:80,
            child:Text(
              '消費金額',
              style: TextStyle(
                fontSize: 15,
              ),
            )
          ),
          const SizedBox(width:15,),
          Container(
          width:120,
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
          SizedBox(
            width:80,
            child:const Text(
              '消費日期',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 15,
              ),
            )
          ),
          const SizedBox(width:15),
          Container(
            width:200,
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
              style: TextStyle(
                fontSize: 15,
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
      height:40,
      width:120,
      child:ElevatedButton(
        style:ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 34, 188, 208),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),),
          side: const BorderSide(width: 0.5, color: Color.fromARGB(255, 34, 188, 208),),
        ),
        onPressed: (){
          cardRewardEvaluationViewModel.evaluateSpecifiedCardReward(context, cardRewardID);
        },
        child:const Text(
        '試算回饋金',
        style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 15,
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
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          Text(
            '${backBonus}%',
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 15,
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
              fontSize: 15,
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

    return FittedBox(
      child:Text(
        actualBackDesc,
        style: const TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 15,
          letterSpacing: 0.0,
          color: Colors.black87,
        ),
      ),
    );
    
  }
}


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
              fontWeight: FontWeight.w300,
              fontSize: 15,
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
                fontSize: 15,
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

