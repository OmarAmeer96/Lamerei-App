import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lamerei_app/core/helpers/spacing.dart';
import 'package:lamerei_app/core/theming/colors_manager.dart';
import 'package:lamerei_app/core/widgets/custom_fading_widget.dart';
import 'package:lamerei_app/features/home/cubits/home_cubit/home_cubit.dart';
import 'package:lamerei_app/core/widgets/custom_home_item_loading_widget.dart';
import 'package:lamerei_app/features/home/presentation/layouts/success_desktop_layout.dart';
import 'package:lamerei_app/features/home/presentation/layouts/success_mobile_layout.dart';
import 'package:lamerei_app/features/home/presentation/layouts/success_tablet_layout.dart';

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
  return LayoutBuilder(
    builder: (context, constraints) {
      if (constraints.maxWidth >= 800) {
        // Desktop Layout
        return SuccessDesktopLayout(
          cubit: cubit,
          layoutType: 'd',
        );
      } else if (constraints.maxWidth >= 600) {
        // Tablet Layout
        return SuccessTabletLayout(
          cubit: cubit,
          layoutType: 't',
        );
      } else {
        // Mobile Layout
        return SuccessMobileLayout(
          cubit: cubit,
          layoutType: 'm',
        );
      }
    },
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
        Icon(
          Icons.error,
          size: 100,
          color: ColorsManager.primaryColor,
        ),
        verticalSpace(4),
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
