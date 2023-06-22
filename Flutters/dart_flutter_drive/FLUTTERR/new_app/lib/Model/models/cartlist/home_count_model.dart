// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/cartlist/home_count_data.dart';

class HomeCountModel {
  final int status;
  final HomeCountData homeCountData;
  final String message;

  HomeCountModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        homeCountData = HomeCountData.fromJsonMap(map["data"]),
        message = map["message"];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['status'] = status;
    data['data'] = homeCountData == null ? null : homeCountData.toJson();
    data['message'] = message;
    return data;
  }
}
