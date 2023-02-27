// To parse this JSON data, do
//
//     final addCategoryModel = addCategoryModelFromJson(jsonString);

import 'dart:convert';

AddCategoryModel addCategoryModelFromJson(String str) => AddCategoryModel.fromJson(json.decode(str));

String addCategoryModelToJson(AddCategoryModel data) => json.encode(data.toJson());

class AddCategoryModel {
    AddCategoryModel({
        this.categoryId,
        this.categoryName,
        this.shortName,
        this.updatedBy,
    });

    int? categoryId;
    String? categoryName;
    String? shortName;
    String? updatedBy;

    factory AddCategoryModel.fromJson(Map<String, dynamic> json) => AddCategoryModel(
        categoryId: json["category_id"],
        categoryName: json["category_name"],
        shortName: json["short_name"],
        updatedBy: json["updated_by"],
    );

    Map<String, dynamic> toJson() => {
        "category_id": categoryId,
        "category_name": categoryName,
        "short_name": shortName,
        "updated_by": updatedBy,
    };
}
