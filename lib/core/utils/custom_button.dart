import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    required this.text,
    required this.borderRadius,
    required this.backGroundColor,
    required this.onTap,
    required this.width,
    required this.height,
    this.style,
  });

  final String text;
  final BorderRadius borderRadius;
  final Color backGroundColor;
  final GestureTapCallback onTap;
  final TextStyle? style;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: backGroundColor,
        ),
        child: Center(
          child: Text(
            text,
            style: style ??
                TextStyle(
                  color: AppColors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
      ),
    );
  }
}
