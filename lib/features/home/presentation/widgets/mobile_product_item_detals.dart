import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lamerei_app/core/helpers/spacing.dart';
import 'package:lamerei_app/core/theming/styles.dart';
import 'package:lamerei_app/features/home/data/models/product.dart';
import 'package:lamerei_app/features/home/presentation/widgets/product_available_sizes.dart';
import 'package:lamerei_app/features/home/presentation/widgets/product_item_image.dart';
import 'package:lamerei_app/features/home/presentation/widgets/rating_item.dart';

class MobileProductItemDetails extends StatelessWidget {
  const MobileProductItemDetails({
    super.key,
    required this.product,
    required this.layoutType,
  });

  final Product product;
  final String layoutType;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 5,
          child: ProductItemImage(
            product: product,
            layoutType: layoutType,
          ),
        ),
        horizontalSpace(13),
        Expanded(
          flex: 8,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
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
                              fontSize: layoutType == 'm' ? 16.sp : 10.sp,
                            ),
                          ),
                          verticalSpace(4),
                          Text(
                            product.title!,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Styles.font16ProductTitle.copyWith(
                              fontSize: layoutType == 'm' ? 16.sp : 10.sp,
                            ),
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
                      style: Styles.font14ProductPrice.copyWith(
                        fontSize: layoutType == 'm' ? 14.sp : 8.sp,
                      ),
                    ),
                  ],
                ),
                verticalSpace(12),
                RatingItem(
                  layoutType: layoutType,
                ),
                verticalSpace(12),
                ProductAvailableSizes(
                  layoutType: layoutType,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
