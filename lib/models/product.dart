// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class ListOfProducts {

String name;
String price;
String details;
List<String> images = [];

  ListOfProducts({
    required this.name,
    required this.price,
    required this.details,
    required this.images,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'price': price,
      'details': details,
      'images': images,
    };
  }

  factory ListOfProducts.fromMap(Map<String, dynamic> map) {
    return ListOfProducts(
      name: map['name'] as String,
      price: map['price'] as String,
      details: map['details'] as String,
      images: List<String>.from((map['images'] as List<String>),
      ));
  }

  String toJson() => json.encode(toMap());

  factory ListOfProducts.fromJson(String source) => ListOfProducts.fromMap(json.decode(source) as Map<String, dynamic>);

}
