import 'package:flutter/material.dart';
import 'package:lamerei_app/core/widgets/loading_header_item.dart';
import 'package:lamerei_app/core/widgets/loading_item.dart';

class CustomHomeItemLoadingWidget extends StatelessWidget {
  const CustomHomeItemLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          LoadingHeaderItem(),
          LoadingItem(),
          LoadingItem(),
          LoadingItem(),
          LoadingItem(),
          LoadingItem(),
        ],
      ),
    );
  }
}
