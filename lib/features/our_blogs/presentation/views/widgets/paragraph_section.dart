import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class ParagraphSection extends StatelessWidget {
  final String title;
  final String subTitle;

  const ParagraphSection({
    required this.title,
    required this.subTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
              fontWeight: FontWeight.w700,
              height: 1.25,
            ),
          ),
          SizedBox(
            height: 7.h,
          ),
          Text(
            subTitle,
            style: TextStyle(
              color: AppColors.grey,
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
