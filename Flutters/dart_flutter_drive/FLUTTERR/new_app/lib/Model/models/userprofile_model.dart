// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../data/userprofile_data.dart';

class UserProfileModel {
  final int status;
  final UserProfileData userProfileData;
  final String message;

  UserProfileModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        userProfileData = UserProfileData.fromJsonMap(map["data"]),
        message = map["message"];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['status'] = status;
    data['data'] = userProfileData == null ? null : userProfileData.toJson();
    data['message'] = message;
    return data;
  }
}
