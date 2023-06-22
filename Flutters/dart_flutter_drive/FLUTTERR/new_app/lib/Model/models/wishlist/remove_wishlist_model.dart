// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/wishlist/remove_wishlist_data.dart';

class RemoveWishListModel {
  final int status;
  final RemoveWishListData removeWishListData;
  final String message;

  RemoveWishListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        removeWishListData = RemoveWishListData.fromJsonMap(map["data"]),
        message = map["message"];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['status'] = status;
    data['data'] = removeWishListData == null ? null : removeWishListData.toJson();
    data['message'] = message;
    return data;
  }
}
