import 'dart:convert';

Customer customerFromJson(String str) => Customer.fromJson(json.decode(str));

class Customer {
  Customer({
    this.customerName,
    this.email,
  });

  String? customerName;
  String? email;

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        customerName: json["customerName"],
        email: json["email"],
      );
}
