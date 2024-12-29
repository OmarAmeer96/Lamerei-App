import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lamerei_app/core/helpers/assets.dart';
import 'package:lamerei_app/core/helpers/spacing.dart';
import 'package:lamerei_app/core/theming/colors_manager.dart';
import 'package:lamerei_app/core/widgets/custom_fading_widget.dart';
import 'package:lamerei_app/core/widgets/loading_item.dart';
import 'package:lamerei_app/features/home/cubits/home_cubit/home_cubit.dart';
import 'package:lamerei_app/core/widgets/custom_home_item_loading_widget.dart';
import 'package:lamerei_app/features/home/presentation/widgets/product_item.dart';
import 'package:lottie/lottie.dart';

Widget setupsLoadingState() {
  return const CustomFadingWidget(
    child: Padding(
      padding: EdgeInsets.only(top: 16),
      child: CustomHomeItemLoadingWidget(),
    ),
  );
}

Widget setupSuccessState(
  BuildContext context,
) {
  final cubit = context.read<HomeCubit>();
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if (cubit.allProducts.isNotEmpty)
        ...cubit.allProducts.map(
          (product) => ProductItem(
            product: product,
            isLastItem: product == cubit.allProducts.last,
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

Widget setupErrorState(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).size.height * 0.3,
      left: 16,
      right: 16,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Something went wrong, please try again!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: ColorsManager.primaryColor,
          ),
        ),
        verticalSpace(16),
        ElevatedButton(
          onPressed: () {
            context.read<HomeCubit>().getProducts();
          },
          child: Text("Retry"),
        ),
      ],
    ),
  );
}
