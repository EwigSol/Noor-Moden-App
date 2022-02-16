import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:noor_moden/constants.dart';
import 'package:noor_moden/helper/on_hover_affect.dart';
import 'package:noor_moden/views/widgets/commons/sub_menu.dart';
import 'package:noor_moden/views/widgets/commons/top_menu.dart';
import 'package:noor_moden/views/widgets/home_screen/category_card.dart';
import 'package:noor_moden/views/widgets/home_screen/category_widget.dart';
import 'package:noor_moden/views/widgets/home_screen/slider.dart';
import 'package:noor_moden/views/widgets/home_screen/sub_screens/new_arrivals.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  bool isCategHover=false;
  String? selectedValue;
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 7);
  }
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: width>800?PreferredSize(child: Container(), preferredSize: Size(0,0)):
      PreferredSize(child:TopMenuMobile() , preferredSize:Size(double.infinity,40)),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                width>800?Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                    height: 45,
                    child
                    : TopMenu()):Offstage(),
                Image.asset(
                  "assets/logo.png",
                  width: 150,
                  height: 150,
                ),
                SizedBox(height: 20.0,),
                Container(
                  padding: EdgeInsets.only(left: width*0.065,top: 2,bottom: 8.0,right:width*0.08 ),
                  height: 40,
                  width: double.infinity,
                  child:  DefaultTabController(

                    length: 7,
                    child: TabBar(

                      //  physics: NeverScrollableScrollPhysics(),
                      overlayColor:MaterialStateProperty.all(Theme.of(context).primaryColor),
                      controller: _tabController,
                      indicatorWeight: 2,

                      indicatorColor: Colors.grey.shade900,
                      isScrollable: false,

                      labelColor: Colors.grey.shade800,
                      unselectedLabelColor: Colors.grey,
                      unselectedLabelStyle: TextStyle(
                        fontFamily: 'SourceSansPro-Regular',
                        fontSize: 14,
                      ),
                      labelStyle: TextStyle(
                        fontFamily: 'SourceSansPro-Bold',
                        fontSize: 14,
                      ),
                      tabs:  [

                        Tab(
                            child:Text("BIG SIZES",style:Theme.of(context).textTheme.headline2 ,)
                        ),
                        Tab(
                            child:Text("BIG SIZES",style:Theme.of(context).textTheme.headline2 ,)
                        ),
                        Tab(
                            child:Text("BIG SIZES",style:Theme.of(context).textTheme.headline2 ,)
                        ),
                        Tab(
                            child:Text("BIG SIZES",style:Theme.of(context).textTheme.headline2 ,)
                        ),
                        Tab(
                            child:Text("BIG SIZES",style:Theme.of(context).textTheme.headline2 ,)
                        ),
                        Tab(
                            child:DropdownButtonHideUnderline(
                              child: DropdownButton2(
                                focusColor: Colors.transparent,
                                hint: Text(
                                    "ACCESSORIES",
                                    style: Theme.of(context).textTheme.headline2
                                ),
                                items: items
                                    .map((item) =>
                                    DropdownMenuItem<String>(
                                      value: item,
                                      child: Text(
                                        item,
                                        style: const TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ))
                                    .toList(),
                                value: selectedValue,
                                onChanged: (value) {
                                  setState(() {
                                    selectedValue = value as String;
                                  });
                                },
                                buttonHeight: 40,
                                buttonWidth: 140,
                                itemHeight: 40,
                              ),
                            ),
                        ),
                        Tab(
                            child:Text("BIG SIZES",style:Theme.of(context).textTheme.headline2 ,)
                        ),

                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  child: CustomSlider(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0),
                  height: width>1200?300:width>800?220:140,
                  padding: EdgeInsets.symmetric(horizontal: width*0.1),
                  alignment: Alignment.center,
                  child:
                  GridView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Images.length,
                    itemBuilder: (context,index){
                      return OnHover(
                        val: -5,
                        duraton: Duration(milliseconds: 300),
                        builder: (ishover) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            width: width*0.3,
                            child: Card(
                              elevation:0,
                              child: CustomeCard(
                                title: titles[index],
                               imagePath: Images[index],
                                height: width>1200?250:width>800?190:100,
                              ),
                            ),
                          );
                        }
                      );

                    },
                    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:1,
                      mainAxisExtent: width>800?width*0.26:width*0.22
                    ),


                  ),
                ),

                Container(

                    child
                    : TypeProducts(title: "New Arrivals", type: "new"))
                // Container(
                //   height: MediaQuery.of(context).size.height*0.8,
                //   child: TabBarView(
                //
                //       controller: _tabController,
                //       children: [
                //         Container(child: Center(
                //           child: Text(
                //             "will disply here"
                //           ),
                //         ),),
                //         Container(child: Center(
                //           child: Text(
                //               "will disply here"
                //           ),
                //         ),),
                //         Container(child: Center(
                //           child: Text(
                //               "will disply here"
                //           ),
                //         ),),
                //         Container(child: Center(
                //           child: Text(
                //               "will disply here"
                //           ),
                //         ),),
                //         Container(child: Center(
                //           child: Text(
                //               "will disply here"
                //           ),
                //         ),),  Container(child: Center(
                //           child: Text(
                //               "will disply here"
                //           ),
                //         ),),
                //         Container(child: Center(
                //           child: Text(
                //               "will disply here"
                //           ),
                //         ),),
                //
                //       ]),
                // ),


              ],
            ),
          ),
        ),

    );
  }
}
