import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final String iconPath;
  final List<Widget> trailing;

  const DrawerItem({
    required this.title,
    required this.iconPath,
    required this.trailing,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(iconPath),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.backgroundColorExpansionAndText,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Row(
                children: trailing,
              )
            ],
          ),
        ),
        const Divider(
          thickness: 1,
        )
      ],
    );
  }
}
