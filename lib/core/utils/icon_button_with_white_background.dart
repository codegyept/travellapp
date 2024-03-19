import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class IconButtonWithWhiteBackground extends StatelessWidget {
  const IconButtonWithWhiteBackground({
    super.key,
    required this.width,
    required this.height,
    required this.onPressed,
    required this.icon,
  });

  final double width;
  final double height;
  final void Function()? onPressed;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.whiteAppColor,
        borderRadius: BorderRadius.circular(12.0.r),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}
