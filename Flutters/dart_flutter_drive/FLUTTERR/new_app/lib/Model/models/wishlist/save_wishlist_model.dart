// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import 'package:new_app/Model/data/wishlist/save_wishlist_data.dart';

class SaveWishListModel {
  final int status;
  final SaveWishListData saveWishListData;
  final String message;

  SaveWishListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        saveWishListData = SaveWishListData.fromJsonMap(map["data"]),
        message = map["message"];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['status'] = status;
    data['data'] = saveWishListData == null ? null : saveWishListData.toJson();
    data['message'] = message;
    return data;
  }
}
