// ignore_for_file: non_constant_identifier_names

class SecondBannerListData{
  final int id;
  final String name;
  final String product_id;
  final String image;
  final String status;
  final String banner_type;
  final String created_at;
  final String updated_at;
  final String deleted_at;

  SecondBannerListData.fromJsonMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        product_id = map['product_id'],
        image = map['image'],
        status = map['status'],
        banner_type = map['banner_type'],
        created_at = map['created_at'],
        updated_at = map['updated_at'],
        deleted_at = map['deleted_at'];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['product_id'] = product_id;
    data['image'] = image;
    data['status'] = status;
    data['banner_type'] = banner_type;
    data['created_at'] = created_at;
    data['updated_at'] = updated_at;
    data['deleted_at'] = deleted_at;
    return data;
  }

}