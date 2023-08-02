// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/category/board_category_list_data.dart';

class BoardCategoryListModel {
  final int status;
  final List<BoardCategoryListData> boardcategoryListData;
  final String message;

  BoardCategoryListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        boardcategoryListData = List<BoardCategoryListData>.from(
            map["data"].map((it) => BoardCategoryListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = boardcategoryListData != null
        ? boardcategoryListData.map((e) => e.toJson()).toList()
        : null;
    return data;
  }
}