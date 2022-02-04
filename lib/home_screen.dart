import 'package:auth_project/auth_screens/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'getx_reposs/auth_repo.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  auth_repo repo = Get.put(auth_repo());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: 200,
            child: Column(
              children: [
                Text("You are Login."),
                SizedBox(height: 20,),
                MaterialButton(
                  padding: EdgeInsets.all(10),
                  color: Colors.green,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  child: Text(
                    'LOG OUT',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  onPressed: () {
                    Get.offAll(SignIn_Screen());
                    // 	log out the current user upon pressing the logoun button

                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
