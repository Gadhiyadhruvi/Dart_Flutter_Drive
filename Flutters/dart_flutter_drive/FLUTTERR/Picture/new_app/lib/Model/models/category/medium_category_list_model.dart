// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/category/medium_category_list_data.dart';

class MediumCategoryListModel {
  final int status;
  final List<MediumCategoryListData> mediumcategoryListData;
  final String message;

  MediumCategoryListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        mediumcategoryListData = List<MediumCategoryListData>.from(
            map["data"].map((it) => MediumCategoryListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = mediumcategoryListData != null
        ? mediumcategoryListData.map((e) => e.toJson()).toList()
        : null;
    return data;
  }
}