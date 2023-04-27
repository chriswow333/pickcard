


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
import 'package:provider/provider.dart';



RewardTypeNamesModel rewardTypeNamesModel = RewardTypeNamesModel();
SortTypeNamesModel sortTypeNamesModel = SortTypeNamesModel();


class PickcardPage extends StatelessWidget {
  const PickcardPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
 
    return MultiProvider(
      providers: [
        Provider<MobilepayObserver>(create:(_)=>MobilepayObserver()),
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

    ],
      child:const InitChannelWrapper(),
    );
  }
}

class InitChannelWrapper extends StatelessWidget {
  const InitChannelWrapper({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // init data
    PickcardViewModel pickcardViewModel = Provider.of<PickcardViewModel>(context, listen:false);
    pickcardViewModel.initPickcardViewModel(context);
    
    return const Pickcard();
  }
}

class Pickcard extends StatelessWidget {
  const Pickcard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
      children:const [
        
        TopBar(),

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
}



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
    return Container(
      child:const Text(
        '選卡趣',
        style:TextStyle(
          fontFamily: "NotoSansTC",
          fontSize: 20,
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
    return SizedBox(
      height:35,
      width:200,
      child:TextField(
        textAlign: TextAlign.start,
        textAlignVertical:TextAlignVertical.top,
        onTap:(){
          print(_searchController.text);
        },
        controller:_searchController,
        decoration: InputDecoration(
          // hintText: 'Searching...',
          prefixIcon:const Icon(Icons.search),
          border:OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          )
        ),
        style:const TextStyle(
          fontSize:20,
        ),
      ),
    );
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children:[
        Row(
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
        ),
        
      ]
    );
  }
}

class ChannelBtnShowTap extends StatelessWidget {
  const ChannelBtnShowTap({ Key? key, required this.onTapShowMore }) : super(key: key);
  final Function() onTapShowMore;

