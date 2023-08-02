// ignore_for_file: non_constant_identifier_names

class ForegotePasswordData {
  final int id;
  final String roleId;
  final String name;
  final String profileImage;
  final String email;
  final String mobileNo;
  final String email_otp;
  final String mobileOtp;
  final String status;
  final String device_type;
  final String device_token;
  final String deletedAt;
  final String createdAt;
  final String updatedAt;

  ForegotePasswordData.fromJsonMap(Map<String, dynamic> map)
      : id = map['id'],
        roleId = map['role_id'],
        name = map['name'],
        profileImage = map['profile_image'],
        email = map['email'],
        mobileNo = map['mobile_no'],
        email_otp = map['email_otp'],
        mobileOtp = map['mobile_otp'],
        status = map['status'],
        device_type = map['device_type'],
        device_token = map['device_token'],
        deletedAt = map['deleted_at'],
        createdAt = map['updated_at'],
        updatedAt = map['updated_at'];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['id'] = id;
    data['role_id'] = roleId;
    data['name'] = name;
    data['profile_image'] = profileImage;
    data['email'] = email;
    data['mobile_no'] = mobileNo;
    data['email_otp'] = email_otp;
    data['mobile_otp'] = mobileOtp;
    data['status'] = status;
    data['device_type'] = device_type;
    data['device_token'] = device_token;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
