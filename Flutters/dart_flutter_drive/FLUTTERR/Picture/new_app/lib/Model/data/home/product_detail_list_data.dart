// ignore_for_file: non_constant_identifier_names

class ProductDetailListData {
  final int id;
  final String product_name;
  final String super_cat_id;
  final String super_sub_cat_id;
  final String category_id;
  final String sub_category_id;
  final String product_image;
  final int brand_id;
  final String price;
  final String quantity;
  final String description;
  final String discount;
  final String discount_price;
  final String sold_by;
  final String status;
  final String is_future;
  final String created_at;
  final String updated_at;
  final String deleted_at;
  final String is_cart;
  final String is_favorite;
  final String brand_name;

  ProductDetailListData.fromJsonMap(Map<String, dynamic> map)
      : id = map['id'],
        product_name = map['product_name'],
        super_cat_id = map['super_cat_id'],
        super_sub_cat_id = map['super_sub_cat_id'],
        category_id = map['category_id'],
        sub_category_id = map['sub_category_id'],
        product_image = map['product_image'],
        brand_id = map['brand_id'],
        price = map['price'],
        quantity = map['quantity'],
        description = map['description'],
        discount = map['discount'],
        discount_price = map['discount_price'],
        sold_by = map['sold_by'],
        status = map['status'],
        is_future = map['is_future'],
        created_at = map['created_at'],
        updated_at = map['updated_at'],
        deleted_at = map['deleted_at'],
        is_cart = map['is_cart'],
        is_favorite = map['is_favorite'],
        brand_name = map['brand_name'];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['product_name'] = product_name;
    data['super_cat_id'] = super_cat_id;
    data['super_sub_cat_id'] = super_sub_cat_id;
    data['category_id'] = category_id;
    data['sub_category_id'] = sub_category_id;
    data['product_image'] = product_image;
    data['brand_id'] = brand_id;
    data['price'] = price;
    data['quantity'] = quantity;
    data['description'] = description;
    data['discount'] = discount;
    data['discount_price'] = discount_price;
    data['sold_by'] = sold_by;
    data['status'] = status;
    data['is_future'] = is_future;
    data['created_at'] = created_at;
    data['updated_at'] = updated_at;
    data['deleted_at'] = deleted_at;
    data['is_cart'] = is_cart;
    data['is_favorite'] = is_favorite;
    data['brand_name'] = brand_name;
    return data;
  }
}
