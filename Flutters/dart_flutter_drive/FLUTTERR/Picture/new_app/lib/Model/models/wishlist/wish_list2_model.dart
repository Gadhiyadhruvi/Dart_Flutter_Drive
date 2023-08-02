// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import 'package:new_app/Model/data/wishlist/wish_list_data.dart';

class ProductListModel {
  final int id;
  final int user_id;
  final int product_id;
  final String is_favorite;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final WishListData productListData;

  ProductListModel.fromJsonMap(Map<String, dynamic>map)
      :  id = map['id'],
         user_id = map['user_id'],
         product_id = map['product_id'],
         is_favorite = map['is_favorite'],
         created_at = map['created_at'],
         updated_at = map['updated_at'],
         deleted_at = map['deleted_at'],
         productListData = WishListData.fromJsonMap(map["productData"]);

  Map<String ,dynamic> toJson() {
    Map<String ,dynamic> data = <String , dynamic >{};
    data['id'] = id;
    data['data'] = productListData != null
        ? productListData.toJson()
        : null;
    return data;
  }
}