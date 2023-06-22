// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/cartlist/remove_cart_data.dart';

class RemoveToCartModel {
  final int status;
  final RemoveToCartData removeToCartData;
  final String message;

  RemoveToCartModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        removeToCartData = RemoveToCartData.fromJsonMap(map["data"]),
        message = map["message"];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['status'] = status;
    data['data'] = removeToCartData == null ? null : removeToCartData.toJson();
    data['message'] = message;
    return data;
  }
}
