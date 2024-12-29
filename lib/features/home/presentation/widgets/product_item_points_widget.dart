import 'package:flutter/material.dart';
import 'package:lamerei_app/core/helpers/spacing.dart';

class ProductItemPointsWidget extends StatelessWidget {
  const ProductItemPointsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Color(0x2619D558),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 2,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // SvgPicture.asset(SvgAssets.homePointsIcon, width: 16),
          horizontalSpace(3),
          Column(
            children: [
              verticalSpace(2),
              Text(
                "50 نقطة",
                // style: Styles.font13ProductItemweight,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
