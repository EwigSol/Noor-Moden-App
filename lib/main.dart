
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noor_moden/view/homescreen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

          primaryColor: Color(0xffCBAE71),
          textTheme:  TextTheme(
            headline1: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w800,
              color: Colors.grey.shade900
            ),
            headline2: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: Colors.black
            ),
            headline3: TextStyle(
              fontSize: 16,

            ),
            headline4: TextStyle(
              fontSize: 15,
              color: Colors.grey.shade600,
            ),

          )
      ),
      home:HomeScreen(),
    );
  }
}
