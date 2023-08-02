// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/home/TodaysDeal_data.dart';

class TodaysDealListModel {
  final int status;
  final List<TodaysDealListData> todaysDealListData;
  final String message;

  TodaysDealListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        todaysDealListData = List<TodaysDealListData>.from(
            map["data"].map((it) => TodaysDealListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = todaysDealListData != null
        ? todaysDealListData.map((e) => e.toJson()).toList()
        : null;
    return data;
  }
}