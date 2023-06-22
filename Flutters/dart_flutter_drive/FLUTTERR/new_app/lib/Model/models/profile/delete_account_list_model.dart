// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/profile/delete_account_list_data.dart';

class DeleteAccountModel {
  final int status;
  final List<DeleteAccountData> deleteAccountData;
  final String message;

  DeleteAccountModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        deleteAccountData = List<DeleteAccountData>.from(map["data"].map((it) => DeleteAccountData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = deleteAccountData != null ? deleteAccountData.map((e) => e.toJson()).toList() : null;
    return data;
  }
}