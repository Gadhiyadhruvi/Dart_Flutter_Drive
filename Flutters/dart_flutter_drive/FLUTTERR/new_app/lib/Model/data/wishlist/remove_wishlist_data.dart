class RemoveWishListData {
  final int id;
  final int user_id;
  final int product_id;
  final String is_favorite;
  final String deleted_at;
  final String created_at;
  final String updated_at;

  RemoveWishListData.fromJsonMap(Map<String, dynamic> map)
      : id = map['id'],
        user_id = map['user_id'],
        product_id = map['product_id'],
        is_favorite = map['is_favorite'],
        deleted_at = map['deleted_at'],
        created_at = map['created_at'],
        updated_at = map['updated_at'];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['id'] = id;
    data['user_id'] = user_id;
    data['product_id'] = product_id;
    data['is_favorite'] = is_favorite;
    data['deleted_at'] = deleted_at;
    data['created_at'] = created_at;
    data['updated_at'] = updated_at;
    return data;
  }
}