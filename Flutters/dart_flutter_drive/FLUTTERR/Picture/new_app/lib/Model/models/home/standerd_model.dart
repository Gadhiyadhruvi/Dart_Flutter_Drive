// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/home/standerd_data.dart';

class StanderdListModel {
  final int status;
  final List<StanderdListData> standerdListData;
  final String message;

  StanderdListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        standerdListData = List<StanderdListData>.from(
            map["data"].map((it) => StanderdListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = standerdListData != null
        ? standerdListData.map((e) => e.toJson()).toList()
        : null;
    return data;
  }
}