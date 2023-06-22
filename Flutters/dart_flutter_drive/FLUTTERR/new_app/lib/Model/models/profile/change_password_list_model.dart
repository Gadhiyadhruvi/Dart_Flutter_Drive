// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/profile/change_password_list_data.dart';

class ChangePasswordModel {
  final int status;
  final ChangePasswordData changePasswordData;
  final String message;

  ChangePasswordModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        changePasswordData = ChangePasswordData.fromJsonMap(map["data"]),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = changePasswordData == null ? null : changePasswordData.toJson();
    return data;
  }
}