// To parse this JSON data, do
//
//     final customersModel = customersModelFromJson(jsonString);

import 'dart:convert';

CustomersModel customersModelFromJson(String str) => CustomersModel.fromJson(json.decode(str));

String customersModelToJson(CustomersModel data) => json.encode(data.toJson());

class CustomersModel {
    CustomersModel({
        this.id,
        this.name,
        this.mobile,
        this.email,
        this.address,
    });

    int? id;
    String? name;
    String? mobile;
    String? email;
    String? address;

    factory CustomersModel.fromJson(Map<String, dynamic> json) => CustomersModel(
        id: json["id"],
        name: json["name"],
        mobile: json["mobile"],
        email: json["email"],
        address: json["address"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "mobile": mobile,
        "email": email,
        "address": address,
    };
}
