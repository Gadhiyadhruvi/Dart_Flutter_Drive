// ignore_for_file: non_constant_identifier_names

class ApplyCouponData {
  final int id;
  final String offer_name;
  final String offer_description;
  final String offer_code;
  final String start_date;
  final String end_date;
  final String offer_discount;
  final String category_type;
  final String category_ids;
  final String super_cat_id;
  final String super_sub_cat_id;
  final String category_id;
  final String sub_category_id;
  final String product_id;
  final String brand_id;
  final String user_id;
  final int total_use;
  final int total_used;
  final int total_amount;
  final String status;
  final String created_at;
  final String updated_at;
  final String deleted_at;


  ApplyCouponData.fromJsonMap(Map<String, dynamic> map)
      : id = map['id'],
        offer_name = map['offer_name'],
        offer_description = map['offer_description'],
        offer_code = map['offer_code'],
        start_date = map['start_date'],
        end_date = map['end_date'],
        offer_discount = map['offer_discount'],
        category_type = map['category_type'],
        category_ids = map['category_ids'],
        super_cat_id = map['super_cat_id'],
        super_sub_cat_id = map['super_sub_cat_id'],
        category_id = map['category_id'],
        sub_category_id = map['sub_category_id'],
        product_id = map['product_id'],
        brand_id = map['brand_id'],
        user_id = map['user_id'],
        total_use = map['total_use'],
        total_used = map['total_used'],
        total_amount = map['total_amount'],
        status = map['status'],
        created_at = map['created_at'],
        updated_at = map['updated_at'],
        deleted_at = map['deleted_at'];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['id'] = id;
    data['offer_name'] = offer_name;
    data['offer_description'] = offer_description;
    data['offer_code'] = offer_code;
    data['start_date'] = start_date;
    data['end_date'] = end_date;
    data['offer_discount'] = offer_discount;
    data['category_type'] = category_type;
    data['category_ids'] = category_ids;
    data['super_cat_id'] = super_cat_id;
    data['super_sub_cat_id'] = super_sub_cat_id;
    data['category_id'] = category_id;
    data['sub_category_id'] = sub_category_id;
    data['product_id'] = product_id;
    data['brand_id'] = brand_id;
    data['user_id'] = user_id;
    data['total_use'] = total_use;
    data['total_used'] = total_used;
    data['total_amount'] = total_amount;
    data['status'] = status;
    data['created_at'] = created_at;
    data['updated_at'] = updated_at;
    data['deleted_at'] = deleted_at;

    return data;
  }
}
