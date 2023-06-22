// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import 'package:new_app/Model/data/signup_data.dart';

class SignUpModel{
  final int status;
  final SignupData signUpData;
  final String message;

  SignUpModel.fromJsonMap(Map<String, dynamic> map)
  : status = map["status"],
    signUpData = SignupData.fromJsonMap(map["data"]),
    message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['status'] = status;
    data['data'] = signUpData == null ? null : signUpData.toJson();
    data['message'] = message;
    return data;
  }
}