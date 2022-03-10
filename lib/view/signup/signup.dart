import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:noor_moden/controllers/signup_controller.dart';
import 'package:noor_moden/widgets/commons/contact_us.dart';
import 'package:noor_moden/widgets/commons/customButton.dart';
import 'package:noor_moden/widgets/commons/custom_filed.dart';
import 'package:noor_moden/widgets/commons/custom_radio_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

late File imageFile;
bool isPhoneNumber = false;

class _SignUpPageState extends State<SignUpPage> {
  String? _groupValue;
  String? _singleValue;
  String? _secondValue;
  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => _groupValue = value!);
  }

  ValueChanged<String?> _valuegetHandler() {
    return (value) => setState(() => _singleValue = value!);
  }

  ValueChanged<String?> _valueget1Handler() {
    return (value) => setState(() => _secondValue = value!);
  }

  TextEditingController emailcontroler = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();
  TextEditingController phoneControler = TextEditingController();
  TextEditingController otpControler = TextEditingController();

  SignupController getController = Get.find();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        // margin: EdgeInsets.all(20),
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Divider(
                  height: 1,
                ),
              ),
              // MediaQuery.of(context).size.width > 600 ||
              MediaQuery.of(context).size.width > 800
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // First Column
                        Container(
                          width: MediaQuery.of(context).size.width > 600 ||
                                  MediaQuery.of(context).size.width > 800
                              ? (width - 40) / 3
                              : width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 20, bottom: 20),
                                child: Text(
                                  "Sign up for a free account at Noor Moden.",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // First Email Text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Your Email Address *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // First Email text form field to get email from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              // Confirm Email Text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Confirm Email *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // Confirm Email text form field to get email from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              //  First Password text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, bottom: 5.0),
                                child: Text(
                                  "Your Password *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // First Password text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              //  Confirm Password text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Confirm Password *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // Confirm Password text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Second Column (center column)
                        Container(
                          width: MediaQuery.of(context).size.width > 600 ||
                                  MediaQuery.of(context).size.width > 800
                              ? (width - 40) / 3
                              : width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //  Title text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Title (Mr./Mrs) *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // Radio Button 1
                              CustomRadioButton(
                                  value: '1',
                                  groupValue: _groupValue,
                                  buttonshape: true,
                                  text: "Mr*",
                                  onChanged: _valueChangedHandler()),
                              // Radio Button 2
                              CustomRadioButton(
                                  value: '2',
                                  buttonshape: true,
                                  groupValue: _groupValue,
                                  text: "Mrs*",
                                  onChanged: _valueChangedHandler()),
                              //  First Name text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "First Name *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // First Name text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              //  Last Name text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Last Name *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // Last Name text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              //  Company Owner text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Company Owner *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // Company Owner text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              //  Company Name text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Company Name *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // Company Name text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //  Company Address text to show
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, bottom: 5.0),
                                        child: Text(
                                          "Company Address *",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      // Company Address text form field to get password from user
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: 5, right: 10),
                                        width: width / 5,
                                        child: CustomField(
                                          controller: emailController,
                                          hint: "",
                                          padding: EdgeInsets.all(12.0),
                                          icon: IconData(0x41,
                                              fontFamily: 'Roboto',
                                              fontPackage: "",
                                              matchTextDirection: false),
                                          maxLins: 1,
                                          validate: validation,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //  House Number text to show
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, bottom: 5.0),
                                        child: Text(
                                          "House Number *",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      // House Number text form field to get password from user
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: 5, right: 10),
                                        width: width / 11,
                                        child: CustomField(
                                          controller: emailController,
                                          hint: "",
                                          padding: EdgeInsets.all(12.0),
                                          icon: IconData(0x41,
                                              fontFamily: 'Roboto',
                                              fontPackage: "",
                                              matchTextDirection: false),
                                          maxLins: 1,
                                          validate: validation,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              // postcode and city Row
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //  Postcode text to show
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, bottom: 5.0),
                                        child: Text(
                                          "Postcode *",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      // Postcode text form field to get password from user
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: 5, right: 10),
                                        width: width / 11,
                                        child: CustomField(
                                          controller: emailController,
                                          hint: "",
                                          padding: EdgeInsets.all(12.0),
                                          icon: IconData(0x41,
                                              fontFamily: 'Roboto',
                                              fontPackage: "",
                                              matchTextDirection: false),
                                          maxLins: 1,
                                          validate: validation,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //  city text to show
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, bottom: 5.0),
                                        child: Text(
                                          "City *",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      // City text form field to get password from user
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: 5, right: 10),
                                        width: width / 5,
                                        child: CustomField(
                                          controller: emailController,
                                          hint: "",
                                          padding: EdgeInsets.all(12.0),
                                          icon: IconData(0x41,
                                              fontFamily: 'Roboto',
                                              fontPackage: "",
                                              matchTextDirection: false),
                                          maxLins: 1,
                                          validate: validation,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              //  Country Name text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Country *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // Country Name text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              //  Telephone Number text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Telephone Number *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // Telephone Number text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: phoneControler,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Third Column
                        Container(
                          width: MediaQuery.of(context).size.width > 600 ||
                                  MediaQuery.of(context).size.width > 800
                              ? (width - 40) / 3
                              : width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //  VAT ID text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "VAT ID *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // VAT ID text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(
                                    top: 5, right: 10, bottom: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              // select image form gallery
                              Container(
                                padding: EdgeInsets.only(
                                    top: 5,
                                    left: 10,
                                    bottom: 5,
                                    right: width / 5),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black54, width: 1),
                                  ),
                                  child: CustomButton(
                                    onpress: onpress,
                                    text: "Choose File",
                                    textColor: Colors.black,
                                    buttonColor:
                                        Color.fromARGB(211, 211, 206, 206),
                                  ),
                                ),
                              ),
                              // select a single button (1)
                              CustomRadioButton(
                                  value: "1",
                                  groupValue: _singleValue,
                                  buttonshape: false,
                                  text:
                                      "I want to register to the Newsletter of Noor Moden",
                                  onChanged: _valuegetHandler()),
                              // select a single button (2)
                              CustomRadioButton(
                                  value: "1",
                                  groupValue: _secondValue,
                                  buttonshape: false,
                                  text:
                                      "I agree that Noor Moden is able to store and use my personal information as well as I have read the privacy policy describing its use. I can revoke my consent to Noor Moden at any time by sending an e-mail or calling Noor Moden.",
                                  onChanged: _valueget1Handler()),

                              // OTP text field to write otp
                              isPhoneNumber == false
                                  ? Container()
                                  : Container(
                                      padding: EdgeInsets.only(
                                          top: 5, right: 10, bottom: 10),
                                      width: width,
                                      child: CustomField(
                                        controller: otpControler,
                                        hint: " Your OTP",
                                        padding: EdgeInsets.all(12.0),
                                        icon: IconData(0x41,
                                            fontFamily: 'Roboto',
                                            fontPackage: "",
                                            matchTextDirection: false),
                                        maxLins: 1,
                                        validate: validation,
                                      ),
                                    ),
                              // verify otp button
                              isPhoneNumber == false
                                  ? Container()
                                  : Container(
                                      padding:
                                          EdgeInsets.only(top: 20, bottom: 20),
                                      width: width - 40,
                                      child: CustomButton(
                                        onpress: onPressVerifyButton,
                                        text: "Verify OTP",
                                        textColor: Colors.white,
                                        buttonColor: Colors.black,
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // First Column
                        Container(
                          width: MediaQuery.of(context).size.width > 600 ||
                                  MediaQuery.of(context).size.width > 800
                              ? (width - 40) / 3
                              : width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 20, bottom: 20),
                                child: Text(
                                  "Sign up for a free account at Noor Moden.",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // First Email Text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Your Email Address *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // First Email text form field to get email from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              // Confirm Email Text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Confirm Email *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // Confirm Email text form field to get email from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              //  First Password text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, bottom: 5.0),
                                child: Text(
                                  "Your Password *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // First Password text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              //  Confirm Password text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Confirm Password *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // Confirm Password text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Second Column (center column)
                        Container(
                          width: MediaQuery.of(context).size.width > 800
                              ? (width - 40) / 3
                              : width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //  Title text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Title (Mr./Mrs) *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // Radio Button 1
                              CustomRadioButton(
                                  value: '1',
                                  groupValue: _groupValue,
                                  buttonshape: true,
                                  text: "Mr*",
                                  onChanged: _valueChangedHandler()),
                              // Radio Button 2
                              CustomRadioButton(
                                  value: '2',
                                  groupValue: _groupValue,
                                  buttonshape: true,
                                  text: "Mrs*",
                                  onChanged: _valueChangedHandler()),

                              //  First Name text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "First Name *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // First Name text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              //  Last Name text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Last Name *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // Last Name text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              //  Company Owner text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Company Owner *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // Company Owner text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              //  Company Name text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Company Name *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // Company Name text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              Row(
                                // width: (width-40)/ ;
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //  Company Address text to show
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, bottom: 5.0),
                                        child: Text(
                                          "Company Address *",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      // Company Address text form field to get password from user
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: 5, right: 10),
                                        width: width / 1.7,
                                        child: CustomField(
                                          controller: emailController,
                                          hint: "",
                                          padding: EdgeInsets.all(12.0),
                                          icon: IconData(0x41,
                                              fontFamily: 'Roboto',
                                              fontPackage: "",
                                              matchTextDirection: false),
                                          maxLins: 1,
                                          validate: validation,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //  House Number text to show
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, bottom: 5.0, right: 5.0),
                                        child: Text(
                                          "House Number *",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      // House Number text form field to get password from user
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: 5, right: 10),
                                        width: width / 4,
                                        child: CustomField(
                                          controller: emailController,
                                          hint: "",
                                          padding: EdgeInsets.all(12.0),
                                          icon: IconData(0x41,
                                              fontFamily: 'Roboto',
                                              fontPackage: "",
                                              matchTextDirection: false),
                                          maxLins: 1,
                                          validate: validation,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              // postcode and city Row
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //  Postcode text to show
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, bottom: 5.0),
                                        child: Text(
                                          "Postcode *",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      // Postcode text form field to get password from user
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: 5, right: 10),
                                        width: width / 4,
                                        child: CustomField(
                                          controller: emailController,
                                          hint: "",
                                          padding: EdgeInsets.all(12.0),
                                          icon: IconData(0x41,
                                              fontFamily: 'Roboto',
                                              fontPackage: "",
                                              matchTextDirection: false),
                                          maxLins: 1,
                                          validate: validation,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      //  city text to show
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10.0, bottom: 5.0),
                                        child: Text(
                                          "City *",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                                      ),
                                      // City text form field to get password from user
                                      Container(
                                        padding:
                                            EdgeInsets.only(top: 5, right: 10),
                                        width: width / 1.7,
                                        child: CustomField(
                                          controller: emailController,
                                          hint: "",
                                          padding: EdgeInsets.all(12.0),
                                          icon: IconData(0x41,
                                              fontFamily: 'Roboto',
                                              fontPackage: "",
                                              matchTextDirection: false),
                                          maxLins: 1,
                                          validate: validation,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              //  Country Name text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Country *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // Country Name text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              //  Telephone Number text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "Telephone Number *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // Telephone Number text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(top: 5, right: 10),
                                width: width,
                                child: CustomField(
                                  controller: phoneControler,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Third Column
                        Container(
                          width: MediaQuery.of(context).size.width > 600 ||
                                  MediaQuery.of(context).size.width > 800
                              ? (width - 40) / 3
                              : width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //  VAT ID text to show
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 5.0),
                                child: Text(
                                  "VAT ID *",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              // VAT ID text form field to get password from user
                              Container(
                                padding: EdgeInsets.only(
                                    top: 5, right: 10, bottom: 10),
                                width: width,
                                child: CustomField(
                                  controller: emailController,
                                  hint: "",
                                  padding: EdgeInsets.all(12.0),
                                  icon: IconData(0x41,
                                      fontFamily: 'Roboto',
                                      fontPackage: "",
                                      matchTextDirection: false),
                                  maxLins: 1,
                                  validate: validation,
                                ),
                              ),
                              // pick image
                              Container(
                                padding: EdgeInsets.only(
                                    top: 5,
                                    left: 10,
                                    bottom: 5,
                                    right: width / 5),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.black, width: 1),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black54, width: 1),
                                  ),
                                  child: CustomButton(
                                    onpress: onpress,
                                    text: "Choose File",
                                    textColor: Colors.black,
                                    buttonColor:
                                        Color.fromARGB(211, 211, 206, 206),
                                  ),
                                ),
                              ),
                              // select a single button (1)
                              CustomRadioButton(
                                  value: "1",
                                  groupValue: _singleValue,
                                  buttonshape: false,
                                  text: "Mrs*",
                                  onChanged: _valuegetHandler()),
                              // select a single button (2)
                              CustomRadioButton(
                                  value: "1",
                                  groupValue: _secondValue,
                                  buttonshape: false,
                                  text: "Mrs*",
                                  onChanged: _valueget1Handler()),
                              // OTP text field to write otp
                              isPhoneNumber == false
                                  ? Container()
                                  : Container(
                                      padding: EdgeInsets.only(
                                          top: 5, right: 10, bottom: 10),
                                      width: width,
                                      child: CustomField(
                                        controller: otpControler,
                                        hint: " Your OTP",
                                        padding: EdgeInsets.all(12.0),
                                        icon: IconData(0x41,
                                            fontFamily: 'Roboto',
                                            fontPackage: "",
                                            matchTextDirection: false),
                                        maxLins: 1,
                                        validate: validation,
                                      ),
                                    ),
                              // verify otp button
                              isPhoneNumber == false
                                  ? Container()
                                  : Container(
                                      padding:
                                          EdgeInsets.only(top: 20, bottom: 20),
                                      width: width - 40,
                                      child: CustomButton(
                                        onpress: onPressVerifyButton,
                                        text: "Verify OTP",
                                        textColor: Colors.white,
                                        buttonColor: Colors.black,
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ],
                    ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    width: width - 40,
                    child: CustomButton(
                      onpress: onPressButton,
                      text: "CREATE AN ACCOUNT",
                      textColor: Colors.white,
                      buttonColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Get from gallery
  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

// write a function to validate user input for textformfield
  validation() {}

// onpress function for image picker
  onpress() {
    _getFromGallery();
  }

  // onpressed function for text field
  onPressButton() {
    getController.UserSignUP(phoneControler.text);
    print(phoneControler.text);
    setState(() {
      isPhoneNumber = true;
    });
  }

  // onpressed function for text field
  onPressVerifyButton() {
    getController.UserConfirmOtp(otpControler.text);
    setState(() {
      isPhoneNumber = true;
    });
  }

  // onpressed function for radio button selection
  onpressedRadio() {}
}
