// ignore_for_file: non_constant_identifier_names

class CheckOutData {
  final String user_id;
  final String order_no;
  final String transaction_id;
  final String user_address_id;
  final String coupon_id;
  final String payment_type;
  final String total_discount;
  final String shipping_charge;
  final String pickup_date;
  final String total_amount;
  final String discount;
  final String sub_total;
  final String order_status;
  final String deleted_at;
  final String updated_at;
  final String created_at;
  final int id;
  final String orderIDEncrypt;

  CheckOutData.fromJsonMap(Map<String, dynamic>map)
      : user_id = map['user_id'],
        order_no = map['order_no'],
        transaction_id = map['transaction_id'],
        user_address_id = map['user_address_id'],
        coupon_id = map['coupon_id'],
        payment_type = map['payment_type'],
        total_discount = map['total_discount'],
        shipping_charge = map['shipping_charge'],
        pickup_date = map['pickup_date'],
        total_amount = map['total_amount'],
        discount = map['discount'],
        sub_total = map['sub_total'],
        order_status = map['order_status'],
        deleted_at = map['deleted_at'],
        updated_at = map['updated_at'],
        created_at = map['created_at'],
        id = map['id'],
        orderIDEncrypt = map['orderIDEncrypt'];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['user_id'] = user_id;
    data['order_no'] = order_no;
    data['transaction_id'] = transaction_id;
    data['user_address_id'] = user_address_id;
    data['payment_type'] = payment_type;
    data['total_discount'] = total_discount;
    data['shipping_charge'] = shipping_charge;
    data['pickup_date'] = pickup_date;
    data['total_amount'] = total_amount;
    data['discount'] = discount;
    data['sub_total'] = sub_total;
    data['order_status'] = order_status;
    data['deleted_at'] = deleted_at;
    data['updated_at'] = updated_at;
    data['created_at'] = created_at;
    data['id'] = id;
    data['orderIDEncrypt'] = orderIDEncrypt;
    return data;
  }
}