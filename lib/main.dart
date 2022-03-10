import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noor_moden/controllers/signup_controller.dart';
import 'package:noor_moden/helper/scroll_behaviour.dart';
import 'package:noor_moden/view/homescreen/home_screen.dart';
import 'package:noor_moden/view/login/login.dart';
import 'package:noor_moden/view/signup/signup.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
      apiKey: "AIzaSyAKaqqDweG4eHLk9fSEyqxiIdDp-7bD980",
      appId: "1:555903024095:web:297baaf67d1f2c96f2626a",
      messagingSenderId: "555903024095",
      projectId: "noor-moden-77c6d",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  late FirebaseAuth _auth;
  late User _user;
  bool isLoading = true;
  final signupController = Get.put(SignupController());

  void initState() {
    // super.initState();
    _auth = FirebaseAuth.instance;
    _user = _auth.currentUser!;
    isLoading = false;
  }

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
      // home: SignUpPage(),
      home: HomeScreen(),
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(name: '/loginPage', page: () => LoginPage()),
        GetPage(name: '/signupPage', page: () => SignUpPage()),
        // GetPage(name: "/fourth", page: () => Fourth()),
      ],
    );
  }
}
