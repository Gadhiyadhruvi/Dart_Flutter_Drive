// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/home/flash_deal_list_data.dart';

class FlashDealListModel {
  final int status;
  final List<FlashDealListData> flashdealListData;
  final String message;

  FlashDealListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        flashdealListData = List<FlashDealListData>.from(map["data"].map((it) => FlashDealListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = flashdealListData != null ? flashdealListData.map((e) => e.toJson()).toList() : null;
    return data;
  }
}