// ignore_for_file: non_constant_identifier_names

class AddToCartData {
  final String user_id;
  final String product_id;
  final String qty;
  final String is_cart;
  final String deleted_at;
  final String updated_at;
  final String created_at;
  final int id;

  AddToCartData.fromJsonMap(Map<String, dynamic> map)
  :     user_id = map['user_id'],
        product_id = map['product_id'],
        qty = map['qty'],
        is_cart = map['is_cart'],
        deleted_at = map['deleted_at'],
        updated_at = map['updated_at'],
        created_at = map['created_at'],
        id = map['id'];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['user_id'] = user_id;
    data['product_id'] = product_id;
    data['qty'] = qty;
    data['is_cart'] = is_cart;
    data['deleted_at'] = deleted_at;
    data['updated_at'] = updated_at;
    data['created_at'] = created_at;
    data['id'] = id;
    return data;
  }
}