// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison

import '../../data/home/feature_data.dart';

class FeatureListModel {
  final int status;
  final List<FeatureListData> featureListData;
  final String totalPages;
  final String totalCount;
  final String pageNumber;
  final String hasNextPage;
  final String hasPreviousPage;
  final String message;

  FeatureListModel.fromJsonMap(Map<String, dynamic> map)
      : status = map["status"],
        featureListData = List<FeatureListData>.from(
            map["data"].map((it) => FeatureListData.fromJsonMap(it))).toList(),
        totalPages = map["totalPages"],
        totalCount = map["totalCount"],
        pageNumber = map["pageNumber"],
        hasNextPage = map["hasNextPage"],
        hasPreviousPage = map["hasPreviousPage"],
        message = map["message"];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = featureListData != null
        ? featureListData.map((e) => e.toJson()).toList()
        : null;
    data['totalPages'] = totalPages;
    data['totalCount'] = totalCount;
    data['pageNumber'] = pageNumber;
    data['hasNextPage'] = hasNextPage;
    data['hasPreviousPage'] = hasPreviousPage;
    return data;
  }
}