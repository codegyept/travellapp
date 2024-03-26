import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class CustomCircleAvatar extends StatelessWidget {
  final double radius;
  final double borderWidth;
  final double iconSize;
  final String? avatarText;
  final Color backgroundColor;
  final ImageProvider<Object>? backgroundImage;
  final IconData? iconData;

  const CustomCircleAvatar({
    this.radius = 90,
    this.borderWidth = 0,
    this.iconSize = 50,
    this.backgroundColor = AppColors.textAndBackgroundColorButton,
    this.backgroundImage,
    this.iconData,
    this.avatarText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius + borderWidth,
      backgroundColor: backgroundColor.withOpacity(0.07),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: backgroundColor,
        backgroundImage: backgroundImage,
        child: iconData != null
            ? Icon(
                iconData,
                color: AppColors.white,
                size: iconSize,
              )
            : avatarText != null
                ? Text(
                    avatarText!,
                    style: TextStyle(
                      fontSize: 30.sp,
                      color: AppColors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                : null,
      ),
    );
  }
}
