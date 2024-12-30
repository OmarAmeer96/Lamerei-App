import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lamerei_app/core/theming/styles.dart';

class RatingItem extends StatelessWidget {
  const RatingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: Colors.amber[700],
          size: 16,
        ),
        SizedBox(width: 4),
        Text(
          "4.8 ratings",
          style: Styles.font14ProductPrice.copyWith(
            color: Colors.black,
            fontSize: 14.sp,
          ),
        ),
      ],
    );
  }
}
