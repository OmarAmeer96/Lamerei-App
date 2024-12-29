import 'package:json_annotation/json_annotation.dart';

import 'category.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  int? id;
  String? title;
  int? price;
  String? description;
  List<String>? images;
  DateTime? creationAt;
  DateTime? updatedAt;
  Category? category;

  Product({
    this.id,
    this.title,
    this.price,
    this.description,
    this.images,
    this.creationAt,
    this.updatedAt,
    this.category,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);

  Product copyWith({
    int? id,
    String? title,
    int? price,
    String? description,
    List<String>? images,
    DateTime? creationAt,
    DateTime? updatedAt,
    Category? category,
  }) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      description: description ?? this.description,
      images: images ?? this.images,
      creationAt: creationAt ?? this.creationAt,
      updatedAt: updatedAt ?? this.updatedAt,
      category: category ?? this.category,
    );
  }
}
