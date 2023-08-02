// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/home/category_wish_product_list_data.dart';

class CategoryWishProductListModel {
  final int status;
  final List<CategoryWishProductListData> categoryWishProductListData;
  final String message;

  CategoryWishProductListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        categoryWishProductListData = List<CategoryWishProductListData>.from(map["data"].map((it) => CategoryWishProductListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = categoryWishProductListData != null ? categoryWishProductListData.map((e) => e.toJson()).toList() : null;
    return data;
  }
}