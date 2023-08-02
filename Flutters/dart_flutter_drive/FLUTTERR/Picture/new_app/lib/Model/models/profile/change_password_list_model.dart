// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/profile/change_password_list_data.dart';

class ChangePasswordListModel {
  final int status;
  final List<ChangePasswordListData> changePasswordListData;
  final String message;

  ChangePasswordListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        changePasswordListData = List<ChangePasswordListData>.from(map["data"].map((it) => ChangePasswordListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = changePasswordListData != null ? changePasswordListData.map((e) => e.toJson()).toList() : null;
    return data;
  }
}