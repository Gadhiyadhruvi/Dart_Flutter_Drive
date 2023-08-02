// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/home/school_data.dart';

class SchoolListModel {
  final int status;
  final List<SchoolListData> schoolListData;
  final String message;

  SchoolListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        schoolListData = List<SchoolListData>.from(
            map["data"].map((it) => SchoolListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = schoolListData != null
        ? schoolListData.map((e) => e.toJson()).toList()
        : null;
    return data;
  }
}