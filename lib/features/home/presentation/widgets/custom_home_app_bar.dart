import 'package:flutter/material.dart';
import 'package:lamerei_app/core/helpers/spacing.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 10, right: 2),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back_ios),
                // SvgPicture.asset(SvgAssets.homeBackIcon),
              ),
              Container(
                // height: 46,
                padding: const EdgeInsets.all(8),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "استلام من",
                          // style: Styles.font11AppBarBold,
                        ),
                        // Row(
                        //   children: [
                        //     SvgPicture.asset(
                        //       SvgAssets.homeLocationIcon,
                        //     ),
                        //     horizontalSpace(4),
                        //     Text(
                        //       "فرع مول العرب",
                        //       style: Styles.font12AppBarSemiBold,
                        //     ),
                        //     horizontalSpace(16),
                        //     SvgPicture.asset(
                        //       SvgAssets.homeDropDownIcon,
                        //       width: 16,
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Container(
                  // width: 42,
                  // height: 42,
                  padding: const EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  // child: Center(
                  //   child: SvgPicture.asset(SvgAssets.homeSearchIcon),
                  // ),
                ),
              ),
            ],
          ),
        ),
        verticalSpace(20),
        Divider(
          height: 0,
          color: Color(0xffd4dcf1),
          thickness: 1.5,
        ),
      ],
    );
  }
}
