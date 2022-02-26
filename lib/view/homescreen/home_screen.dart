import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:noor_moden/constants.dart';
import 'package:noor_moden/helper/on_hover_affect.dart';
import 'package:noor_moden/view/tabs/big_size/digsize.dart';
import 'package:noor_moden/view/tabs/cooktail_dress/cooktail_dress.dart';
import 'package:noor_moden/view/tabs/eveningDress/EveningDress.dart';
import 'package:noor_moden/view/tabs/new_arrivals/new_arrivals.dart';
import 'package:noor_moden/view/tabs/sale/sals.dart';
import 'package:noor_moden/view/tabs/wedding/wedding_dresses.dart';
import 'package:noor_moden/widgets/commons/custome_drawer.dart';
import 'package:noor_moden/widgets/homewidgets/category_widget.dart';
import 'package:noor_moden/view/homescreen/subscreens/new_arrivals.dart';
import 'package:noor_moden/widgets/homewidgets/feature_widget.dart';

import '../../widgets/commons/contact_us.dart';
import '../../widgets/commons/top_menu.dart';
import '../../widgets/homewidgets/instagram_contact.dart';
import '../../widgets/homewidgets/slider.dart';
import 'subscreens/newest_arrivels.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  bool isCategHover = false;
  String? selectedValue;
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  late TabController _tabController;
  bool hideHome=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 7);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: CustomDrawer(),
      appBar: width > 800
          ? PreferredSize(child: Container(), preferredSize: Size(0, 0))
          : PreferredSize(
              child: TopMenuMobile(), preferredSize: Size(double.infinity, 70)),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric( vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              width > 800
                  ? Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      height: 45,
                      child: TopMenu())
                  : Offstage(),
              width > 800
                  ? InkWell(
                onTap: (){
                  setState(() {
                    hideHome=false;
                  });
                },
                    child: Image.asset(
                        "assets/logo.png",
                        width: 150,
                        height: 150,
                      ),
                  )
                  : Offstage(),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: width * 0.065,
                    top: 2,
                    bottom: 8.0,
                    right: width * 0.08),
                height: 40,
                width: double.infinity,
                child: width>800?
                DefaultTabController(
                  length: 7,
                  child: TabBar(
                    //  physics: NeverScrollableScrollPhysics(),
                    overlayColor: MaterialStateProperty.all(
                        Theme.of(context).primaryColor),
                    controller: _tabController,
                    indicatorWeight: 2,
                  onTap: (val){
                      setState(() {
                        hideHome=true;
                      });
                  },
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
                    tabs: width < 1000
                        ? []
                        : [
                            Tab(
                                child: Text(
                              "NEW ARRIVALS",
                              style: Theme.of(context).textTheme.headline2,
                            )),
                            Tab(
                                child: Text(
                              "EVENINGDRESSES",
                              style: Theme.of(context).textTheme.headline2,
                            )),
                            Tab(
                                child: Text(
                              "COCKTAILDRESSES",
                              style: Theme.of(context).textTheme.headline2,
                            )),
                            Tab(
                                child: Text(
                              "WEDDING",
                              style: Theme.of(context).textTheme.headline2,
                            )),
                            Tab(
                                child: Text(
                              "BIG SIZES",
                              style: Theme.of(context).textTheme.headline2,
                            )),
                            Tab(
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  focusColor: Colors.transparent,
                                  hint: Text("ACCESSORIES",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline2),
                                  items: items
                                      .map((item) => DropdownMenuItem<String>(
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
                                child: Text(
                              "Sale %",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(color: Colors.red),
                            )),
                          ],
                  ),
                ):Offstage(),
              ),
              hideHome?
              Container(
                // height: MediaQuery.of(context).size.height*0.8,
              height: width>800?1010:1250,
                child: TabBarView(

                    controller: _tabController,
                    children: [
                      Center(

                        child: NewArrivals(),
                      ),
                      Container(child: EveningDresses(),

                        ),
                      Container(child:CooktailDresses()),
                      Container(child: WeddingDresses()),
                      Container(child: BigSize()),
                       Container(child: Center(
                        child: Text(
                            "accessoris will disply here"
                        ),
                      ),),
                      Container(child: Sals()),

                    ]),
              )

        :Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: CustomSlider(),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    height: width > 1200
                        ? 350
                        : width > 800
                            ? 240
                            : 180,
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    alignment: Alignment.center,
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Images.length,
                      itemBuilder: (context, index) {
                        return OnHover(
                            val: -5,
                            isDrawer: false,
                            isProduct: false,
                            duraton: Duration(milliseconds: 300),
                            builder: (ishover) {
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 2.0),
                                // width: width>800?width * 0.3:width*0.325,
                                child: Card(
                                  elevation: 0,
                                  child: CustomeCard(
                                    title: titles[index],
                                    imagePath: Images[index],
                                    height: width > 1200
                                        ? 250
                                        : width > 800
                                            ? 190
                                            : 110,
                                  ),
                                ),
                              );
                            });
                      },
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisSpacing: 2.0,
                          mainAxisExtent:
                              width > 800 ? width * 0.29 : width * 0.3),
                    ),
                  ),
                  Container(
                      child: TypeProducts(title: "NEW ARRIVALS", type: "new",isShowBanner: true,itemCount: 4,)),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                      child: NewestArrivals(
                    type: "newest",
                    imageUrl: "dummy url",
                    title: "OUR NEWEST ARRIVALS",
                  )),
                  SizedBox(
                    height: 15.0,
                  ),
                  Container(
                      child: TypeProducts(
                          title: "TRENDING NOW", type: "trending",itemCount: 4,isShowBanner: true,)),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Divider(
                              height: 1.0,
                              color: Colors.grey.shade700,
                            )),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "#FEATURED ON NOOR MODEN",
                              style: Theme.of(context).textTheme.headline1,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                                child: Divider(
                              height: 1.0,
                              color: Colors.grey.shade700,
                            )),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          height: width > 1200
                              ? 350
                              : width > 800
                                  ? 230
                                  : 200,
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.03),
                          alignment: Alignment.center,
                          child: GridView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: Images.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 10.0),
                                width: width * 0.30,
                                child: Featured(
                                  title: titles[index],
                                  imagePath: Images[index],
                                  height: width > 1200
                                      ? 330
                                      : width > 800
                                          ? 210
                                          : 170,
                                ),
                              );
                            },
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 1,
                                    mainAxisExtent: width > 800
                                        ? width * 0.3
                                        : width * 0.29),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20.0,
              ),

              Container(height: 200, child: InstaContact()),

              Container(
                color: Colors.black87,
                // height: width>800?300:410,
                padding: EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 15.0,
                ),
                child: width > 1000
                    ? ContactUs(
                        customersurvices: customer_services,
                        information: information,
                        shopList: shops,
                      )
                    : ContactUsMobile(
                        customersurvices: customer_services,
                        information: information,
                        shopList: shops,
                      ),
              ),
              SizedBox(
                height: 40.0,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
