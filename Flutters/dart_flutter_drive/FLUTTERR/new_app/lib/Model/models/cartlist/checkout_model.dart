// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import 'package:new_app/Model/data/cartlist/checkout_data.dart';

class CheckOutModel {
  final int status;
  final CheckOutData checkOutData;
  final String message;

  CheckOutModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        checkOutData = CheckOutData.fromJsonMap(map["data"]),
        message = map["message"];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['status'] = status;
    data['data'] = checkOutData == null ? null : checkOutData.toJson();
    data['message'] = message;
    return data;
  }
}