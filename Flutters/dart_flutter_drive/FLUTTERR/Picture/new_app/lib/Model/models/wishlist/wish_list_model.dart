// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import 'package:new_app/Model/models/wishlist/wish_list2_model.dart';

import '../../data/wishlist/wish_list_data.dart';

class WishListModel {
  final int status;
  final List<ProductListModel> wishListData;
  final String totalPages;
  final String totalCount;
  final String pageNumber;
  final String hasNextPage;
  final String hasPreviousPage;
  final String message;

  WishListModel.fromJsonMap(Map<String, dynamic>map)
  :  status = map['status'],
     wishListData = List<ProductListModel>.from(map['data'].map((it) => ProductListModel.fromJsonMap(it))).toList(),
     totalPages = map['totalPages'],
     totalCount = map['totalCount'],
     pageNumber = map['pageNumber'],
     hasNextPage = map['hasNextPage'],
     hasPreviousPage = map['hasPreviousPage'],
     message = map['message'];

  Map<String ,dynamic> toJson() {
    Map<String ,dynamic> data = <String , dynamic >{};
    data['status'] = status;
    data['data'] = wishListData != null
        ? wishListData.map((e) => e.toJson()).toList()
        : null;
    data['totalPages'] = totalPages;
    data['totalCount'] = totalCount;
    data['pageNumber'] = pageNumber;
    data['hasNextPage'] = hasNextPage;
    data['hasPreviousPage'] = hasPreviousPage;
    return data;
  }
  }
