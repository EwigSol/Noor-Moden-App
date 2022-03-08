import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noor_moden/helper/scroll_behaviour.dart';
import 'package:noor_moden/view/homescreen/home_screen.dart';
import 'package:noor_moden/view/login/login.dart';
import 'package:noor_moden/view/signup/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      theme: ThemeData(
          primaryColor: Color(0xffCBAE71),
          textTheme: TextTheme(
            headline1: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w800,
                color: Colors.grey.shade900),
            headline2: TextStyle(
                fontSize: 15, fontWeight: FontWeight.w700, color: Colors.black),
            headline3: TextStyle(
              fontSize: 16,
            ),
            headline4: TextStyle(
              fontSize: 15,
              color: Colors.grey.shade600,
            ),
          )),
      home: SignUpPage(),
      // home: HomeScreen(),
    );
  }
}
