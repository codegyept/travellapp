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
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  color: AppColors.black,
                ),
          ),
          SizedBox(
            height: 7.h,
          ),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColors.grey,
                ),
          ),
        ],
      ),
    );
  }
}
