


import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:pickcard/common/model/channels/amusement/amusement.dart';
import 'package:pickcard/common/model/channels/appstore/appstore.dart';
import 'package:pickcard/common/model/channels/cinema/cinema.dart';
import 'package:pickcard/common/model/channels/conveniencestore/conveniencestore.dart';
import 'package:pickcard/common/model/channels/delivery/delivery.dart';
import 'package:pickcard/common/model/channels/ecommerce/ecommerce.dart';
import 'package:pickcard/common/model/channels/food/food.dart';
import 'package:pickcard/common/model/channels/hotel/hotel.dart';
import 'package:pickcard/common/model/channels/insurance/insurance.dart';
import 'package:pickcard/common/model/channels/mall/mall.dart';
import 'package:pickcard/common/model/channels/mobilepay/mobilepay.dart';
import 'package:pickcard/common/model/channels/onlinegame/onlinegame.dart';
import 'package:pickcard/common/model/channels/publicutility/publicutility.dart';
import 'package:pickcard/common/model/channels/sport/sport.dart';
import 'package:pickcard/common/model/channels/streaming/streaming.dart';
import 'package:pickcard/common/model/channels/supermarket/supermarket.dart';
import 'package:pickcard/common/model/channels/transportation/transportation.dart';
import 'package:pickcard/common/model/channels/travel/travel.dart';
import 'package:pickcard/common/model/evaluate/evaluate_resp.dart';
import 'package:pickcard/common/model/evaluate/param.dart';
import 'package:pickcard/common/repository/storage.dart';
import 'package:pickcard/page/pickcard/model/pickcard_viewmodel.dart';
import 'package:pickcard/shared/repository/creditcard/creditcard.dart';
import 'package:pickcard/shared/viewmodel/searchcard.viewmodel.dart';
import 'package:pickcard/shared/component/searchcard.component.dart';
import 'package:pickcard/shared/component/topbar.component.dart';
import 'package:provider/provider.dart';



RewardTypeNamesModel rewardTypeNamesModel = RewardTypeNamesModel();
SortTypeNamesModel sortTypeNamesModel = SortTypeNamesModel();


class PickcardPage extends StatelessWidget {
  const PickcardPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    return MultiProvider(
      providers: [
        Provider<MobilepayObserver>(create:(_)=>MobilepayObserver(), lazy:true),
        Provider<EcommerceObserver>(create:(_)=>EcommerceObserver()),
        Provider<SupermarketObserver>(create:(_)=>SupermarketObserver()),
        Provider<OnlinegameObserver>(create:(_)=>OnlinegameObserver()),
        Provider<StreamingObserver>(create:(_)=>StreamingObserver()),
        Provider<FoodObserver>(create:(_)=>FoodObserver()),
        Provider<TransportationObserver>(create:(_)=>TransportationObserver()),
        Provider<TravelObserver>(create:(_)=>TravelObserver()),
        Provider<DeliveryObserver>(create:(_)=>DeliveryObserver()),
        Provider<InsuranceObserver>(create:(_)=>InsuranceObserver()),
        Provider<MallObserver>(create:(_)=>MallObserver()),        
        Provider<SportObserver>(create:(_)=>SportObserver()),
        Provider<ConveniencestoreObserver>(create:(_)=>ConveniencestoreObserver()),
        Provider<AppstoreObserver>(create:(_)=>AppstoreObserver()),
        Provider<HotelObserver>(create:(_)=>HotelObserver()),
        Provider<AmusementObserver>(create:(_)=>AmusementObserver()),
        Provider<CinemaObserver>(create:(_)=>CinemaObserver()),
        Provider<PublicutilityObserver>(create:(_)=>PublicutilityObserver()),
        Provider<EvaluateRespObserver>(create:(_)=>EvaluateRespObserver()),

        ChangeNotifierProvider<PickcardViewModel>(create:(_)=>PickcardViewModel()),
        ChangeNotifierProvider<CashViewModel>(create:(_)=> CashViewModel()),
        ChangeNotifierProvider<RewardTypeViewModel>(create:(_)=> RewardTypeViewModel()),
        ChangeNotifierProvider<EffectiveTimeViewModel>(create:(_)=> EffectiveTimeViewModel()),
        ChangeNotifierProvider<SortTypeViewModel>(create:(_)=>SortTypeViewModel()),

        ChangeNotifierProvider<CreditCardViewModel>(create:(_)=>CreditCardViewModel(creditCardRepo: CreditCardRepo())),

    ],
      child:const InitChannelWrapper(),
    );
  }
}

