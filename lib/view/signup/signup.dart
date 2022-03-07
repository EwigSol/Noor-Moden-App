import 'package:flutter/material.dart';
import 'package:noor_moden/widgets/commons/contact_us.dart';
import 'package:noor_moden/widgets/commons/customButton.dart';
import 'package:noor_moden/widgets/commons/custom_filed.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailcontroler = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();
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
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                child: Divider(
                  height: 1,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: (width - 40) / 3,
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
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 5.0),
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
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 5.0),
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
                          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
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
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 5.0),
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
                    width: (width - 40) / 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //  First Name text to show
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 5.0),
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
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 5.0),
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
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 5.0),
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
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 5.0),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  padding: EdgeInsets.only(top: 5, right: 10),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  padding: EdgeInsets.only(top: 5, right: 10),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  padding: EdgeInsets.only(top: 5, right: 10),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  padding: EdgeInsets.only(top: 5, right: 10),
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
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 5.0),
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
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 5.0),
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
                  Container(
                    width: (width - 40) / 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //  VAT ID text to show
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 10.0, bottom: 5.0),
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
                          padding:
                              EdgeInsets.only(top: 5, right: 10, bottom: 10),
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
                        Container(
                          padding: EdgeInsets.only(
                              top: 5, left: 10, bottom: 5, right: width / 5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black54, width: 1),
                            ),
                            child: CustomButton(
                              onpress: onpress,
                              text: "Choose File",
                              textColor: Colors.black,
                              buttonColor: Color.fromARGB(211, 211, 206, 206),
                            ),
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
                      onpress: onpress,
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
}

// write a function to validate user input for textformfield
validation() {}

//
onpress() {}
