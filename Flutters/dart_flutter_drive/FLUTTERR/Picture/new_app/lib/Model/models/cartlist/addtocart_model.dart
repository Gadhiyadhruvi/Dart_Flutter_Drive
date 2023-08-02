// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/cartlist/addtocart_data.dart';

class AddToCartModel {
  final int status;
  final AddToCartData addToCartData;
  final String message;

  AddToCartModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        addToCartData = AddToCartData.fromJsonMap(map["data"]),
        message = map["message"];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['status'] = status;
    data['data'] = addToCartData == null ? null : addToCartData.toJson();
    data['message'] = message;
    return data;
  }
}
