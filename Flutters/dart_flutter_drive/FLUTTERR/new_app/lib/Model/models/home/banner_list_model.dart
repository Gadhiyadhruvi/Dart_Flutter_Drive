// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import 'package:new_app/Model/data/home/banner_list_data.dart';

class BannerListModel {
  final int status;
  final List<BannerListData> bannerListData;
  final String message;

  BannerListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        bannerListData = List<BannerListData>.from(
            map["data"].map((it) => BannerListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = bannerListData != null
        ? bannerListData.map((e) => e.toJson()).toList()
        : null;
    return data;
  }
}