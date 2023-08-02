// ignore_for_file: non_constant_identifier_names

class StanderdListData {
  final int id;
  final String category_id;
  final String super_category_id;
  final String supersub_cat_id;
  final String name;
  final String image;
  final String status;
  final String created_at;
  final String updated_at;
  final String deleted_at;

  StanderdListData.fromJsonMap(Map<String, dynamic> map)
      : id = map['id'],
        category_id = map['category_id'],
        super_category_id = map['super_category_id'],
        supersub_cat_id = map['supersub_cat_id'],
        name = map['name'],
        image = map['image'],
        status = map['status'],
        created_at = map['created_at'],
        updated_at = map['updated_at'],
        deleted_at = map['deleted_at'];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['id'] = id;
    data['category_id'] = category_id;
    data['super_category_id'] = super_category_id;
    data['supersub_cat_id'] = supersub_cat_id;
    data['name'] = name;
    data['image'] = image;
    data['status'] = status;
    data['created_at'] = created_at;
    data['updated_at'] = updated_at;
    data['deleted_at'] = deleted_at;
    return data;
  }

}