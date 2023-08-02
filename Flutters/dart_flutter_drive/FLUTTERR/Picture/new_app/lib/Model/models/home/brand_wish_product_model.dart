// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/home/brand_wish_product_data.dart';

class BrandWishProductListModel {
  final int status;
  final List<BrandWishProductListData> brandWishProductListData;
  final String message;

  BrandWishProductListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        brandWishProductListData = List<BrandWishProductListData>.from(map["data"].map((it) => BrandWishProductListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = brandWishProductListData != null ? brandWishProductListData.map((e) => e.toJson()).toList() : null;
    return data;
  }
}