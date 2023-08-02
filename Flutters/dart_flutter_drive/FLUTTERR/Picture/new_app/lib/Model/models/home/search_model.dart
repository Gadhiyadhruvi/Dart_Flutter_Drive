// ignore_for_file: prefer_null_aware_operators, unnecessary_null_comparison
import '../../data/home/search_data.dart';

class SearchDataListModel {
  final int status;
  final ProductDataList productDataList;
  final String totalPages;
  final String totalCount;
  final String pageNumber;
  final String hasNextPage;
  final String hasPreviousPage;
  final String message;

  SearchDataListModel.fromJsonMap(Map<String, dynamic>map)
      :  status = map['status'],
        productDataList = ProductDataList.fromJsonMap(map["data"]),
        totalPages = map['totalPages'],
        totalCount = map['totalCount'],
        pageNumber = map['pageNumber'],
        hasNextPage = map['hasNextPage'],
        hasPreviousPage = map['hasPreviousPage'],
        message = map['message'];

  Map<String ,dynamic> toJson() {
    Map<String ,dynamic> data = <String , dynamic >{};
    data['status'] = status;
    data['data'] = productDataList != null ? productDataList.toJson() : null;
    data['totalPages'] = totalPages;
    data['totalCount'] = totalCount;
    data['pageNumber'] = pageNumber;
    data['hasNextPage'] = hasNextPage;
    data['hasPreviousPage'] = hasPreviousPage;
    return data;
  }
}