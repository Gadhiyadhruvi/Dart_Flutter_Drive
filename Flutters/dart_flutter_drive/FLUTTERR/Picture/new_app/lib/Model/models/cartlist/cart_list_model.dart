import 'cart_list2_model.dart';

class CartListModel {
  final int status;
  final List<ProductListModel> cartListData;
  final String totalPages;
  final String totalCount;
  final String pageNumber;
  final String hasNextPage;
  final String hasPreviousPage;
  final String message;

  CartListModel.fromJsonMap(Map<String, dynamic>map)
      :  status = map['status'],
        cartListData = List<ProductListModel>.from(map['data'].map((it) => ProductListModel.fromJsonMap(it))).toList(),
        totalPages = map['totalPages'],
        totalCount = map['totalCount'],
        pageNumber = map['pageNumber'],
        hasNextPage = map['hasNextPage'],
        hasPreviousPage = map['hasPreviousPage'],
        message = map['message'];

  Map<String ,dynamic> toJson() {
    Map<String ,dynamic> data = <String , dynamic >{};
    data['status'] = status;
    data['data'] = cartListData != null
        ? cartListData.map((e) => e.toJson()).toList()
        : null;
    data['totalPages'] = totalPages;
    data['totalCount'] = totalCount;
    data['pageNumber'] = pageNumber;
    data['hasNextPage'] = hasNextPage;
    data['hasPreviousPage'] = hasPreviousPage;
    return data;
  }
}
