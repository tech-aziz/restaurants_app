class Customer {
  int ?id;
  String name;

  Customer({this.id, required this.name});

  Map<String, dynamic> toMap() {
    return {
      'id': id, 
      'name': name
      };
  }

  factory Customer.fromMap(Map<String, dynamic> json) =>
      Customer(
        id: json['id'], 
        name: json['name']
        );   
}

