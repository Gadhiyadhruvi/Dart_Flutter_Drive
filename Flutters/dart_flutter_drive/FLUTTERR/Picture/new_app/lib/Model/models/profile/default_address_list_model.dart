// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/profile/default_address_list_data.dart';

class DefaultAddressListModel {
  final int status;
  final List<DefaultAddressListData> defaultAddressListData;
  final String message;

  DefaultAddressListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        defaultAddressListData = List<DefaultAddressListData>.from(
            map["data"].map((it) => DefaultAddressListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = defaultAddressListData != null
        ? defaultAddressListData.map((e) => e.toJson()).toList()
        : null;
    return data;
  }
}