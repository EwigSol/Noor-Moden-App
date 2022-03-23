import 'package:shared_preferences/shared_preferences.dart';

import '';

class MyService {
  static saveLoginDetails({required String email, required String name}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool("logedIn", true);
    preferences.setString("email", email);
    preferences.setString("name", name);
    return true;
  }

  static saveToken({token}) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString("token", token);
  }

  static Future<bool> checkLoginStatus() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool("logggedIn") ?? false;
  }

  static Future<String> getToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString("token") ?? "";
  }

  static Future<Future<bool>> clear() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.clear();
  }

  static getUserInfo() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? email = preferences.getString("email");
    String? name = preferences.getString("name");
    String? phone = preferences.getString("phone");
    String? token = preferences.getString("token");
    return name;
    Map<String, dynamic> data = {};
    data["email"] = email;
    data["phone"] = phone;
    data["name"] = name;
    data["token"] = token;
    return data;
  }
}
