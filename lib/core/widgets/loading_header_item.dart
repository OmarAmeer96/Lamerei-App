import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class LoadingHeaderItem extends StatelessWidget {
  const LoadingHeaderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Column(
        children: [
          Row(
            children: [
              Shimmer.fromColors(
                baseColor: Colors.grey[500]!,
                highlightColor: Colors.grey[200]!,
                child: Container(
                  width: 140.w,
                  height: 25.h,
                  color: Colors.grey[500],
                ),
              ),
              SizedBox(width: 10.w),
              Shimmer.fromColors(
                baseColor: Colors.grey[500]!,
                highlightColor: Colors.grey[200]!,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[500],
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  width: 25.w,
                  height: 25.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: List.generate(4, (index) {
              return Row(
                children: [
                  Shimmer.fromColors(
                    baseColor: Colors.grey[500]!,
                    highlightColor: Colors.grey[200]!,
                    child: Container(
                      width: 50.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),
                  if (index < 3) SizedBox(width: 13.w),
                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}
