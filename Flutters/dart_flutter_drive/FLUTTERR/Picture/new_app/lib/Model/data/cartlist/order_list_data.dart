// ignore_for_file: non_constant_identifier_names

class OrderListData {
  final int id;
  final String order_no;
  final String user_id;
  final String transaction_id;
  final String user_address_id;
  final String coupon_id;
  final String payment_type;
  final String total_discount;
  final String discount;
  final String pickup_date;
  final String sub_total;
  final String shipping_charge;
  final String total_amount;
  final String order_status;
  final String cancel_reason;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final String orderIDEncrypt;
  final String order_date;
  final String total_quantity;

  OrderListData.fromJsonMap(Map<String, dynamic> map)
      : id = map['id'],
        order_no = map['order_no'],
        user_id = map['user_id'],
        transaction_id = map['transaction_id'],
        user_address_id = map['user_address_id'],
        coupon_id = map['coupon_id'],
        payment_type = map['payment_type'],
        total_discount = map['total_discount'],
        discount = map['discount'],
        pickup_date = map['pickup_date'],
        sub_total = map['sub_total'],
        shipping_charge = map['shipping_charge'],
        total_amount = map['total_amount'],
        order_status = map['order_status'],
        cancel_reason = map['cancel_reason'],
        created_at = map['created_at'],
        updated_at = map['updated_at'],
        deleted_at = map['deleted_at'],
        orderIDEncrypt = map['orderIDEncrypt'],
        order_date = map['order_date'],
        total_quantity = map['total_quantity'];


  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['id'] = id;
    data['order_no'] = order_no;
    data['user_id'] = user_id;
    data['transaction_id'] = transaction_id;
    data['user_address_id'] = user_address_id;
    data['coupon_id'] = coupon_id;
    data['payment_type'] = payment_type;
    data['total_discount'] = total_discount;
    data['discount'] = discount;
    data['pickup_date'] = pickup_date;
    data['sub_total'] = sub_total;
    data['shipping_charge'] = shipping_charge;
    data['total_amount'] = total_amount;
    data['order_status'] = order_status;
    data['cancel_reason'] = cancel_reason;
    data['created_at'] = created_at;
    data['updated_at'] = updated_at;
    data['deleted_at'] = deleted_at;
    data['orderIDEncrypt'] = orderIDEncrypt;
    data['order_date'] = order_date;
    data['total_quantity'] = total_quantity;
    return data;
  }
}