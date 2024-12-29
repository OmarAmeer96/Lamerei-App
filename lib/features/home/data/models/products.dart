import 'package:json_annotation/json_annotation.dart';

import 'product.dart';

part 'products.g.dart';

@JsonSerializable()
class Products {
  List<Product>? products;

  Products({this.products});

  factory Products.fromJson(Map<String, dynamic> json) {
    return _$ProductsFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductsToJson(this);

  Products copyWith({
    List<Product>? products,
  }) {
    return Products(
      products: products ?? this.products,
    );
  }
}
