// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/cartlist/cart_list_data.dart';

class CartListModel {
  final int status;
  final CartModel cartListData;
  final int totalPages;
  final int totalCount;
  final int pageNumber;
  final String message;

  CartListModel.fromJsonMap(Map<String, dynamic>map)
      :  status = map['status'],
        cartListData = CartModel.fromJsonMap(map["data"]),
        totalPages = map['totalPages'],
        totalCount = map['totalCount'],
        pageNumber = map['pageNumber'],
        message = map['message'];

  Map<String ,dynamic> toJson() {
    Map<String ,dynamic> data = <String , dynamic >{};
    data['status'] = status;
    data['data'] = cartListData != null
        ? null : cartListData.toJson();
    data['totalPages'] = totalPages;
    data['totalCount'] = totalCount;
    data['pageNumber'] = pageNumber;
    return data;
  }
}

