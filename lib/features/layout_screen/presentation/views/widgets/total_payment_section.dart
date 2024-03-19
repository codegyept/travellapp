import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';
import 'package:rehlatyuae/core/utils/default_text_button.dart';

class TotalPaymentSection extends StatelessWidget {
  final String total;
  final String subtitle;
  final String buttonLabel;
  final void Function() onButtonTap;
  final void Function()? onSubtitleTap;

  const TotalPaymentSection({
    required this.total,
    required this.subtitle,
    required this.buttonLabel,
    required this.onButtonTap,
    this.onSubtitleTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      margin: EdgeInsets.only(top: 20.h),
      color: AppColors.backgroundWhite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "  $total",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  height: 1.25,
                ),
              ),
              DefaultTextButton(
                onPressed: onSubtitleTap,
                text: subtitle,
              ),
            ],
          ),
          CustomActionButton(
            text: buttonLabel,
            borderRadius: BorderRadius.circular(16.sp),
            backGroundColor: AppColors.textAndBackgroundColorButton,
            onTap: onButtonTap,
            width: buttonLabel == 'Payment' ? 110.w : 140.w,
            height: 50.h,
          ),
        ],
      ),
    );
  }
}
