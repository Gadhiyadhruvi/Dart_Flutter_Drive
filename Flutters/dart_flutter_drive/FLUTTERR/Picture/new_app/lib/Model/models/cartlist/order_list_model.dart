// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/cartlist/order_list_data.dart';

class OrderListModel {
  final int status;
  final List<OrderListData> orderListData;
  final String message;

  OrderListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        orderListData = List<OrderListData>.from(
            map["data"].map((it) => OrderListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = orderListData != null
        ? orderListData.map((e) => e.toJson()).toList()
        : null;
    return data;
  }
}