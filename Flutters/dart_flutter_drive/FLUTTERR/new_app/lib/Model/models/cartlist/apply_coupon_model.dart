// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/cartlist/apply_coupon_data.dart';

class ApplyCouponModel {
  final int status;
  final ApplyCouponData applyCouponData;
  final String message;

  ApplyCouponModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        applyCouponData = ApplyCouponData.fromJsonMap(map["data"]),
        message = map["message"];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['status'] = status;
    data['data'] = applyCouponData == null ? null : applyCouponData.toJson();
    data['message'] = message;
    return data;
  }
}
