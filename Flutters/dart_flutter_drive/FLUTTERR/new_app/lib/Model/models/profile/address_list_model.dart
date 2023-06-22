// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/profile/address_list_data.dart';

class AddressListModel {
  final int status;
  final List<AddressListData> addressListData;
  final String message;

  AddressListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        addressListData = List<AddressListData>.from(
            map["data"].map((it) => AddressListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = addressListData != null
        ? addressListData.map((e) => e.toJson()).toList()
        : null;
    return data;
  }
}