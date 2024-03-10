import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final double size;
  final double? iconSize;
  final double radius;
  final void Function()? onPressed;

  const CustomIconButton({
    required this.icon,
    this.iconColor = AppColors.black,
    this.backgroundColor = AppColors.white,
    this.size = 50,
    this.radius = 10,
    this.iconSize,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius.r),
        ),
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            color: iconColor,
            size: iconSize,
          ),
        ));
  }
}
