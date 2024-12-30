import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lamerei_app/core/helpers/spacing.dart';
import 'package:lamerei_app/core/theming/styles.dart';
import 'package:lamerei_app/features/home/data/models/product.dart';
import 'package:lamerei_app/features/home/presentation/widgets/product_item_image.dart';
import 'package:lamerei_app/features/home/presentation/widgets/rating_item.dart';

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
        crossAxisAlignment: CrossAxisAlignment.center, // Center alignment
        children: [
          Expanded(
            flex: 5,
            child: ProductItemImage(product: product),
          ),
          horizontalSpace(13),
          Expanded(
            flex: 8,
            child: Center(
              // Centering the details vertically
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                              style: Styles.font16ProductTitle.copyWith(
                                fontWeight: FontWeight.w900,
                                letterSpacing: 1.5,
                              ),
                            ),
                            verticalSpace(4),
                            Text(
                              product.title!,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Styles.font16ProductTitle,
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
                        style: Styles.font14ProductPrice,
                      ),
                    ],
                  ),
                  verticalSpace(12),
                  RatingItem(),
                  verticalSpace(12),
                  Row(
                    spacing: 8.sp,
                    children: [
                      Text(
                        'Size',
                        style: Styles.font11ProductSize.copyWith(
                          fontWeight: FontWeight.w800,
                          fontSize: 14.sp,
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          'S',
                          style: Styles.font11ProductSize.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          'M',
                          style: Styles.font11ProductSize.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          'L',
                          style: Styles.font11ProductSize.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
