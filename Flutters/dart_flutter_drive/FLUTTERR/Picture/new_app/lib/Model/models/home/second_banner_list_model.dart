// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/home/second_banner_list_data.dart';

class SecondBannerListModel {
  final int status;
  final List<SecondBannerListData> secondbannerListData;
  final String message;

  SecondBannerListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        secondbannerListData = List<SecondBannerListData>.from(
            map["data"].map((it) => SecondBannerListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = secondbannerListData != null
        ? secondbannerListData.map((e) => e.toJson()).toList()
        : null;
    return data;
  }
}