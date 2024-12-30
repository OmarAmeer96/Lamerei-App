import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lamerei_app/core/theming/styles.dart';

class ProductAvailableSizes extends StatelessWidget {
  const ProductAvailableSizes({
    super.key,
    required this.layoutType,
  });

  final String layoutType;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.sp,
      children: [
        Text(
          'Size',
          style: Styles.font11ProductSize.copyWith(
            fontWeight: FontWeight.w800,
            fontSize: layoutType == 'm' ? 14.sp : 8.sp,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xB2425486),
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            'S',
            style: Styles.font11ProductSize.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: layoutType == 'm' ? 11.sp : 6.sp,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xB2425486),
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            'M',
            style: Styles.font11ProductSize.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: layoutType == 'm' ? 11.sp : 6.sp,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xB2425486),
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            'L',
            style: Styles.font11ProductSize.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: layoutType == 'm' ? 11.sp : 6.sp,
            ),
          ),
        ),
      ],
    );
  }
}
