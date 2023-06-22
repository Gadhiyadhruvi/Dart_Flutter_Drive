// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/category/standerd_category_list_data.dart';

class StanderdCategoryListModel {
  final int status;
  final List<StanderdCategoryListData> standerdcategoryListData;
  final String message;

  StanderdCategoryListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        standerdcategoryListData = List<StanderdCategoryListData>.from(
            map["data"].map((it) => StanderdCategoryListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = standerdcategoryListData != null
        ? standerdcategoryListData.map((e) => e.toJson()).toList()
        : null;
    return data;
  }
}