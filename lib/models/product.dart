// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ListOfProducts {

String name;
String imgUrl;
String price;
String details;
  ListOfProducts({
    required this.name,
    required this.imgUrl,
    required this.price,
    required this.details,
  });


  ListOfProducts copyWith({
    String? name,
    String? imgUrl,
    String? price,
    String? details,
  }) {
    return ListOfProducts(
      name: name ?? this.name,
      imgUrl: imgUrl ?? this.imgUrl,
      price: price ?? this.price,
      details: details ?? this.details,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'imgUrl': imgUrl,
      'price': price,
      'details': details,
    };
  }

  factory ListOfProducts.fromMap(Map<String, dynamic> map) {
    return ListOfProducts(
      name: map['name'] as String,
      imgUrl: map['imgUrl'] as String,
      price: map['price'] as String,
      details: map['details'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ListOfProducts.fromJson(String source) => ListOfProducts.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ListOfProducts(name: $name, imgUrl: $imgUrl, price: $price, details: $details)';
  }

  @override
  bool operator ==(covariant ListOfProducts other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.imgUrl == imgUrl &&
      other.price == price &&
      other.details == details;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      imgUrl.hashCode ^
      price.hashCode ^
      details.hashCode;
  }
}
