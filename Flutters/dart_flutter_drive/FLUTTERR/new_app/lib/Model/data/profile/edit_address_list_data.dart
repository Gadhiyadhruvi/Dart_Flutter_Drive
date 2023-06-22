// ignore_for_file: non_constant_identifier_names

class EditAddressData {
  final int id;
  final String user_id;
  final String address;
  final String mobile_no;
  final String country;
  final String state;
  final String city;
  final String pincode;
  final String is_default;
  final String created_at;
  final String updated_at;
  final String deleted_at;

  EditAddressData.fromJsonMap(Map<String, dynamic> map)
      : id = map['id'],
        user_id = map['user_id'],
        address = map['address'],
        mobile_no = map['mobile_no'],
        country = map['country'],
        state = map['state'],
        city = map['city'],
        pincode = map['pincode'],
        is_default = map['is_default'],
        created_at = map['created_at'],
        updated_at = map['updated_at'],
        deleted_at = map['deleted_at'];


  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['id'] = id;
    data['user_id'] = user_id;
    data['address'] = address;
    data['mobile_no'] = mobile_no;
    data['country'] = country;
    data['state'] = state;
    data['city'] = city;
    data['pincode'] = pincode;
    data['is_default'] = is_default;
    data['created_at'] = created_at;
    data['updated_at'] = updated_at;
    data['deleted_at'] = deleted_at;

    return data;
  }

}