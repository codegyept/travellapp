import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
ThemeData apptheme() {
return ThemeData(
primaryColor: AppColors.textAndBackgroundColorButton,
scaffoldBackgroundColor: AppColors.backgroundWhite,
textTheme: TextTheme(
displayLarge: TextStyle(
fontFamily: 'Switzer',
fontSize: 24.sp,
color: AppColors.white,
fontWeight: FontWeight.bold),
//white bold large
displayMedium: TextStyle(
fontFamily: 'Switzer',
fontSize: 16.sp,
color: AppColors.white,
fontWeight: FontWeight.bold),
//white bold medium
displaySmall: TextStyle(
fontFamily: 'Switzer', fontSize: 12.sp, color: AppColors.white),
//small white
bodyLarge: TextStyle(
fontFamily: 'Switzer', fontSize: 14.sp, color: AppColors.black),
//large black
bodyMedium: TextStyle(
fontFamily: 'Switzer',
fontSize: 14.sp,
color: AppColors.black,
fontWeight: FontWeight.bold),
//medium black
headlineSmall: TextStyle(
fontFamily: 'Switzer',
fontSize: 10.sp,
color: AppColors.grey,
),
//small grey
headlineLarge: TextStyle(
fontFamily: 'Switzer',
fontSize: 32.sp,
color: AppColors.white,
fontWeight: FontWeight.bold), //text in bottom
),
);
}