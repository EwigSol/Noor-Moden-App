import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:noor_moden/view/signup/signup.dart';
import 'package:noor_moden/widgets/commons/contact_us.dart';
import 'package:noor_moden/widgets/commons/customButton.dart';
import 'package:noor_moden/widgets/commons/custom_filed.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailcontroler = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // set width variable with screen size to set width of login screen
    var width = MediaQuery.of(context).size.width / 1.3;

    return Scaffold(
      body: Container(
        // margin: EdgeInsets.all(10),
        padding: const EdgeInsets.all(10.0),
        // height: 600,
        color: Colors.white,
        // width: 260,
        child: Form(
          key: _formKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // show close button on right side of login screen
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      "CLOSE",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.1,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // customer login text showing
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                "CUSTOMER LOGIN:",
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            // horizontal line after customer login text
            const Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10),
              child: const Divider(color: Colors.black38, height: 0.5),
            ),
            // email text field to show
            const Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Text(
                "EMAIL ADDRESS *",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            // Email text form field to get email from user
            Container(
              margin: const EdgeInsets.only(top: 10, right: 10),
              width: double.infinity,
              child: CustomField(
                controller: emailController,
                hint: "Write your Email",
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                icon: const IconData(0x41,
                    fontFamily: 'Roboto',
                    fontPackage: "",
                    matchTextDirection: false),
                maxLins: 1,
                validate: validation,
              ),
            ),

            // password text field to show
            const Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: Text(
                "PASSWORD *",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            // Password text form field to get password from user
            Container(
              padding: const EdgeInsets.only(top: 10, right: 10),
              width: width,
              child: CustomField(
                controller: emailController,
                hint: "Write your Password",
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                icon: const IconData(0x41,
                    fontFamily: 'Roboto',
                    fontPackage: "",
                    matchTextDirection: false),
                maxLins: 1,
                validate: validation,
              ),
            ),
            // custom Login Button
            Container(
              padding: const EdgeInsets.only(
                top: 20,
                right: 10,
              ),
              width: width,
              child: CustomButton(
                  onpress: onpresslogin,
                  text: "LOGIN",
                  textColor: Colors.black,
                  buttonColor: Colors.white),
            ),
            const Center(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("forget password"),
            )),
            Container(
              padding: const EdgeInsets.only(
                top: 20,
                right: 10,
              ),
              width: width,
              child: const CustomButton(
                onpress: onpressAccount,
                text: "CREATE AN ACCOUNT",
                textColor: Colors.white,
                buttonColor: Colors.black,
              ),
            ),
          ]),
        ),
      ),
    );
  }

  onpresslogin() {
    if (_formKey.currentState!.validate()) {
      print("validated");
    }
  }
}

// write a function to validate user input for textformfield
validation() {}

//

onpressAccount() {
  Get.to(() => const SignUpPage());
}
