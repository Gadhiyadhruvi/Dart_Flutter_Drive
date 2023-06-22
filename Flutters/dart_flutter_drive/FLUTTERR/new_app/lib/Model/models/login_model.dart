// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import 'package:new_app/Model/data/login_data.dart';

class LoginModel {
  final int status;
  final LoginData loginData;
  final String message;

  LoginModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        loginData = LoginData.fromJsonMap(map["data"]),
        message = map["message"];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['status'] = status;
    data['data'] = loginData == null ? null : loginData.toJson();
    data['message'] = message;
    return data;
  }
}
