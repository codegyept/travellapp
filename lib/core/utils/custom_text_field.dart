import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType? keyboardType;
  final bool isObsureText;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextField({
    super.key,
    this.keyboardType = TextInputType.text,
    this.isObsureText = true,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      obscureText: isObsureText,
      style:
          TextStyle(fontFamily: "Switzer", color: Colors.grey, fontSize: 14.sp),
      decoration: InputDecoration(
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 22.h),
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
            fontFamily: "Switzer", color: Colors.grey, fontSize: 14.sp),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(
            color: AppColors.textAndBackgroundColorButton,
          ),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: const BorderSide(
              color: AppColors.textAndBackgroundColorButton,
            )),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide(
            color: AppColors.textAndBackgroundColorButton,
            width: 1.0.w,
          ),
        ),
      ),
    );
  }
}
