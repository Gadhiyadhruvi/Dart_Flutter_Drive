// ignore_for_file: non_constant_identifier_names

class RemoveToCartData {
  final int id;
  final String user_id;
  final String product_id;
  final String qty;
  final String is_cart;
  final String offer_id;
  final String is_global_offer;
  final String deleted_at;
  final String created_at;
  final String updated_at;

  RemoveToCartData.fromJsonMap(Map<String, dynamic> map)
      : id = map['id'],
        user_id = map['user_id'],
        product_id = map['product_id'],
        qty = map['qty'],
        is_cart = map['is_cart'],
        offer_id = map['offer_id'],
        is_global_offer = map['is_global_offer'],
        deleted_at = map['deleted_at'],
        created_at = map['created_at'],
        updated_at = map['updated_at'];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['id'] = id;
    data['user_id'] = user_id;
    data['product_id'] = product_id;
    data['qty'] = qty;
    data['is_cart'] = is_cart;
    data['offer_id'] = offer_id;
    data['is_global_offer'] = is_global_offer;
    data['deleted_at'] = deleted_at;
    data['created_at'] = created_at;
    data['updated_at'] = updated_at;
    return data;
  }
}