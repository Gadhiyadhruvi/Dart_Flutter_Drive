// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/profile/default_address_list_data.dart';

class DefaultAddressModel {
  final int status;
  final DefaultAddressData defaultAddressApi;
  final String message;

  DefaultAddressModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        defaultAddressApi = DefaultAddressData.fromJsonMap(map["data"]),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = defaultAddressApi == null ? null : defaultAddressApi.toJson();
    return data;
  }
}