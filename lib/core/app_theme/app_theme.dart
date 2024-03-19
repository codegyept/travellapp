import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

ThemeData apptheme() {
  return ThemeData(
    primaryColor: AppColors.textAndBackgroundColorButton,
    scaffoldBackgroundColor: AppColors.backgroundWhite,
    textTheme: TextTheme(

      headlineLarge: TextStyle(
        fontFamily: 'Switzer',
        fontSize: 32.sp,
        color: AppColors.white,
        fontWeight: FontWeight.bold,
      ),

      displayLarge: TextStyle(
        fontFamily: 'Switzer',
        fontSize: 24.sp,
        color: AppColors.white,
        fontWeight: FontWeight.bold,
      ),
labelMedium:TextStyle(
  fontFamily: 'Switzer',
  fontSize: 18.sp,
  color: AppColors.black,
  fontWeight: FontWeight.bold,
),
//white bold large
      displayMedium: TextStyle(
        fontFamily: 'Switzer',
        fontSize: 16.sp,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
titleLarge: TextStyle(
  fontFamily: 'Switzer',
  fontSize: 16.sp,
  color: AppColors.backgroundWhite,
  fontWeight: FontWeight.bold,
),
//small white
      bodyLarge: TextStyle(
        fontFamily: 'Switzer',
        fontSize: 14.sp,
        color: AppColors.black,
      ),
//large black
      bodyMedium: TextStyle(
        fontFamily: 'Switzer',
        fontSize: 14.sp,
        color: AppColors.black,
        fontWeight: FontWeight.bold,
      ),
      //white bold medium
      displaySmall: TextStyle(
        fontFamily: 'Switzer',
        fontSize: 12.sp,
        color: AppColors.white,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Switzer',
        fontSize: 12.sp,
        color: AppColors.textAndBackgroundColorButton,
      ),
      //text in bottom
      titleSmall: TextStyle(
        fontFamily: 'Switzer',
        fontSize: 12.sp,
        color: AppColors.black,
      ),

      labelSmall: TextStyle(
        fontFamily: 'Switzer',
        fontSize: 12.sp,
        color: AppColors.greySearchText,
        fontWeight: FontWeight.w400,
      ),
//medium black

      headlineSmall: TextStyle(
        fontFamily: 'Switzer',
        fontSize: 10.sp,
        color: AppColors.grey,
      ),
//small grey

      bodySmall: TextStyle(
        fontFamily: 'Switzer',
        fontSize: 10.sp,
        color: AppColors.whiteAppColor,
      ),
    ),
  );
}
