// To parse this JSON data, do
//
//     final addCartModel = addCartModelFromJson(jsonString);

import 'dart:convert';

AddCartModel addCartModelFromJson(String str) => AddCartModel.fromJson(json.decode(str));

String addCartModelToJson(AddCartModel data) => json.encode(data.toJson());

class AddCartModel {
    int status;
    Data data;
    String message;

    AddCartModel({
        required this.status,
        required this.data,
        required this.message,
    });

    factory AddCartModel.fromJson(Map<String, dynamic> json) => AddCartModel(
        status: json["status"],
        data: Data.fromJson(json["data"]),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
        "message": message,
    };
}

class Data {
    String userId;
    String productId;
    String qty;
    String isCart;
    String deletedAt;
    DateTime updatedAt;
    DateTime createdAt;
    int id;

    Data({
        required this.userId,
        required this.productId,
        required this.qty,
        required this.isCart,
        required this.deletedAt,
        required this.updatedAt,
        required this.createdAt,
        required this.id,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        userId: json["user_id"],
        productId: json["product_id"],
        qty: json["qty"],
        isCart: json["is_cart"],
        deletedAt: json["deleted_at"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "user_id": userId,
        "product_id": productId,
        "qty": qty,
        "is_cart": isCart,
        "deleted_at": deletedAt,
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
    };
}