class InitChannelWrapper extends StatelessWidget {
  const InitChannelWrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        TopBar(),
        SizedBox(height:5),
        Pickcard(),
      ]
    );
  }
}

class Pickcard extends StatelessWidget {
  const Pickcard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
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
        return Column(
          children:const [
            SizedBox(height:25,),
            ChannelBtnList(),
            SizedBox(height:10),
            Divider(),
            SizedBox(height:10),
            Caculator(),
            Divider(),
            SizedBox(height:20),
            CardListTitle(),
            SizedBox(height:20),
            CardList(),
          ],
        );
      }
    });
  }
}




class ChannelBtnList extends StatefulWidget {
  const ChannelBtnList({ Key? key }) : super(key: key);

  @override
  _ChannelBtnListState createState() => _ChannelBtnListState();
}

class _ChannelBtnListState extends State<ChannelBtnList> {

  bool showMore  = false;
  
  @override
  Widget build(BuildContext context) {
    if(showMore) {
      return ChannelBtnShowMoreList(onTapShowMore:(){
        setState(() {
          showMore = !showMore;
        });
      });
    } else {
      return ChannelBtnShowLessList(onTapShowMore:(){
        setState(() {
          showMore = !showMore;
        });
      });
    }
  }
}


class ChannelBtnShowLessList extends StatelessWidget {
  const ChannelBtnShowLessList({ Key? key, required this.onTapShowMore }) : super(key: key);

  final Function() onTapShowMore;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 10.0,
      children:[
        ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(3)),
        ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(4)),
        ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(5)),
        ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(6)),
        ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(7)),
        ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(8)),
        ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(9)),
        ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(10)),
        ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(11)),
        ChannelBtnShowTap(onTapShowMore:onTapShowMore),
      ],
    );
  }
}

class ChannelBtnShowTap extends StatelessWidget {
  const ChannelBtnShowTap({ Key? key, required this.onTapShowMore }) : super(key: key);
  final Function() onTapShowMore;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:80,
      height:70,
      alignment: Alignment.center,
      child:TextButton(
        onPressed: (){
          onTapShowMore();
        }, 
        child: Container(
          padding:const EdgeInsets.only(top:15),
          child:const Icon(
            Icons.more_horiz_outlined,
            color: Color.fromARGB(255, 34, 188, 208),
            size: 35.0,
          ),
        ),
      ),
    );
  }
}

class ChannelBtnEmpty extends StatelessWidget {
  const ChannelBtnEmpty({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width:50,
    );
  }
}

class ChannelBtnShowMoreList extends StatelessWidget {
  const ChannelBtnShowMoreList({ Key? key, required this.onTapShowMore }) : super(key: key);

  final Function() onTapShowMore;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Wrap(
          runSpacing: 10.0,
          children:[
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(3)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(4)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(5)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(6)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(7)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(8)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(9)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(10)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(11)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(12)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(13)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(14)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(15)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(16)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(17)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(18)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(19)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(20)),

          ],
        ), 
      ]
    );
  }
}


class ChannelBtn extends StatelessWidget {
  const ChannelBtn({ Key? key, required this.channelType, }) : super(key: key);
  
  final ChannelTypeModel channelType;
  
