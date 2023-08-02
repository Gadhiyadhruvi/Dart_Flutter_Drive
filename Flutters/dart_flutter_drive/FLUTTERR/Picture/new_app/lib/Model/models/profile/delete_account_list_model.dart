// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/profile/delete_account_list_data.dart';

class DeleteAccountListModel {
  final int status;
  final List<DeleteAccountListData> deleteAccountListData;
  final String message;

  DeleteAccountListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        deleteAccountListData = List<DeleteAccountListData>.from(map["data"].map((it) => DeleteAccountListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = deleteAccountListData != null ? deleteAccountListData.map((e) => e.toJson()).toList() : null;
    return data;
  }
}