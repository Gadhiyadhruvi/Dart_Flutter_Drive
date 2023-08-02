// ignore_for_file: non_constant_identifier_names

class ProductListData {
  final int id;
  final String user_id;
  final String product_id;
  final String is_favorite;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final String productData;

  ProductListData.fromJsonMap(Map<String, dynamic> map)
      : id = map['id'],
        user_id = map['user_id'],
        product_id = map['product_id'],
        is_favorite = map['is_favorite'],
        created_at = map['created_at'],
        updated_at = map['updated_at'],
        deleted_at = map['deleted_at'],
        productData = map['productData'];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['id'] = id;
    data['user_id'] = user_id;
    data['product_id'] = product_id;
    data['is_favorite'] = is_favorite;
    data['created_at'] = created_at;
    data['updated_at'] = updated_at;
    data['deleted_at'] = deleted_at;
    data['productData'] = productData;
    return data;
  }
}