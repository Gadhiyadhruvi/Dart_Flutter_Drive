// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/profile/edit_address_list_data.dart';

class EditAddressModel {
  final int status;
  final EditAddressData editAddressData;
  final String message;

  EditAddressModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        editAddressData = EditAddressData.fromJsonMap(map["data"]),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = editAddressData == null ? null : editAddressData.toJson();
    return data;
  }
}