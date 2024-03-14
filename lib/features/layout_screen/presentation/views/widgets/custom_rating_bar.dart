import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class CustomRatingBar extends StatelessWidget {
  final int starCount;
  final int ratingCount;
  final double progressPercent;

  const CustomRatingBar({
    required this.starCount,
    required this.ratingCount,
    required this.progressPercent,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: LinearPercentIndicator(
        leading: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(
                  starCount,
                  (index) => Icon(
                    Icons.star_border_rounded,
                    size: 18.h,
                    color: AppColors.textAndBackgroundColorButton,
                  ),
                ),
              ),
              Text(
                '$starCount/5',
                style: const TextStyle(
                  color: AppColors.black,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        trailing: Text(
          '$ratingCount',
          style: const TextStyle(
            color: AppColors.black,
            fontSize: 12,
          ),
        ),
        barRadius: Radius.circular(10.r),
        lineHeight: 6.h,
        percent: progressPercent,
        width: 150.w,
        backgroundColor: AppColors.grey,
        progressColor: AppColors.textAndBackgroundColorButton,
      ),
    );
  }
}
