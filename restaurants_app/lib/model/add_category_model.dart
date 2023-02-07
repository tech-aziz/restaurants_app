class AddCategory {
  int? id;
  String? categoryName;
  String? shortName;
  AddCategory({this.id, required this.categoryName, required this.shortName});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['id'] = categoryName;
    data['id'] = shortName;
    return data;
  }

  AddCategory.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryName = json['categoryName'];
    shortName = json['shortName'];
  }
}
