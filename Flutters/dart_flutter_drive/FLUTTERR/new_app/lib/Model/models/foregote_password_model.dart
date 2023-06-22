// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../data/foregote_password_data.dart';

class ForegotePasswordModel {
  final int status;
  final ForegotePasswordData foregotePasswordData;
  final String message;

  ForegotePasswordModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        foregotePasswordData = ForegotePasswordData.fromJsonMap(map["data"]),
        message = map["message"];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['status'] = status;
    data['data'] = foregotePasswordData == null ? null : foregotePasswordData.toJson();
    data['message'] = message;
    return data;
  }
}
