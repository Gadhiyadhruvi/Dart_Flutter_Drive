import 'dart:convert';

Images imagesFromJson(String str) => Images.fromJson(json.decode(str));

String imagesToJson(Images data) => json.encode(data.toJson());

class Images {
  bool? success;
  String? message;
  Data? data;

  Images({
    this.success,
    this.message,
    this.data,
  });

  factory Images.fromJson(Map<String, dynamic> json) => Images(
    success: json["success"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "data": data!.toJson(),
  };
}

class Data {
  List<Marketing>? welcome;
  List<Marketing>? marketing;
  List<Marketing>? login;
  List<Marketing>? register;

  Data({
    this.welcome,
    this.marketing,
    this.login,
    this.register,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    welcome: List<Marketing>.from(json["welcome"].map((x) => Marketing.fromJson(x))),
    marketing: List<Marketing>.from(json["Marketing"].map((x) => Marketing.fromJson(x))),
    login: List<Marketing>.from(json["login"].map((x) => Marketing.fromJson(x))),
    register: List<Marketing>.from(json["Register"].map((x) => Marketing.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "welcome": List<dynamic>.from(welcome!.map((x) => x.toJson())),
    "Marketing": List<dynamic>.from(marketing!.map((x) => x.toJson())),
    "login": List<dynamic>.from(login!.map((x) => x.toJson())),
    "Register": List<dynamic>.from(register!.map((x) => x.toJson())),
  };
}

class Marketing {
  String? id;
  String? image;
  String? type;
  String? text;
  String? subtext;

  Marketing({
    this.id,
    this.image,
    this.type,
    this.text,
    this.subtext,
  });

  factory Marketing.fromJson(Map<String, dynamic> json) => Marketing(
    id: json["_id"],
    image: json["image"],
    type: json["type"],
    text: json["text"],
    subtext: json["subtext"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "image": image,
    "type": type,
    "text": text,
    "subtext": subtext,
  };
}
