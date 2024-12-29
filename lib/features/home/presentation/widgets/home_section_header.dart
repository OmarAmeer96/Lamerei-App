import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamerei_app/core/helpers/assets.dart';
import 'package:lamerei_app/core/helpers/spacing.dart';
import 'package:lamerei_app/features/home/presentation/widgets/animated_selection_widget.dart';

class HomeSectionHeader extends StatelessWidget {
  const HomeSectionHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(SvgAssets.homeDropDownIcon),
            ),
          ],
        ),
        verticalSpace(4),
        Row(
          children: [
            AnimatedSelectionWidget(),
          ],
        ),
        verticalSpace(20),
      ],
    );
  }
}