  @override
  Widget build(BuildContext context) {
    return Container(
      width:50,
      child:TextButton(
        onPressed: (){
          onTapShowMore();
        }, 
        child: const Icon(
          Icons.more_horiz_outlined,
          color: const Color(0xff2db3ff),
          size: 30.0,
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
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
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
        ), 
        SizedBox(height:20),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:[
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(12)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(13)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(14)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(15)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(16)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(17)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(18)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(19)),
            ChannelBtn(channelType:ChannelTypeModels.getChannelTypeModel(20)),
            ChannelBtnEmpty(),
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

    return Expanded(
      child:ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 80,
        ),
        child:TextButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
          ),
          onPressed: (){

            pickcardViewModel.toggleChannelTypeID(channelTypeID);

            ChannelTypeModel channelTypeModel = ChannelTypeModels.getChannelTypeModel(channelTypeID);

            List<ChannelModel> channelModels = pickcardViewModel.evaulateCardItem(context, channelTypeID);

            List<ChannelItemStatus> channelItemStatuses = pickcardViewModel.transferChannelItemStatus(context, channelTypeID, channelModels);

            Future<List<ChannelItemStatus>?> future = showDialog<List<ChannelItemStatus>?>(context: context, builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  channelTypeModel.channelName,
                  style:const TextStyle(
                    fontFamily: "NotoSansTC"
                  ),
                ),
                content: Container(
                  padding: const EdgeInsets.all(8.0),
                  child:ChannelItemListDialog(channelTypeModel:channelTypeModel, channelItemStatuses:channelItemStatuses),
                ),
              );
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
                  color: hasChosen ? Colors.greenAccent[700]!: const Color(0xff2db3ff),
                  size: 35.0,
                ),
                const SizedBox(height:10),
                Text(
                  channelName,
                  style: TextStyle(
                    fontFamily: "NotoSansTC",
                    fontSize: 15,
                    color: hasChosen ? Colors.greenAccent[700]!:const Color(0xff2db3ff),
                  ),
                ),
              ],
            ),
          ),
        )
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

 // This controller will store the value of the search bar
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
          prefixIcon: IconButton(
            icon:const Icon(Icons.search),
            onPressed: (){
              print(_searchController.text);
            },
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
          SizedBox(height:20,),
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
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      padding:const EdgeInsets.all(5.0),
                      child:Row(
                        children:[
                          Container(
                            width: 80,
                            child:Image(
                              image: AssetImage('images/channel/' 
                              + widget.channelTypeModel.channelTypeID.toString() 
                              + '/' 
                              + channelItemStatus.id
                              +'.png'),
                            ),
                          ),
                          SizedBox(width:15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              Container(
                                child:Text(
                                  channelItemStatus.name,
                                  style:TextStyle(
                                    fontFamily: "NotoSansTC",
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
              child:Container(
                alignment: Alignment.center,
                width:400,
                height:40,
                child:Text(
                '送出',
                style:TextStyle(
                  fontFamily: "NotoSansTC",
                  fontSize: 20,
                  color:Colors.black
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ChannelItemList extends StatelessWidget {
  const ChannelItemList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pickcardViewModel = Provider.of<PickcardViewModel>(context);
    int channelTypeID = pickcardViewModel.getSelectedChannelTypeID();
    return SizedBox(
      width:MediaQuery.of(context).size.width,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
          ChannelTitle(channelTypeID:channelTypeID,),
          const SizedBox(height:10,),
          ChannelItemObserver(channelTypeID: channelTypeID,),
        ],
      )
    );
  }
}

class ChannelTitle extends StatelessWidget {
  const ChannelTitle({ Key? key, required this.channelTypeID, }) : super(key: key);

  final int channelTypeID;

  @override
  Widget build(BuildContext context) {
    PickcardViewModel pickcardViewModel = Provider.of<PickcardViewModel>(context, listen: false);
    return Container(
      child:Row(
        // alignment: WrapAlignment.center,
        children:[
          Text('標籤'),
          SizedBox(width:10,),
          TextButton(
            style:TextButton.styleFrom(
              backgroundColor: Colors.greenAccent[700],
            ),
            onPressed:(){
              pickcardViewModel.toggleChannelAllItem(context, channelTypeID);
            },
            child:const Text(
              "全選",
              style: TextStyle(
                fontFamily: "Netflix",
                fontWeight: FontWeight.w100,
                fontSize: 12,
                color:Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class ChannelItemObserver extends StatelessWidget {
  const ChannelItemObserver({ Key? key, required this.channelTypeID }) : super(key: key);

  final int channelTypeID;

  @override
  Widget build(BuildContext context) {
    
    late ObservableFuture<ObservableList> future;

    switch(channelTypeID){
      case 3:
        final mobilepayViewModel = Provider.of<MobilepayObserver>(context);
        final mobilepays = mobilepayViewModel.mobilepays!;
        future = mobilepays;
        break;
      case 4:
        final ecommerceViewModel = Provider.of<EcommerceObserver>(context); 
        final ecommerces = ecommerceViewModel.ecommerces!;
        future = ecommerces;
        break;
      case 5:
        final supermarketObserver = Provider.of<SupermarketObserver>(context); 
        final supermarkets = supermarketObserver.supermarkets!;
        future = supermarkets;
        break;
      case 6:
        final onlinegameObserver = Provider.of<OnlinegameObserver>(context); 
        final onlinegames = onlinegameObserver.onlinegames!;
        future = onlinegames;
        break;
      case 7:
        final streamingObserver = Provider.of<StreamingObserver>(context); 
        final streamings = streamingObserver.streamings!;
        future = streamings;
        break;
      case 8:
        final foodObserver = Provider.of<FoodObserver>(context); 
        final foods = foodObserver.foods!;
        future = foods;
        break;
      case 9:
        final transportationObserver = Provider.of<TransportationObserver>(context); 
        final transportations = transportationObserver.transportations!;
        future = transportations;
        break;
      case 10:
        final travelObserver = Provider.of<TravelObserver>(context); 
        final travels = travelObserver.travels!;
        future = travels;
        break;
      case 11:
        final deliveryObserver = Provider.of<DeliveryObserver>(context); 
        final deliveries = deliveryObserver.deliveries!;
        future = deliveries;
        break;
      case 12:
        final insuranceObserver = Provider.of<InsuranceObserver>(context); 
        final insurances = insuranceObserver.insurances!;
        future = insurances;
        break;
      case 13:
        final mallObserver = Provider.of<MallObserver>(context); 
        final malls = mallObserver.malls!;
        future = malls;
        break;
      case 14:
        final sportObserver = Provider.of<SportObserver>(context); 
        final sports = sportObserver.sports!;
        future = sports;
        break;
      case 15:
        final conveniencestoreObserver = Provider.of<ConveniencestoreObserver>(context); 
        final conveniencestores = conveniencestoreObserver.conveniencestores!;
        future = conveniencestores;
        break;
      case 16:
        final appstoreObserver = Provider.of<AppstoreObserver>(context); 
        final appstores = appstoreObserver.appstores!;
        future = appstores;
        break;
      case 17:
        final hotelObserver = Provider.of<HotelObserver>(context); 
        final hotels = hotelObserver.hotels!;
        future = hotels;
        break;
      case 18:
        final amusementObserver = Provider.of<AmusementObserver>(context); 
        final amusements = amusementObserver.amusements!;
        future = amusements;
        break;
      case 19:
        final cinemaObserver = Provider.of<CinemaObserver>(context); 
        final cinemas = cinemaObserver.cinemas!;
        future = cinemas;
        break;
      case 20:
        final publicutilityObserver = Provider.of<PublicutilityObserver>(context); 
        final publicutilities = publicutilityObserver.publicutilities!;
        future = publicutilities;
        break;
    }
    
    return Container(
      child:Observer(builder:(context) {
        PickcardViewModel pickcardViewModel = Provider.of<PickcardViewModel>(context, listen:false);
        switch(future.status){
          case FutureStatus.pending:
            return const Center(
              child:CircularProgressIndicator(),
            );
          case FutureStatus.rejected:
            return const Center(
              child:Text('Rejected'),
            );
          case FutureStatus.fulfilled:
            List<ChannelModel> channelModels = pickcardViewModel.getChannelModelsByChannelTypeID(context, channelTypeID, future.result);
            
            return SingleChildScrollView(
              child:GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisSpacing: 0,
                mainAxisSpacing: 0,
                crossAxisCount: 3,
                children: <Widget>[
                  for(ChannelModel c in channelModels) 
                    ChannelItem(channelTypeID:channelTypeID, id:c.id, name:c.name,),

                ],
              ),
            );
        }
      }),
    );
  }
}


class ChannelItem extends StatelessWidget {
  const ChannelItem({ Key? key,required this.channelTypeID, required this.id, required this.name, }) : super(key: key);

  final int channelTypeID;
  final String id;
  final String name;

  @override
  Widget build(BuildContext context) {

    PickcardViewModel pickcardViewModel = Provider.of<PickcardViewModel>(context);

    bool selected = pickcardViewModel.hasSelectedChannelItemID(context, channelTypeID, id);
    
    return Container(
      child:TextButton(
        onPressed: (){
          pickcardViewModel.toggleChannelItemID(context, channelTypeID, id);
        },
        child:Container(
          alignment:Alignment.center,
          decoration: BoxDecoration(
            border: selected ? 
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
            name,
            style: const TextStyle(
              fontFamily: "Netflix",
              fontWeight: FontWeight.w100,
              fontSize: 20,
              color:Color.fromARGB(221, 0, 0, 0),
            ),
          ),
        ),
      ),
    );
  }
}

class Caculator extends StatelessWidget {
  const Caculator({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width:MediaQuery.of(context).size.width,
      child:Column(
        children:const [
          DateItem(),
          SizedBox(width:10),
          CashItem(),
          SizedBox(width:10),
          RewardItem(),
          SizedBox(width:10),
          SortItem(),
          SizedBox(width:20),
          EvaluateBtnItem(),
        ],
      ),
    );
  }
}


class SortItem extends StatelessWidget {
  const SortItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SortTypeViewModel sortTypeViewModel = Provider.of<SortTypeViewModel>(context);

    return Observer(builder:(context){

      int selectedSortType = sortTypeViewModel.getSortType();

      String selectedSortTypeName = sortTypeNamesModel.getSortTypeName(selectedSortType);

      // List of items in our dropdown menu
      List<String> sortTypeNames =  sortTypeNamesModel.getSortTypeNames();

      return Container(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height:40,
              width:80,
              alignment: Alignment.centerLeft,
              child:const Text('排序方式')
            ),
            const SizedBox(width:5,),
            Container(
              height:80,
              width:100,
              // alignment: Alignment.centerLeft,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  style:const TextStyle(
                    fontSize:14,
                    color:Colors.black,
                  ),
                  isExpanded: true,
                  // Initial Value
                  value: selectedSortTypeName,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),    
                    
                  // Array list of items
                  items: sortTypeNames.map((String item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    int newRewardType = sortTypeNamesModel.getSortType(newValue!);
                    sortTypeViewModel.toggleSortType(newRewardType);
                  },
                ),
              ),
            ),
          ],
        ),
      );
      
    });
  }
}


class CashItem extends StatelessWidget {
  const CashItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CashViewModel cashViewModel = Provider.of<CashViewModel>(context);
    return Row(
      children:[
        Container(
          child:const Text("消費金額"),
        ),
        const SizedBox(width:5,),
        SizedBox(
          // height:40,
          width:120,
          child:TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              // contentPadding:EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
              hintText: "",
            ),
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ], 
            initialValue:'1000',
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
            // width:30,
            // height:40,
            // alignment: Alignment.center,
            child:const Text(
              '日期',
              style: TextStyle(
                fontFamily: "Netflix",
                fontWeight: FontWeight.w300,
                fontSize: 15,
                // color: Color.fromRGBO(245, 246, 255, 1),
              ),
            )//const Icon(Icons.calendar_today, size:25,),
          ),
          const SizedBox(width:10,),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 300,
            ),
            // alignment: Alignment.center,
            // padding:const EdgeInsets.only(left: 20),
            // height:32,
            // width:160,
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



class RewardItem extends StatelessWidget {
  const RewardItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    RewardTypeViewModel rewardTypeViewModel = Provider.of<RewardTypeViewModel>(context);

    return Observer(builder:(context){

      int selectedRewardType = rewardTypeViewModel.getRewardType();

      String selectedRewardTypeName = rewardTypeNamesModel.getRewardName(selectedRewardType);

      // List of items in our dropdown menu
      List<String> rewardTypeNames =  rewardTypeNamesModel.getRewardNames();

      return Container(
        child: Row(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              width:80,
              height:40,
              // alignment: Alignment.center,
              child: Text(
                '回饋方式',
                style:TextStyle(
                  fontSize:15,
                )
              ),
            ),
            const SizedBox(width:5,),
            Container(
              height:80,
              width:100,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  style:const TextStyle(
                    color:Colors.black,
                    fontSize:14,
                  ),
                  isExpanded: true,
                  // Initial Value
                  value: selectedRewardTypeName,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),    
                    
                  // Array list of items
                  items: rewardTypeNames.map((String item) {
                    return DropdownMenuItem(
                      value: item,
                      child: Text(item),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    int newRewardType = rewardTypeNamesModel.getRewardType(newValue!);
                    rewardTypeViewModel.toggleRewardType(newRewardType);
                  },
                ),
              ),
            ),
          ],
        ),
      );
      
    });
    
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
          primary: const Color(0xff2db3ff),
          shape: RoundedRectangleBorder( 
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child:const Text(
          '送出選卡',
          style: TextStyle(
            fontFamily: "Netflix",
            fontWeight: FontWeight.w300,
            fontSize: 15,
            color: Color.fromRGBO(245, 246, 255, 1),
          ),
        ),
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
              fontFamily: "Netflix",
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

            Navigator.of(context).pushNamed(
              '/card',
            );
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
                      child:Wrap(
                        children:[
                          CardIcon(imagePath:imagePath, bankName:bankName,cardName: cardName, startDate:maxReturnEventResp.startDate?? "", endDate:maxReturnEventResp.endDate ?? ""),
                          RewardReturn(feedReturn:maxReturnEventResp.feedReturn!, rewardType:maxReturnEventResp.rewardType!),
                          RewardTypeName(cardRewardEventResp: maxReturnEventResp,limitTypeNames: limitTypeNames,),
                          RewardList(title:maxReturnEventResp.title!,),
                          
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
          fontFamily: "Netflix",
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
          fontFamily: "Netflix",
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
      alignment: Alignment.centerLeft,
      width:100,
      padding:const EdgeInsets.only(top:20),
      child:Column(
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
                fontFamily: "Netflix",
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
            fontFamily: "Netflix",
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
              fontFamily: "Netflix",
              fontWeight: FontWeight.w300,
              fontSize: 12,
              letterSpacing: 0.0,
              color: Colors.black,
            ),
          ),
          Text(
            bankName,
            style: const TextStyle(
              fontFamily: "Netflix",
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
      width:130,
      padding:const EdgeInsets.only(top:20, left:5, right:5,),
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text(
            returnBonus.toString() + '%回饋',
            style: const TextStyle(
              fontFamily: "Netflix",
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
              fontFamily: "Netflix",
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
      padding:const EdgeInsets.only(left:20.0, right:10.0, top:20),
      alignment: Alignment.centerLeft,
      width:250,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
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
        fontFamily: "Netflix",
        fontWeight: FontWeight.w300,
        fontSize: 14,
        letterSpacing: 0.0,
        color: Colors.black87,
      ),
    );
  }
}




