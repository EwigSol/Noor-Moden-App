import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noor_moden/constants.dart';
import 'package:noor_moden/controllers/sub_menu_controller.dart';
import 'package:noor_moden/view/login/login.dart';
import 'package:noor_moden/view/product_details/product_details_screen.dart';
import 'package:noor_moden/view/tabs/big_size/bigsize.dart';
import 'package:noor_moden/view/tabs/cooktail_dress/cooktail_dress.dart';
import 'package:noor_moden/view/tabs/eveningDress/EveningDress.dart';
import 'package:noor_moden/view/tabs/new_arrivals/new_arrivals.dart';
import 'package:noor_moden/view/tabs/sale/sals.dart';
import 'package:noor_moden/view/tabs/wedding/wedding_dresses.dart';
import 'package:noor_moden/widgets/commons/custome_drawer.dart';
import '../../widgets/commons/contact_us.dart';
import '../../widgets/commons/top_menu.dart';
import '../../widgets/homewidgets/instagram_contact.dart';
import '../homescreen/home_screen.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({Key? key}) : super(key: key);

  @override
  _ProductDetailsPageState createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage>
    with SingleTickerProviderStateMixin {
  var detailsPageController = Get.put(SubMenuController());
  bool isCategHover = false;
  var endDrawerController = Get.put(SubMenuController());
  String? selectedValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool showProductDetailPage = false;
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  late TabController _tabController;
  bool hideHome = false;
  @override
  void initState() {
    // TODO: implement initState
    setState(() {
      hideHome = false;
    });
    super.initState();

    _tabController = TabController(vsync: this, length: 7);
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      key: scaffoldKey,
      endDrawer: Obx(() {
        return endDrawerController.endDrawerId.value == 0
            ? Container(
                width: 310,
                height: MediaQuery.of(context).size.height,
                child: LoginPage())
            : Container(
                width: 260,
                height: 700,
                color: Colors.amber,
              );
      }),
      drawer: CustomDrawer(
        controller: _tabController,
        ontap: () {
          setState(() {
            hideHome = true;
          });
        },
      ),
      appBar: width > 800
          ? PreferredSize(child: Container(), preferredSize: Size(0, 0))
          : PreferredSize(
              child: TopMenuMobile(), preferredSize: Size(double.infinity, 70)),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              width > 800
                  ? Container(
                      margin: EdgeInsets.only(bottom: 20.0),
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      height: 45,
                      child: TopMenu(
                        scaffoldKey: scaffoldKey,
                      ))
                  : Offstage(),
              width > 800
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          detailsPageController.show();
                          hideHome = false;
                        });
                        Get.to(HomeScreen());
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
                child: width > 800
                    ? DefaultTabController(
                        length: 7,
                        child: TabBar(
                          //  physics: NeverScrollableScrollPhysics(),
                          overlayColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColor),
                          controller: _tabController,

                          indicatorWeight: 2,
                          onTap: (val) {
                            setState(() {
                              detailsPageController.hide();
                              hideHome = true;
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
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  )),
                                  Tab(
                                      child: Text(
                                    "EVENINGDRESSES",
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  )),
                                  Tab(
                                      child: Text(
                                    "COCKTAILDRESSES",
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  )),
                                  Tab(
                                      child: Text(
                                    "WEDDING",
                                    style:
                                        Theme.of(context).textTheme.headline2,
                                  )),
                                  Tab(
                                      child: Text(
                                    "BIG SIZES",
                                    style:
                                        Theme.of(context).textTheme.headline2,
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
                                      child: Text(
                                    "Sale %",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline2!
                                        .copyWith(color: Colors.red),
                                  )),
                                ],
                        ),
                      )
                    : Offstage(),
              ),
              Obx(() {
                return detailsPageController.hideHome.value
                    ? Container(
                        // height: MediaQuery.of(context).size.height*0.8,
                        height: width > 800 ? 1400 : 1300,
                        child:
                            TabBarView(controller: _tabController, children: [
                          NewArrivals(
                            controller: _tabController,
                          ),
                          EveningDresses(
                            controller: _tabController,
                          ),
                          Center(
                              child: CooktailDresses(
                            controller: _tabController,
                          )),
                          Container(
                              child: WeddingDresses(
                            controller: _tabController,
                          )),
                          Container(
                              child: BigSize(
                            controller: _tabController,
                          )),
                          Container(
                            child: Center(
                              child: Text("accessoris will disply here"),
                            ),
                          ),
                          Container(
                              child: Sals(
                            controller: _tabController,
                          )),
                        ]),
                      )
                    : ProductDetailsWidget();
              }),
              // hideHome
              //     ? Container(
              //         // height: MediaQuery.of(context).size.height*0.8,
              //         height: width > 800 ? 1010 : 1250,
              //         child: TabBarView(controller: _tabController, children: [
              //           Center(
              //             child: NewArrivals(),
              //           ),
              //           Container(
              //             child: EveningDresses(),
              //           ),
              //           Container(child: CooktailDresses()),
              //           Container(child: WeddingDresses()),
              //           Container(child: BigSize()),
              //           Container(
              //             child: Center(
              //               child: Text("accessoris will disply here"),
              //             ),
              //           ),
              //           Container(child: Sals()),
              //         ]),
              //       )
              //     : ProductDetailsWidget(),
              SizedBox(
                height: 20.0,
              ),
              Container(height: 200, child: InstaContact()),
              Container(
                color: Colors.black87,
                height: width > 800 ? 300 : 410,
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
