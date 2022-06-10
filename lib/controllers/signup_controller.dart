import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:noor_moden/view/homescreen/home_screen.dart';
import 'dart:html';

class SignupController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  late ConfirmationResult confirmationResult;
  // late String code;

// Wait for the user to complete the reCAPTCHA & for an SMS code to be sent.
  UserSignUP(number) async {
    print("calllll:::");
    confirmationResult = await auth.signInWithPhoneNumber(
      number,
      // RecaptchaVerifier(
      //   container: 'recaptcha',
      //   size: RecaptchaVerifierSize.compact,
      //   theme: RecaptchaVerifierTheme.dark,
      // )
    );
    print(confirmationResult);
  }

  UserConfirmOtp(code) async {
    UserCredential userCredential = await confirmationResult.confirm(code);
    print(userCredential);
    Get.to(HomeScreen());
  }
}
