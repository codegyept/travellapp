import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextInputType? keyboardType;
  final String hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  const CustomTextField(
      {super.key,
      this.keyboardType = TextInputType.text,
      required this.hintText,
      this.prefixIcon,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Opacity(
      opacity: 0.5,
      child: TextFormField(
        keyboardType: keyboardType,
        style: TextStyle(
            fontFamily: "Switzer", color: Colors.grey, fontSize: 14.sp),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 12.sp),
            constraints: BoxConstraints(
              maxHeight: height * 0.065.h,
              maxWidth: width,
            ),
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(
                fontFamily: "Switzer", color: Colors.grey, fontSize: 14.sp),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0.r),
                borderSide: BorderSide(
                    color: AppColors.textAndBackgroundColorButton,
                    width: 1.0.w)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0.r),
                borderSide: BorderSide(
                  color: AppColors.textAndBackgroundColorButton,
                  width: 1.0.w,
                ))),
      ),
    );
  }
}
