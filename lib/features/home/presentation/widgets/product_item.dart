import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lamerei_app/core/helpers/spacing.dart';
import 'package:lamerei_app/core/theming/styles.dart';
import 'package:lamerei_app/features/home/data/models/product.dart';
import 'package:lamerei_app/features/home/presentation/widgets/product_item_image.dart';
import 'package:lamerei_app/features/home/presentation/widgets/product_item_points_widget.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.product,
    required this.isLastItem,
  });

  final Product product;
  final bool isLastItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: isLastItem ? 20 : 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: ProductItemImage(product: product),
          ),
          horizontalSpace(13),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(12),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "LAMEREI",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Styles.font17ProductTitle.copyWith(
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1.5,
                            ),
                          ),
                          verticalSpace(4),
                          Text(
                            product.title!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: Styles.font17ProductTitle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                verticalSpace(6),
                Row(
                  children: [
                    Text(
                      "\$${product.price}",
                      style: Styles.font16ProductPrice,
                    ),
                  ],
                ),
                verticalSpace(12),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber[700],
                      size: 16,
                    ),
                    SizedBox(width: 4),
                    Text(
                      "4.8 ratings",
                      style: Styles.font16ProductPrice.copyWith(
                        color: Colors.black,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
