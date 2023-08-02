// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/profile/edit_address_list_data.dart';

class EditAddressListModel {
  final int status;
  final List<EditAddressListData> editAddressListData;
  final String message;

  EditAddressListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        editAddressListData = List<EditAddressListData>.from(
            map["data"].map((it) => EditAddressListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = editAddressListData != null
        ? editAddressListData.map((e) => e.toJson()).toList()
        : null;
    return data;
  }
}