import 'package:flutter/material.dart';
import 'package:lamerei_app/features/home/data/models/product.dart';
import 'package:lamerei_app/features/home/presentation/widgets/mobile_product_item_detals.dart';
import 'package:lamerei_app/features/home/presentation/widgets/tablet_product_item_details.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.product,
    required this.isLastItem,
    required this.layoutType,
  });

  final Product product;
  final bool isLastItem;
  final String layoutType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: isLastItem ? 20 : 30),
      child: layoutType == 'm'
          ? MobileProductItemDetails(
              product: product,
              layoutType: layoutType,
            )
          : TabletProductItemDetails(
              product: product,
              layoutType: layoutType,
            ),
    );
  }
}
