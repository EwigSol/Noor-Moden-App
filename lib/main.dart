import 'package:auth_project/auth_screens/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';


void main()  {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      GetMaterialApp(
          supportedLocales: const [
            Locale('en', ''), // English, no country code
          ],
          theme: ThemeData(),
          darkTheme: ThemeData.light(),
          debugShowCheckedModeBanner: false,
          title: 'Smart Notice Board',
          home: FirebaseInit()
      );

  }
}

class FirebaseInit extends StatefulWidget {

  @override
  State<FirebaseInit> createState() => _FirebaseInitState();
}

class _FirebaseInitState extends State<FirebaseInit> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:FutureBuilder(
          future: _initialization,
          builder: (context, snapshot) {
            // Check for errors
            if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            if (snapshot.connectionState == ConnectionState.done) {
              return SignIn_Screen();
            }
            return CircularProgressIndicator();
          },
        )
    );
  }


}
