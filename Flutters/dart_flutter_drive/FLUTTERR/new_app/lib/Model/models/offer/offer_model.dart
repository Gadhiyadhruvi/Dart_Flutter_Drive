// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import 'package:new_app/Model/data/offer/offer_data.dart';

class OfferListModel {
  final int status;
  final List<OfferListData> offerListData;
  final String message;

  OfferListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        offerListData = List<OfferListData>.from(map["data"].map((it) => OfferListData.fromJsonMap(it))).toList(),
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = offerListData != null ? offerListData.map((e) => e.toJson()).toList() : null;
    return data;
  }
}