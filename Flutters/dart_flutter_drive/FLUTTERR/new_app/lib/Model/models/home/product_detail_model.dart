// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/home/product_detail_data.dart';

class ProductDetailModel {
  final int status;
  final ProductDetailData productDetailData;
  final String message;

  ProductDetailModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        productDetailData = ProductDetailData.fromJsonMap(map["data"]),
        message = map["message"];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['status'] = status;
    data['data'] = productDetailData == null ? null : productDetailData.toJson();
    data['message'] = message;
    return data;
  }
}
