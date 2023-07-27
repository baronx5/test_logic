// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

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


  ListOfProducts copyWith({
    String? name,
    String? price,
    String? details,
    List<String>? images,
  }) {
    return ListOfProducts(
      name: name ?? this.name,
      price: price ?? this.price,
      details: details ?? this.details,
      images: images ?? this.images,
    );
  }

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

  @override
  String toString() {
    return 'ListOfProducts(name: $name, price: $price, details: $details, images: $images)';
  }

  @override
  bool operator ==(covariant ListOfProducts other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.price == price &&
      other.details == details &&
      listEquals(other.images, images);
  }

  @override
  int get hashCode {
    return name.hashCode ^
      price.hashCode ^
      details.hashCode ^
      images.hashCode;
  }
}
