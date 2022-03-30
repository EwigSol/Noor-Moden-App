import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noor_moden/controllers/sub_menu_controller.dart';
import 'package:noor_moden/view/cart_screen/cart_screen.dart';
import 'package:noor_moden/view/login/login.dart';
import 'package:noor_moden/view/signup/signup.dart';

class TopMenu extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  TopMenu({Key? key, required this.scaffoldKey}) : super(key: key);
  var searchController = TextEditingController();
  var endDrawerController = Get.put(SubMenuController());
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.call,
                color: Colors.grey.shade700,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text("call")
            ],
          ),
          SizedBox(
            width: 8.0,
          ),
          Container(
            // height: 30,
            width: 1,
            height: 18,
            color: Colors.grey.shade600,
          ),
          SizedBox(
            width: 8.0,
          ),
          Row(
            children: [
              Icon(
                Icons.email,
                color: Colors.grey.shade700,
              ),
              SizedBox(
                width: 8.0,
              ),
              Text("E-Mail")
            ],
          ),
          Spacer(),
          Icon(
            Icons.search,
            color: Colors.grey.shade700,
          ),
          SizedBox(
            width: 5.0,
          ),
          Container(
            height: 30.0,
            width: 160.0,
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                hintText: "Serach",
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          InkWell(
            onTap: () {
              endDrawerController.changeEndDrawer(0);
              scaffoldKey.currentState!.openEndDrawer();
              // Get.to(LoginPage());
            },
            child: Icon(
              Icons.person,
              color: Colors.grey.shade700,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(
            Icons.favorite_border,
            color: Colors.grey.shade700,
          ),
          SizedBox(
            width: 10.0,
          ),
          InkWell(
            onTap: () {
              endDrawerController.changeEndDrawer(1);
              Get.to(CartScreen());
              // scaffoldKey.currentState!.openEndDrawer();
            },
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ),
    );
  }
}

class TopMenuMobile extends StatelessWidget {
  TopMenuMobile({Key? key}) : super(key: key);
  var searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.grey.shade800),
      elevation: 2.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search,
            color: Colors.grey.shade700,
          ),
          SizedBox(
            width: 10.0,
          ),
          Image.asset(
            "assets/logo.png",
            width: 50.0,
            height: 50.0,
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(
            Icons.person,
            color: Colors.grey.shade700,
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}
