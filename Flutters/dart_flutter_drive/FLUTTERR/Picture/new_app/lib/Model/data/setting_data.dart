// ignore_for_file: non_constant_identifier_names

class SettingData {
  final int id;
  final String key_id;
  final String secret_key;
  final String return_day;
  final String support_number;
  final String order_id;
  final String created_at;
  final String updated_at;
  final String deleted_at;

  SettingData.fromJsonMap(Map<String, dynamic> map)
      : id = map['id'],
        key_id = map['key_id'],
        secret_key = map['secret_key'],
        return_day = map['return_day'],
        support_number = map['support_number'],
        order_id = map['order_id'],
        created_at = map['created_at'],
        updated_at = map['updated_at'],
        deleted_at = map['deleted_at'];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['id'] = id;
    data['key_id'] = key_id;
    data['secret_key'] = secret_key;
    data['return_day'] = return_day;
    data['support_number'] = support_number;
    data['order_id'] = order_id;
    data['created_at'] = created_at;
    data['updated_at'] = updated_at;
    data['deleted_at'] = deleted_at;
    return data;
  }
}
