import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lamerei_app/core/helpers/assets.dart';
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
          padding: const EdgeInsets.only(top: 40, left: 2, right: 10),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(3.14),
                  child: SvgPicture.asset(
                    SvgAssets.homeBackIcon,
                  ),
                ),
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
                          "Pickup from",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              SvgAssets.homeLocationIcon,
                            ),
                            horizontalSpace(4),
                            Text(
                              "Mall of Arabia Branch",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                            horizontalSpace(16),
                            SvgPicture.asset(
                              SvgAssets.homeDropDownIcon,
                              width: 16,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () {},
                splashColor: Colors.grey,
                child: Container(
                  width: 42,
                  height: 42,
                  padding: const EdgeInsets.all(8),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: SvgPicture.asset(SvgAssets.homeSearchIcon),
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
