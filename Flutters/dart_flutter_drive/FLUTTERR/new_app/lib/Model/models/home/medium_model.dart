// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/home/medium_data.dart';

class MediumListModel {
  final int status;
  final List<MediumListData> mediumListData;
  final String message;

  MediumListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        mediumListData = List<MediumListData>.from(
            map["data"].map((it) => MediumListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = mediumListData != null
        ? mediumListData.map((e) => e.toJson()).toList()
        : null;
    return data;
  }
}