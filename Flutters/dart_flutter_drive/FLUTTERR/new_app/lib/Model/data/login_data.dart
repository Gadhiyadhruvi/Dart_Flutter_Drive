// ignore_for_file: non_constant_identifier_names

class LoginData {
  final int id;
  final String role_id;
  final String name;
  final String profile_image;
  final String email;
  final String mobile_no;
  final String email_otp;
  final String mobile_otp;
  final String status;
  final String device_type;
  final String device_token;
  final String deleted_at;
  final String created_at;
  final String updated_at;

  LoginData.fromJsonMap(Map<String, dynamic> map)
      : id = map['id'],
        role_id = map['role_id'],
        name = map['name'],
        profile_image = map['profile_image'],
        email = map['email'],
        mobile_no = map['mobile_no'],
        email_otp = map['email_otp'],
        mobile_otp = map['mobile_otp'],
        status = map['status'],
        device_type = map['device_type'],
        device_token = map['device_token'],
        deleted_at = map['deleted_at'],
        created_at = map['created_at'],
        updated_at = map['updated_at'];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['id'] = id;
    data['role_id'] = role_id;
    data['name'] = name;
    data['profile_image'] = profile_image;
    data['email'] = email;
    data['mobile_no'] = mobile_no;
    data['email_otp'] = email_otp;
    data['mobile_otp'] = mobile_otp;
    data['status'] = status;
    data['device_type'] = device_type;
    data['device_token'] = device_token;
    data['deleted_at'] = deleted_at;
    data['created_at'] = created_at;
    data['updated_at'] = updated_at;
    return data;
  }
}
