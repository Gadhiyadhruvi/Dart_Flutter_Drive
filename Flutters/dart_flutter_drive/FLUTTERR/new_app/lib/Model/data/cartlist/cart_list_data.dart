// ignore_for_file: non_constant_identifier_names, prefer_null_aware_operators, unnecessary_null_comparison

import 'cart_list2_data.dart';

class CartModel {
  final List<CardDetailListModel> cartDetailListData;
  final CartSummaryData cartSummaryData;

  CartModel.fromJsonMap(Map<String, dynamic>map)
      :  cartDetailListData = List<CardDetailListModel>.from(map['cartDetail'].map((it) => CardDetailListModel.fromJsonMap(it))).toList(),
         cartSummaryData = CartSummaryData.fromJsonMap(map["cart_summary"]);

  Map<String ,dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['cartDetail'] = cartDetailListData != null
        ? cartDetailListData.map((e) => e.toJson()).toList()
        : null;
    data['cart_summary'] = cartSummaryData == null ? null : cartSummaryData.toJson();
    return data;
  }
}

class CardDetailListModel {
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
  final CartListData productListData;

  CardDetailListModel.fromJsonMap(Map<String, dynamic>map)
      :  id = map['id'],
        user_id = map['user_id'],
        product_id = map['product_id'],
        qty = map['qty'],
        is_cart = map['is_cart'],
        offer_id = map['offer_id'],
        is_global_offer = map['is_global_offer'],
        deleted_at = map['deleted_at'],
        created_at = map['created_at'],
        updated_at = map['updated_at'],
        productListData = CartListData.fromJsonMap(map["productData"]);

  Map<String ,dynamic> toJson() {
    Map<String ,dynamic> data = <String , dynamic >{};
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
    data['data'] = productListData != null
        ? productListData.toJson()
        : null;
    return data;
  }
}

class CartSummaryData {
  final int sub_total;
  final int discount_total;
  final int coupon_discount;
  final int order_total;

  CartSummaryData.fromJsonMap(Map<String, dynamic>map)
      :  sub_total = map['sub_total'],
        discount_total = map['discount_total'],
        coupon_discount = map['coupon_discount'],
        order_total = map['order_total'];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic> {};
    data['sub_total'] = sub_total;
    data['discount_total'] = discount_total;
    data['coupon_discount'] = coupon_discount;
    data['order_total'] = order_total;
    return data;
  }
}


