// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/cartlist/all_addtocart_data.dart';

class AllAddToCartListModel {
  final int status;
  final List<AllAddToCartListData> allAddToCartListData;
  final String message;

  AllAddToCartListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        allAddToCartListData = List<AllAddToCartListData>.from(map["data"].map((it) => AllAddToCartListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = allAddToCartListData != null ? allAddToCartListData.map((e) => e.toJson()).toList() : null;
    return data;
  }
}