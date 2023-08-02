// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import 'package:new_app/Model/data/home/allproduct_data.dart';

class AllProductListModel {
  final int status;
  final List<AllProductListData> allProductListData;
  final String message;

  AllProductListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        allProductListData = List<AllProductListData>.from(map["data"].map((it) => AllProductListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = allProductListData != null ? allProductListData.map((e) => e.toJson()).toList() : null;
    return data;
  }
}