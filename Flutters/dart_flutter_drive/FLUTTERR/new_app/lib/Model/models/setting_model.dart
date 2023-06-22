// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../data/setting_data.dart';

class SettingModel {
  final int status;
  final SettingData settingData;
  final String message;

  SettingModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        settingData = SettingData.fromJsonMap(map["data"]),
        message = map["message"];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['status'] = status;
    data['data'] = settingData == null ? null : settingData.toJson();
    data['message'] = message;
    return data;
  }
}
