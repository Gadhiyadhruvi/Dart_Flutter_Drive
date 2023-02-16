import 'dart:convert';

DataModel dataModelFromJson(String str) => DataModel.fromJson(json.decode(str));
String dataModelToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
  final int id;
  final String name;
  final String email;

  const DataModel({
    required this.id,
    required this.name,
    required this.email,
  });

  factory DataModel.fromJson(Map<String, dynamic> myJsonResponse) {
    return DataModel(
        id: myJsonResponse['id'],
        name: myJsonResponse['name'],
        email: myJsonResponse['email']);
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
      };
}
