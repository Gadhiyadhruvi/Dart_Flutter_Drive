import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../model/login_model.dart';


class LoginController extends GetxController  {
  RxBool isLoading = false.obs;
  RxBool obscureText = true.obs;
  LoginModel? data;

  TextEditingController usercontroller = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();
  var msg;

  login(String mobileNumber, password,BuildContext ctx) async{
    Map data = {
      'email': mobileNumber,
      'password': password,
    };
    final Uri url = Uri.parse("https://reqres.in/api/login");
    var response = await http.post(url,body: data);
    data = LoginModel.fromJson(json.decode(response.body.toString())).toJson();
    if(response.statusCode == 200) {
     }
      else{
      }
      print("Response");
    print(response.body);
  }

  void toggle() {
      obscureText.value = obscureText.value;
  }

}