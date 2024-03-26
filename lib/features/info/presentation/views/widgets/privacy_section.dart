import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class PrivacySection extends StatelessWidget {
  final String title;
  final String content;

  const PrivacySection({
    required this.title,
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
            margin: EdgeInsets.symmetric(vertical: 20.w),
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.textAndBackgroundColorButton,
              borderRadius: BorderRadius.circular(9.r),
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.displayMedium,
            ),
          ),
          Text(
            content,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColors.grey,
                ),
          ),
        ],
      ),
    );
  }
}