  @override
  Widget build(BuildContext context) {
    
    PickcardViewModel pickcardViewModel = Provider.of<PickcardViewModel>(context);

    int channelTypeID = channelType.channelTypeID;

    IconData icon = Icons.send_to_mobile_outlined;
 
    String channelName = ChannelTypeModels.getChannelTypeModel(channelTypeID).channelName;

    bool hasChosen = pickcardViewModel.hasChosenChannelBtn(context, channelTypeID);
    
    icon = pickcardViewModel.getIconChannelBtn(context, channelTypeID);

    return ConstrainedBox(
      
      constraints: BoxConstraints(
        maxWidth: 80,
      ),
      child:TextButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
        ),
        onPressed: (){

          pickcardViewModel.toggleChannelTypeID(channelTypeID);

          ChannelTypeModel channelTypeModel = ChannelTypeModels.getChannelTypeModel(channelTypeID);

          final _context = context;


          Future<List<ChannelItemStatus>?> future = showDialog<List<ChannelItemStatus>?>
            (context: context, builder: (BuildContext context) {
            
            return Observer(builder:(context){

                ObservableFuture<ObservableList<dynamic>>? future = pickcardViewModel.getChannelItemObserver(_context, channelTypeID);
                
                if (future == null || future.result == null) {
                  return Container();
                } 

                List<ChannelModel> channelModels = [];
                switch(future.status) {
                  case FutureStatus.pending:
                  case FutureStatus.rejected:
                    break;
                  case FutureStatus.fulfilled:
                    channelModels = pickcardViewModel.getChannelModelsByChannelTypeID(context, channelTypeID, future.result);
                }

              List<ChannelItemStatus> channelItemStatuses = pickcardViewModel.transferChannelItemStatus(context, channelTypeID, channelModels);

              return AlertDialog(
                title: Text(
                  channelTypeModel.channelName,
                  style:const TextStyle(
                  ),
                ),
                content: Container(
                  padding: const EdgeInsets.all(8.0),
                  child:ChannelItemListDialog(channelTypeModel:channelTypeModel, channelItemStatuses:channelItemStatuses),
                ),
              );
            });
          });

          if(future != null) {
            future.then((data){
              for(ChannelItemStatus channelItemStatus in data!){
                bool oldHasChosen = pickcardViewModel.hasSelectedChannelItemID(context, channelTypeID, channelItemStatus.id);
                if(channelItemStatus.hasChosen ^ oldHasChosen){
                  pickcardViewModel.toggleChannelItemID(context, channelTypeID, channelItemStatus.id);
                }
              }
            });
          }
        },
        child:Container(
          alignment: Alignment.center,
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Icon(
                icon,
                color: hasChosen ? Color.fromARGB(255, 255, 126, 7): Color.fromARGB(255, 34, 188, 208),
                size: 35.0,
              ),
              const SizedBox(height:10),
              Text(
                channelName,
                style: TextStyle(
                  fontSize: 15,
                  color: hasChosen ? Color.fromARGB(255, 255, 126, 7):Color.fromARGB(255, 34, 188, 208),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}


class ChannelItemSearchBar extends StatefulWidget {
  const ChannelItemSearchBar({ Key? key, required this.changeKeyword }) : super(key: key);
  
  final Function(String keyword) changeKeyword;

  @override
  _ChannelItemSearchBarState createState() => _ChannelItemSearchBarState();
}

class _ChannelItemSearchBarState extends State<ChannelItemSearchBar> {

  final TextEditingController _searchController = TextEditingController();

  @override
  void initState(){
    super.initState();
    _searchController.addListener(_listenKeyword);
  }

  void _listenKeyword(){
    widget.changeKeyword(_searchController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child:TextField(
        controller:_searchController,
        decoration: InputDecoration(
          hintText: 'Searching...',
          suffixIcon: IconButton(
            icon:const Icon(Icons.clear),
            onPressed: () => _searchController.clear(),
          ),
          prefixIcon: const IconButton(
            icon:Icon(Icons.search),
            onPressed: null,
          ),
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          )
        ),
      ),
    );
  }
}

class ChannelItemListDialog extends StatefulWidget {
  const ChannelItemListDialog({ Key? key, required this.channelTypeModel, required this.channelItemStatuses }) : super(key: key);

  final ChannelTypeModel channelTypeModel;  
  final List<ChannelItemStatus> channelItemStatuses;


  @override
  _ChannelItemListDialogState createState() => _ChannelItemListDialogState();
}

class _ChannelItemListDialogState extends State<ChannelItemListDialog> {

  late List<ChannelItemStatus> channelItemList;

  @override
  void initState() {
    super.initState();
    channelItemList = widget.channelItemStatuses;


  }
  void changeKeyword(String keyWord){

    List<ChannelItemStatus> tempChannelItemList = [];
    if(keyWord.isNotEmpty) {
      final keywordRegxp = RegExp(r".*(" + keyWord+ ").*", caseSensitive:false);
      for(ChannelItemStatus c in widget.channelItemStatuses) {
        if(keywordRegxp.hasMatch(c.name)){
          tempChannelItemList.add(c);
        }
      }
    } else {
      tempChannelItemList = widget.channelItemStatuses;
    }

    setState((){
      channelItemList = tempChannelItemList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children:[
          ChannelItemSearchBar(changeKeyword:changeKeyword),
          const SizedBox(height:20,),
          Container(
            height:MediaQuery.of(context).size.height - 350,
            child:SingleChildScrollView( 
            child:Column(
              children:[
              for(ChannelItemStatus channelItemStatus in channelItemList)
                Container(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child:TextButton(
                    onPressed: (){
                      setState((){
                        channelItemStatus.hasChosen = !channelItemStatus.hasChosen;
                      });
                    },
                    child:Container(
                      alignment:Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 1,
                            offset: Offset(0, 3),
                          ),
                        ],
                        color:Colors.white,
                        // color:Colors.grey.withOpacity(0.1),
                      ),
                      padding:const EdgeInsets.all(5.0),
                      child:Row(
                        children:[
                          Container(
                            width: 50,
                            child:Image(
                              image: AssetImage('images/channel/' 
                              + widget.channelTypeModel.channelTypeID.toString() 
                              + '/' 
                              + channelItemStatus.id
                              +'.png'),
                            ),
                          ),
                          SizedBox(width:15),
                          Expanded(
                            child:Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:[
                                Container(
                                  child:Text(
                                    channelItemStatus.name,
                                    style:const TextStyle(
                                      fontSize: 20,
                                      color:Colors.black
                                    ),
                                  )
                                ),
                                Container(
                                  child:channelItemStatus.hasChosen?
                                  const Icon(
                                    size:25,
                                    color:Colors.red,
                                    Icons.favorite
                                  )
                                  :
                                const Icon(
                                    size:25,
                                    color:Colors.red,
                                    Icons.favorite_border_outlined
                                  )
                                ),
                              ]
                            )
                          ),
                        ]
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height:40),
            TextButton(
              onPressed: (){
                Navigator.pop(context, widget.channelItemStatuses);
              },
              style:ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 34, 188, 208),
                shape: RoundedRectangleBorder( 
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child:Container(
                alignment: Alignment.center,
                width:400,
                height:40,
                child:Text(
                '送出',
                style:TextStyle(
                  fontSize: 20,
                  color:Colors.white
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class Caculator extends StatelessWidget {
  const Caculator({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:MediaQuery.of(context).size.width,
      child:Column(
        children:const [
          DateItem(),
          CashItemStf(),
          RewardItemStf(),
          SortItemStf(),
          EvaluateBtnItem(),
        ],
      ),
    );
  }
}

class SortItemStf extends StatefulWidget {
  const SortItemStf({ Key? key }) : super(key: key);

  @override
  _SortItemStfState createState() => _SortItemStfState();
}

class _SortItemStfState extends State<SortItemStf> {

    int _value = 2;

  @override
  Widget build(BuildContext context) {

    SortTypeViewModel sortTypeViewModel = Provider.of<SortTypeViewModel>(context, listen:false);

    return Container(
      child:Row(
        children: <Widget>[
          Container(
            height:40,
            width:60,
            alignment: Alignment.centerLeft,
            child:const Text('排序方式')
          ),

          Container(
            width:110,
            child:TextButton(
              onPressed: (){
                setState((){
                  _value = 2;
                  sortTypeViewModel.toggleSortType(2);
                });
              },
              child:Row(
                children:[
                  Radio(
                    value: 2,
                    groupValue: _value,
                    activeColor: Color.fromARGB(255, 34, 188, 208),
                    onChanged: (int? value){
                      setState(() {
                        _value = 2;
                        sortTypeViewModel.toggleSortType(2);  
                      });
                    },
                  ),
                  Text(
                    sortTypeNamesModel.getSortTypeName(2),
                    style:TextStyle(
                      color:Color.fromARGB(255, 34, 188, 208),
                    ),
                  ),
                ]
              ),
            ),
          ),
          Container(
            width:110,
            child:TextButton(
              onPressed: (){
                setState((){
                  _value = 3;
                  sortTypeViewModel.toggleSortType(3);
                });
              },
              child:Row(
                children:[
                  Radio(
                    value: 3,
                    groupValue: _value,
                    activeColor: Color.fromARGB(255, 34, 188, 208),
                    onChanged: (int? value){
                      setState(() {
                        _value = 3;
                        sortTypeViewModel.toggleSortType(3);  
                      });
                    },
                  ),
                  Text(
                    sortTypeNamesModel.getSortTypeName(3),
                    style:TextStyle(
                      color:Color.fromARGB(255, 34, 188, 208),
                    ),
                  ),
                ]
              ),
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
    return Row(
      children:[
        Container(
          width:60,
          child:const Text("消費金額"),
        ),
        SizedBox(width:15,),
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
      ]
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
        mainAxisAlignment: MainAxisAlignment.start,
        children:[
          Container(
            width:60,
            child:const Text(
              '消費日期',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 15,
                // color: Color.fromRGBO(245, 246, 255, 1),
              ),
            )//const Icon(Icons.calendar_today, size:25,),
          ),
          SizedBox(width:15),
          Container(
            width:180,
            child:DateTimeField(
              // textAlign:TextAlign.center,
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


class RewardItemStf extends StatefulWidget {
  const RewardItemStf({ Key? key }) : super(key: key);

  @override
  _RewardItemStfState createState() => _RewardItemStfState();
}

class _RewardItemStfState extends State<RewardItemStf> {

  
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    
    RewardTypeViewModel rewardTypeViewModel = Provider.of<RewardTypeViewModel>(context);

    return Container(
      child:Row(
        children: <Widget>[
          Container(
            height:40,
            width:60,
            alignment: Alignment.centerLeft,
            child:const Text('回饋方式')
          ),
          Expanded(
            child:Wrap(
              children:[
                Container(
                  width:110,
                  child:TextButton(
                    onPressed: (){
                      setState((){
                        _value = 0;
                        rewardTypeViewModel.toggleRewardType(0);
                      });
                    },
                    child:Row(
                      children:[
                        Radio(
                          value: 0,
                          groupValue: _value,
                          activeColor: Color.fromARGB(255, 34, 188, 208),
                          onChanged: (int? value){
                            setState((){
                              _value = 0;
                              rewardTypeViewModel.toggleRewardType(0);
                            });
                          },
                        ),
                        Text(
                          rewardTypeNamesModel.getRewardName(0),
                          style:TextStyle(
                            color:Color.fromARGB(255, 34, 188, 208),
                          )
                        ),
                      ]
                    ),
                  ),
                ),

                Container(
                  width:110,
                  child:TextButton(
                    onPressed: (){
                      setState((){
                        _value = 1;
                        rewardTypeViewModel.toggleRewardType(1);
                      });
                    },
                    child:Row(
                      children:[
                        Radio(
                          value: 1,
                          groupValue: _value,
                          activeColor: Color.fromARGB(255, 34, 188, 208),
                          onChanged: (int? value){
                            setState(() {
                              _value = 1;
                              rewardTypeViewModel.toggleRewardType(1);
                            });
                          },
                        ),
                        Text(
                          rewardTypeNamesModel.getRewardName(1),
                          style:TextStyle(
                            color:Color.fromARGB(255, 34, 188, 208),
                          )
                        ),
                      ]
                    ),
                  ),
                ),
                Container(
                  width:110,
                  child:TextButton(
                    onPressed: (){
                      setState((){
                        _value = 2;
                        rewardTypeViewModel.toggleRewardType(2);
                      });
                    },
                    child:Row(
                      children:[
                        Radio(
                          value: 2,
                          groupValue: _value,
                          activeColor: Color.fromARGB(255, 34, 188, 208),
                          onChanged: (int? value){
                            setState(() {
                              _value = 2;
                              rewardTypeViewModel.toggleRewardType(2);
                            });
                          },
                        ),
                        Text(
                          rewardTypeNamesModel.getRewardName(2),
                          style:TextStyle(
                            color:Color.fromARGB(255, 34, 188, 208),
                          )
                        ),
                      ]
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




class EvaluateBtnItem extends StatelessWidget {
  const EvaluateBtnItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    PickcardViewModel pickcardViewModel  = Provider.of<PickcardViewModel>(context);
  
    EvaluateRespObserver evaluateRespViewModel = Provider.of<EvaluateRespObserver>(context, listen:false);
    return Container(
      height:40,
      width:100,
      child:ElevatedButton(
        onPressed: (){
          
          EvaluateParams evaluateParams = pickcardViewModel.buildEvaluateParam(context);
          evaluateRespViewModel.evaluate(evaluateParams);

        },
        style:ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 34, 188, 208),
          shape: RoundedRectangleBorder( 
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child:const Text(
          '送出選卡',
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



class CardList extends StatelessWidget {
  const CardList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    EvaluateRespObserver evaluateRespViewModel = Provider.of<EvaluateRespObserver>(context);

    return Observer(builder:(context){
      
      final evaluateResp = evaluateRespViewModel.evaluateResp;

      if(evaluateResp == null || evaluateResp.result == null)return Container();
      
      EvaluateResp evaluateRespResult = evaluateResp.result;
      
      List<CardEventResp> cardEventResps =  evaluateRespResult.cardEventResps ?? [];

      if(cardEventResps.isEmpty) return Container();
      
      return Container(
        alignment: Alignment.topLeft,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            for(CardEventResp card in cardEventResps)
              CardItem(cardEventResp:card),
          ]
        ),
      );
    });
  }
}

class CardItem extends StatelessWidget {
  const CardItem({ Key? key, required this.cardEventResp, }) : super(key: key);

  final CardEventResp cardEventResp;

  @override
  Widget build(BuildContext context) {

    PickcardViewModel pickcardViewModel = Provider.of<PickcardViewModel>(context);

    final String imagePath = cardEventResp.imagePath ?? "";
    final String bankName = cardEventResp.bankName ?? "";
    final String cardName = cardEventResp.name ?? "";
    final String cardUpdatedDate = cardEventResp.updateDate ?? "";

    List<CardRewardEventResp> cardRewardEventResps = cardEventResp.cardRewardEventResps ?? [];

    if(cardRewardEventResps.isEmpty)return Container();

    CardRewardEventResp maxReturnEventResp = pickcardViewModel.getMaxBackBonusEventResp(cardRewardEventResps);
    
    List<String> limitTypeNames = pickcardViewModel.getLimitTypeNames(maxReturnEventResp);

    final String cardID = cardEventResp.id ?? "";

    return Column(
      children:[
        ElevatedButton(
          onPressed:(){
            CardIDRepository.save(cardID);
            LocalStorageService.setCardID(cardID);
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
            alignment: Alignment.center,
            child:ConstrainedBox(
              constraints: const BoxConstraints(
                maxHeight: double.infinity,
                minWidth: double.infinity,
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:[
                  
                  CardUpdatedDate(cardUpdatedDate:cardUpdatedDate),
                  
                  const SizedBox(height:20),
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                    minWidth: double.infinity,
                    ),
                    child:Container(
                      padding:const EdgeInsets.only(left:20),
                      alignment: Alignment.centerLeft,
                      child:Row(
                        
                        children:[
                          Expanded(
                            flex:2,
                            child:CardIcon(imagePath:imagePath, bankName:bankName,cardName: cardName, startDate:maxReturnEventResp.startDate?? "", endDate:maxReturnEventResp.endDate ?? ""),
                          ),
                          SizedBox(width:5.0),
                          Expanded(
                            flex:3,
                            child:Wrap(
                              children:[
                                RewardTypeName(cardRewardEventResp: maxReturnEventResp,limitTypeNames: limitTypeNames,),
                                RewardReturn(feedReturn:maxReturnEventResp.feedReturn!, rewardType:maxReturnEventResp.rewardType!),
                              ],
                            ),
                          ),
                          Expanded(
                            flex:5,
                            child: RewardList(title:maxReturnEventResp.title!,),
                          ),
                          
                          
                        ], 
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height:10),
      ],
    );
  }
}


class CardUpdatedDate extends StatelessWidget {
  const CardUpdatedDate({ Key? key, required this.cardUpdatedDate, }) : super(key: key);

  final String cardUpdatedDate;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(right:20),
      child:Text(
        '更新日期：' + cardUpdatedDate,
        style: const TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 12,
          letterSpacing: 0.0,
          color: Colors.black87,
        )
      )
    );
  }
}


class CardAvailDuration extends StatelessWidget {
  const CardAvailDuration({ Key? key, required this.startDate, required this.endDate,  }) : super(key: key);

  final String startDate;
  final String endDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top:5),
      child:Text(
        '$startDate - $endDate',
        style: const TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 12,
          letterSpacing: 0.0,
          color: Colors.black87,
        ),
      ),
    );
  }
}



class RewardTypeName extends StatelessWidget {
  const RewardTypeName({ Key? key, required this.cardRewardEventResp, required this.limitTypeNames,}) : super(key: key);

  final CardRewardEventResp cardRewardEventResp;
  final List<String> limitTypeNames;
  @override
  Widget build(BuildContext context) {

    PickcardViewModel pickcardViewModel = Provider.of<PickcardViewModel>(context);
    int rewardType = cardRewardEventResp.rewardType!;
    String rewardTypeName = "";

    switch (rewardType){
      case 1:
        rewardTypeName = cardRewardEventResp.feedbackBonus!.cashFeedbackBonus!.title!;

      break;

      case 2:
        rewardTypeName = cardRewardEventResp.feedbackBonus!.pointFeedbackBonus!.title!;
      break;

    }
    
    Color rewardTypeNameColor = pickcardViewModel.getRewardTypeNameColor(rewardType);

    return Container(
      alignment: Alignment.center,
      width:100,
      // padding:const EdgeInsets.only(top:20,),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Container(
            alignment: Alignment.center,
            width:100,
            height:30,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                 Radius.circular(10.0),
              ),
              color: rewardTypeNameColor,
            ),
            child:Text(
              rewardTypeName,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
                letterSpacing: 0.0,
                color: Colors.white,
              ),
            ),
          ),
          
          LimitTypeNameList(limitTypeNames: limitTypeNames,),
          
        ],
      ),
    );
  }
}


class LimitTypeNameList extends StatelessWidget {
  const LimitTypeNameList({ Key? key, required this.limitTypeNames }) : super(key: key);
  
  final List<String> limitTypeNames;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child:Wrap(
        children:[
          for(String limitTypeName in limitTypeNames)
            LimitTypeName(limitTypeName: limitTypeName,)
        ]
        
      )
    );
  }
}

class LimitTypeName extends StatelessWidget {
  const LimitTypeName({ Key? key, required this.limitTypeName, }) : super(key: key);

  final String limitTypeName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(top:5, bottom: 4, right:4,),
      child:Container(
        alignment: Alignment.center,
        width:46,
        height:20,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
              Radius.circular(10.0),
          ),
          color:Colors.red[400],
        ),
        child:Text(
          limitTypeName,
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 13,
            letterSpacing: 0.0,
            color: Colors.white,
          ),
        ),
      ),
      
      
    );
  }
}



class CardIcon extends StatelessWidget {
  const CardIcon({ 
    Key? key, 
    required this.imagePath, 
    required this.bankName,
    required this.cardName,
    required this.startDate,
    required this.endDate,
    
  }) : super(key: key);

  final String imagePath;
  final String bankName;
  final String cardName;
  final String startDate;
  final String endDate;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width:150,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Image(
            width:120,
            image: AssetImage('images/' + imagePath),
          ),
          Text(
            cardName,
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 12,
              letterSpacing: 0.0,
              color: Colors.black,
            ),
          ),
          Text(
            bankName,
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 12,
              letterSpacing: 0.0,
              color: Colors.black,
            ),
          ),
          CardAvailDuration(startDate:startDate, endDate: endDate,),
        ],
      ),
    );
  }
}

class RewardReturn extends StatelessWidget {
  const RewardReturn({ Key? key, required this.feedReturn, required this.rewardType, }) : super(key: key);

  final int rewardType;
  final FeedReturn feedReturn;

  @override
  Widget build(BuildContext context) {

    PickcardViewModel pickcardViewModel = Provider.of<PickcardViewModel>(context);

    // 回饋%數
    double returnBonus = pickcardViewModel.getReturnBonus(feedReturn, rewardType);
    
    // 回饋金額
    double actualBack =  pickcardViewModel.getActualBack(feedReturn, rewardType);

    return Container(
      alignment: Alignment.center,
      width:100,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          if (returnBonus < 100) // 大於100 基本上是直接折抵現金
            Text(
              returnBonus.toString() + '%回饋',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                letterSpacing: 0.0,
                color: Colors.black87,
              ),
            ),
          const SizedBox(height:5,),
          Text(
            '現省' + actualBack.toString() +'元',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 0.0,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}


class RewardList extends StatelessWidget {
  const RewardList({ 
    Key? key, 
    required this.title, 
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {

    return Container(
      alignment: Alignment.centerLeft,
      child:Column(
        children:[
          RewardDesc(desc:title),
        ],
      ),
    );
  }
}



class RewardDesc extends StatelessWidget {
  const RewardDesc({ Key? key, required this.desc }) : super(key: key);
  
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Text(
      desc,
      style: const TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 14,
        letterSpacing: 0.0,
        color: Colors.black87,
      ),
    );
  }
}




