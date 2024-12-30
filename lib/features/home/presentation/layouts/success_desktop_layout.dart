import 'package:flutter/material.dart';
import 'package:lamerei_app/core/helpers/assets.dart';
import 'package:lamerei_app/core/helpers/spacing.dart';
import 'package:lamerei_app/core/widgets/custom_fading_widget.dart';
import 'package:lamerei_app/core/widgets/loading_item.dart';
import 'package:lamerei_app/features/home/cubits/home_cubit/home_cubit.dart';
import 'package:lamerei_app/features/home/presentation/widgets/home_section_header.dart';
import 'package:lamerei_app/features/home/presentation/widgets/product_item.dart';
import 'package:lottie/lottie.dart';

class SuccessDesktopLayout extends StatelessWidget {
  const SuccessDesktopLayout({
    super.key,
    required this.cubit,
    required this.layoutType,
  });

  final HomeCubit cubit;
  final String layoutType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeSectionHeader(title: 'All Products'),
        verticalSpace(20),
        if (cubit.allProducts.isNotEmpty)
          ...cubit.allProducts.map(
            (product) => ProductItem(
              product: product,
              isLastItem: product == cubit.allProducts.last,
              layoutType: layoutType,
            ),
          ),
        if (cubit.allProducts.isEmpty)
          Align(
            alignment: Alignment.center,
            child: Lottie.asset(
              JsonAssets.noProductsFound,
            ),
          ),
        if (cubit.isLoadingMore)
          const CustomFadingWidget(
            child: Padding(
              padding: EdgeInsets.only(top: 16),
              child: LoadingItem(),
            ),
          ),
      ],
    );
  }
}
