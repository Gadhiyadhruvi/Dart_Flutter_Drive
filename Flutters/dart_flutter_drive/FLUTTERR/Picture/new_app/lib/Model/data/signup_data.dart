class SignupData {
  final String name;
  final String roleId;
  final String profileImage;
  final String mobileNo;
  final String mobileOtp;
  final String email;
  final String status;
  final String deletedAt;
  final String createdAt;
  final String updatedAt;
  final int id;

  SignupData.fromJsonMap(Map<String, dynamic> map)
      : name = map['name'],
        roleId = map['role_id'],
        profileImage = map['profile_image'],
        mobileNo = map['mobile_no'],
        mobileOtp = map['mobile_otp'],
        email = map['email'],
        status = map['status'],
        deletedAt = map['deleted_at'],
        createdAt = map['updated_at'],
        updatedAt = map['updated_at'],
        id = map['id'];

  Map<String,dynamic> toJson() {
    Map<String,dynamic> data = <String,dynamic>{};
    data['name'] = name;
    data['role_id'] = roleId;
    data['profile_image'] = profileImage;
    data['mobile_no'] = mobileNo;
    data['mobile_otp'] = mobileOtp;
    data['email'] = email;
    data['status'] = status;
    data['deleted_at'] = deletedAt;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['id'] = id;
    return data;
  }
}
