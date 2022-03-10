
import 'package:flutter/cupertino.dart';
import 'package:noor_moden/view/homescreen/home_screen.dart';
import 'package:noor_moden/view/product_details/product_details_screen.dart';

class Routers{

  static  Map<String, Widget Function(BuildContext)> routs={
    "/": (context) => HomeScreen(),
    "/detals": (context) => ProductDetailsWidget(),

  };
}