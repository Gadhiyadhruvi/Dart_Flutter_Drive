// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/profile/remove_address_data.dart';

// class RemoveAddressModel {
//   final int status;
//   final RemoveAddressData removeAddressData;
//   final String message;
//
//   RemoveAddressModel.fromJsonMap(Map<String, dynamic>map)
//   : status = map['status'],
//     removeAddressData = RemoveAddressData.fromJsonMap(map['data']),
//     message= map['message'];
//
//   Map<String, dynamic>  toJson() {
//     Map<String, dynamic> data = <String, dynamic> {};
//     data['status'] = status;
//     data['data'] = removeAddressData == null ? null : removeAddressData.toJson();
//   }
// }