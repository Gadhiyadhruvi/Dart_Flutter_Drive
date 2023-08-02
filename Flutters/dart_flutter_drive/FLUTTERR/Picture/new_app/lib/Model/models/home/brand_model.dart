// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/home/brand_data.dart';

class BrandListModel {
  final int status;
  final List<BrandListData> brandListData;
  final String message;

  BrandListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        brandListData = List<BrandListData>.from(
            map["data"].map((it) => BrandListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = brandListData != null
        ? brandListData.map((e) => e.toJson()).toList()
        : null;
    return data;
  }
}