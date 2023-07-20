import 'dart:convert';

class Category {
  String name;
  String imgUrl;
  Category({
    required this.name,
    required this.imgUrl,
  });

  Category copyWith({
    String? name,
    String? imgUrl,
  }) {
    return Category(
      name: name ?? this.name,
      imgUrl: imgUrl ?? this.imgUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'imgUrl': imgUrl,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      name: map['name'] as String,
      imgUrl: map['imgUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Category.fromJson(String source) => Category.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Category(name: $name, imgUrl: $imgUrl)';

  @override
  bool operator ==(covariant Category other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.imgUrl == imgUrl;
  }

  @override
  int get hashCode => name.hashCode ^ imgUrl.hashCode;
}
