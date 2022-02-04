import 'package:auth_project/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import 'package:google_sign_in/google_sign_in.dart';

import 'package:firebase_auth/firebase_auth.dart';
class auth_repo extends GetxController{

  final TextEditingController sign_in_emailController = TextEditingController();
  final TextEditingController  sign_in_passwordController = TextEditingController();
  final TextEditingController  sign_up_emailController = TextEditingController();
  final TextEditingController  sign_up_passwordController = TextEditingController();


  signin_user(context) async {
   if(sign_in_emailController.text.isEmpty){
     show_snackbar("Enter Email.", 1, context,
         Colors.yellow);
   }else if(sign_in_passwordController.text.isEmpty){
     show_snackbar("Enter Password", 1, context,
         Colors.yellow);
   }else{
     show_snackbar("please wait .....", 2, context, Colors.yellow);
     showLoaderDialog(context,"Please Wait .....");
     try {
       UserCredential userCredential = await FirebaseAuth.instance
           .signInWithEmailAndPassword(email: "${sign_in_emailController.text.trim().toString()}", password: "${sign_in_passwordController.text.trim().toString()}")
           .then((value) {

         hideDialog(context);

         show_snackbar("login succesfully", 2, context, Colors.green);

         return value;
         Get.offAll(Home_Screen());
       });
     } on FirebaseAuthException catch (e) {
       if (e.code == 'user-not-found') {

         hideDialog(context);
         print('No user found for that email.');
         show_snackbar("No user found or that email.", 2, context, Colors.red);
       } else if (e.code == 'wrong-password') {

         hideDialog(context);
         show_snackbar("Wrong password ...", 2, context, Colors.red);
         print("Wrong password ...");
       }else if(e.code == "network-request-failed"){

         hideDialog(context);
         show_snackbar("network request failed ...", 2, context, Colors.red);
         print("network request failed ...");
       }
     }
   }
  }


  signup_user( context) async {

    if(sign_up_emailController.text.isEmpty){
      show_snackbar("Enter Email.", 1, context,
          Colors.yellow);
    }else if(sign_up_passwordController.text.isEmpty){
      show_snackbar("Enter Password", 1, context,
          Colors.yellow);
    }else{
      show_snackbar("please wait ...", 2, context, Colors.yellow);
      showLoaderDialog(context,"Please Wait .....");
      try {
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: "${sign_up_emailController.text.trim().toString()}", password:  "${sign_up_passwordController.text.trim().toString()}")
            .timeout(Duration(seconds: 60), onTimeout: () {
          hideDialog(context);
          return TimeOut();
        }).then((value) {
          Get.offAll(Home_Screen());


          return value;
        });
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          hideDialog(context);
          show_snackbar("weak-password", 1, context, Colors.yellow);
          print("The password provided is too weak.");
        } else if (e.code == 'email-already-in-use') {

          hideDialog(context);
          show_snackbar("The account already exists for that email.", 1, context,
              Colors.yellow);
          print("The account already exists for that email.");
        } else if(e.code == "network-request-failed"){

          hideDialog(context);
          show_snackbar("network request failed ...", 2, context, Colors.red);
          print("network request failed ...");
        }
      }
    }
  }


   Future signInWithGoogle({required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    final GoogleSignIn googleSignIn = GoogleSignIn();

    final GoogleSignInAccount? googleSignInAccount =
    await googleSignIn.signIn();

    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );

      try {
        final UserCredential userCredential =
        await auth.signInWithCredential(credential);

        Get.offAll(Home_Screen());

      } on FirebaseAuthException catch (e) {
        if (e.code == 'account-exists-with-different-credential') {
          // handle the error here
        }
        else if (e.code == 'invalid-credential') {
          // handle the error here
        }
      } catch (e) {
        // handle the error here
      }
    }


  }

  signOut() async {
    final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

    final GoogleSignIn googleUser = await GoogleSignIn(scopes: <String>["email"]);

    await firebaseAuth.signOut();

    googleUser.signOut();
  }

  show_snackbar(txt, time, context, clr) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("$txt"),
        duration: Duration(seconds: time),
      ),
    );
  }

  TimeOut() {
    return;
  }

  showLoaderDialog(context,txt){
    AlertDialog alert=AlertDialog(
      content: new Row(
        children: [
          CircularProgressIndicator(),
          Container(margin: EdgeInsets.only(left: 20),child:Text(txt)),
          SizedBox(width: 20,),
        ],),
    );
    showDialog(
      barrierDismissible: false,
      context:context,
      builder:(BuildContext context){
        return alert;
      },
    );
  }

  hideDialog(context){
    Navigator.pop(context);
  }

  _Toast(text){
    Fluttertoast.showToast(
        msg: text,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}