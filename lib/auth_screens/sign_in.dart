import 'package:auth_project/auth_screens/signup_screen.dart';
import 'package:auth_project/getx_reposs/auth_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:firebase_auth/firebase_auth.dart';
class SignIn_Screen extends StatefulWidget {
  const SignIn_Screen({Key? key}) : super(key: key);

  @override
  _SignIn_ScreenState createState() => _SignIn_ScreenState();
}

class _SignIn_ScreenState extends State<SignIn_Screen> {

  final _formKey = GlobalKey<FormState>();

  bool _obscureText = false;
  bool isLoading = false;
  String errorTextPassword = "";
  String errorTextEmail = "";
  Icon ic = Icon(Icons.visibility);

 auth_repo repo = Get.put(auth_repo());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Container(
        //  margin: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                sizedBox(50.0, 0.0),
                Text("Sign in", style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600, fontFamily: 'DM Sans',),),
                sizedBox(50.0, 0.0),
                Container(
                  padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          InputFieldEmail("Your Email", context),
                          sizedBox(20.0, 0.0),
                          InputFieldPassword(
                              "Your Password", context, _obscureText),
                          sizedBox(20.0, 0.0),
                          showHidePasswordAndForgetPassBtn(_obscureText),
                          sizedBox(20.0, 0.0),
                          LoginBtnWidget(context),
                          sizedBox(20.0, 0.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            google_button(), facebook_button(), yahoo_button(),
                          ],),
                          sizedBox(20.0, 0.0),
                          Divider(color: Colors.grey, thickness: 0.5),
                          sizedBox(10.0, 0.0),
                          DontHaveAccountBtn(),
                          sizedBox(10.0, 0.0),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget InputFieldEmail(String? content, context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: TextFormField(
            controller: repo.sign_in_emailController,
            style: TextStyle(
              fontSize: 15.0,
            ),
            validator: (value) {
              const pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
              final regExp = RegExp(pattern);

              if (value!.trim().isEmpty) {
                return "Enter your email";
              } else if (!regExp.hasMatch(value.trim())) {
                return "Enter valid email";
              } else {
                return null;
              }
            },
            onChanged: (value) {
              const pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
              final regExp = RegExp(pattern);

              if (value.trim().isEmpty) {
                setState(() {
                  errorTextEmail = "Enter your email";
                });
              } else if (!regExp.hasMatch(value.trim())) {
                setState(() {
                  errorTextEmail = "Enter valid email";
                });
              } else {
                setState(() {
                  errorTextEmail = "";
                });
              }
            },

            decoration: InputDecoration(
              errorText: errorTextEmail == "" ? null : errorTextEmail,
              suffixIcon: Icon(
                Icons.attach_email,
              ),
              contentPadding: EdgeInsets.all(10.0),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              // focusedBorder: OutlineInputBorder(
              //   borderRadius: BorderRadius.all(Radius.circular(5.0)),
              //   borderSide: BorderSide(width: 1,color: Colors.blue),
              // ),
              hintText: "$content",
              //fillColor: Colors.blue[50],
            ),
          ),
        ),
      ],
    );
  }

  Widget LoginBtnWidget(context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              if (_formKey.currentState!.validate()) {

                repo.signin_user(
                    context,);
              }
            },
            child: Container(
                height: 45,
                padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                  color: Color.fromRGBO(38, 151, 255, 1),
                ),
                child:Center(
                  child: Text(
                    'Sign In',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontFamily: 'DM Sans',
                        fontSize: 17,
                        letterSpacing: 0,
                        fontWeight: FontWeight.normal,
                        height: 1.3),
                  ),
                ),),
          ),
        ),
      ],
    );
  }

  Widget InputFieldPassword(String? content, context, obText) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: TextFormField(
            controller: repo.sign_in_passwordController,
            obscureText: !obText,
            style: TextStyle(
              fontSize: 15.0,
            ),
            validator: (value) {
              if (value!.trim().isEmpty) {
                return "Enter your password";
              } else if (value.trim().length < 8) {
                return "Password too short";
              }
              // else if(!value.trim().contains(RegExp('[A-Z]'))){
              //   return "Password should contain at least one Uppercase ( Capital ) letter ";
              // }
              else if (!value.trim().contains(RegExp('[a-z]'))) {
                return "Password should contain at least one lowercase character ";
              } else if (!value.trim().contains(RegExp('[0-9]'))) {
                return "Password should contain at least one digit";
              } else if (!value
                  .trim()
                  .contains(RegExp('[!@#%^&*(),.?":{}|<>]'))) {
                return "Password should contain at least one special character";
              } else {
                return null;
              }
            },
            onChanged: (value) {
              if (value.trim().isEmpty) {
                setState(() {
                  errorTextPassword = "Enter your password";
                });
              } else if (value.trim().length < 8) {
                setState(() {
                  errorTextPassword = "Password too short";
                });
              }
              // else if(!value.trim().contains(RegExp('[A-Z]'))){
              //   return "Password should contain at least one Uppercase ( Capital ) letter ";
              // }
              else if (!value.trim().contains(RegExp('[a-z]'))) {
                setState(() {
                  errorTextPassword =
                  "Password should contain at least one lowercase character ";
                });
              } else if (!value.trim().contains(RegExp('[0-9]'))) {
                setState(() {
                  errorTextPassword =
                  "Password should contain at least one digit";
                });
              } else if (!value
                  .trim()
                  .contains(RegExp('[!@#%^&*(),.?":{}|<>]'))) {
                setState(() {
                  errorTextPassword =
                  "Password should contain at least one special character";
                });
              } else {
                setState(() {
                  errorTextPassword = "";
                });
              }
            },

            decoration: InputDecoration(
              errorText: errorTextPassword == "" ? null : errorTextPassword,
              contentPadding: EdgeInsets.all(10.0),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(5.0),
              ),
              suffixIcon: Icon(
                Icons.password,
              ),
              hintText: "$content",
              fillColor: Colors.blue[50],
            ),
          ),
        ),
      ],
    );
  }

  Widget showHidePasswordAndForgetPassBtn(obText) {
   return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: [
            Checkbox(
              activeColor: Color(0xFF2697FF),
              value: obText,
              onChanged: (bool? value) {
                setState(() {
                  _obscureText = value!;
                  obText = value;
                });
              },
            ),
            sizedBox(10.0, 0.0),
            Text(
              'Show Password ',
              style: TextStyle(fontSize: 13.0),
            ),
          ],
        ),
        //Text//Checkbox
      ], //<Widget>[]
    );
  }

  Widget DontHaveAccountBtn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have an account? ',
          textAlign: TextAlign.left,
          style: TextStyle(
              color: Color.fromRGBO(21, 20, 56, 0.4000000059604645),
              fontFamily: 'DM Sans',
              fontSize:  13 ,
              letterSpacing: 0,
              fontWeight: FontWeight.normal,
              height: 1.625),
        ),
        sizedBox(0.0, 10.0),
        InkWell(
            onTap: () {
              Get.to(Signup_Screen());
            },
            child: Text(
              'Sign Up',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromRGBO(38, 151, 255, 1),
                  fontFamily: 'DM Sans',
                  fontSize:  13 ,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1.625),
            )),
      ],
    );
  }


  Widget sizedBox(h, w) {
    return SizedBox(
      height: h,
      width: w,
    );
  }

  Widget google_button(){
    return ElevatedButton(
      onPressed: () async {
        repo.signInWithGoogle(context: context);
      },
      child: Image.asset(
        "assets/google.png",
        width: 30,
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: CircleBorder(),
        padding: EdgeInsets.all(15),
      ),
    );
  }

  Widget facebook_button(){
    return ElevatedButton(
      onPressed: () {},
      child: Image.asset(
        "assets/facebook.png",
        width: 30,
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: CircleBorder(),
        padding: EdgeInsets.all(15),
      ),
    );
  }

  Widget yahoo_button(){
    return ElevatedButton(
      onPressed: () {},
      child: Image.asset(
        "assets/yahoo.png",
        width: 30,
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        shape: CircleBorder(),
        padding: EdgeInsets.all(15),
      ),
    );
  }



}
