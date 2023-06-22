// ignore_for_file: non_constant_identifier_names

class SaveWishListData {
  final String user_id;
  final String product_id;
  final String deleted_at;
  final String is_favorite;
  final String updated_at;
  final String created_at;
  final int id;

  SaveWishListData.fromJsonMap(Map<String, dynamic> map)
      : user_id = map['user_id'],
        product_id = map['product_id'],
        deleted_at = map['deleted_at'],
        is_favorite = map['is_favorite'],
        updated_at = map['updated_at'],
        created_at = map['created_at'],
        id = map['id'];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['user_id'] = user_id;
    data['product_id'] = product_id;
    data['deleted_at'] = deleted_at;
    data['is_favorite'] = is_favorite;
    data['updated_at'] = updated_at;
    data['created_at'] = created_at;
    data['id'] = id;
    return data;
  }
}