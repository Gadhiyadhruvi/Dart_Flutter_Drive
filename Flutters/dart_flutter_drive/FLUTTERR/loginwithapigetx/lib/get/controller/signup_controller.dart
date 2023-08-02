import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../model/signup_model.dart';

class SignUpController extends GetxController {
  RxBool obscureText = true.obs;
  SignupModel? signupApi;
  RxBool isLoading = false.obs;
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController mobilecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();

  Sign_Up(String email, password, BuildContext ctx) async {
    Map data = {
      'email': email,
      'password': password,
    };

    final Uri url = Uri.parse("https://reqres.in/api/register");
    var response = await http.post(url, body: data);
    signupApi = SignupModel.fromJson(json.decode(response.body.toString()));
    if (response.statusCode == 200) {
    } else {
        isLoading.value = false;
    }
    print("Response");
    print(response.body);
  }

  void toggle() {
      obscureText.value = obscureText.value;
  }
}