// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/category/school_category_list_data.dart';

class SchoolCategoryListModel {
  final int status;
  final List<SchoolCategoryListData> schoolcategoryListData;
  final String message;

  SchoolCategoryListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        schoolcategoryListData = List<SchoolCategoryListData>.from(
            map["data"].map((it) => SchoolCategoryListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = schoolcategoryListData != null
        ? schoolcategoryListData.map((e) => e.toJson()).toList()
        : null;
    return data;
  }
}