import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/why_choose_us_item.dart';

class WhyChooseUsSection extends StatelessWidget {
  const WhyChooseUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppStrings.whyChooseUsTitle,
          style: TextStyle(
            color: AppColors.blackColorForTitleTexts,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            WhyChooseUSItem(
              text: AppStrings.whyChooseUsFastBooking,
              style: TextStyle(
                color: AppColors.blackColorForTitleTexts,
                fontSize: 15.0.sp,
              ),
              descriptionText: AppStrings.whyChooseUsFastBookingDescription,
              descriptionTextStyle: TextStyle(
                fontSize: 12.0.sp,
                color: AppColors.blackColorForTitleTexts,
              ),
              child: Image.asset(AppStrings.whyChooseUsFastBookingImage),
            ),
            SizedBox(
              width: 20.0.w,
            ),
            WhyChooseUSItem(
              text: AppStrings.whyChooseUsEasyToShop,
              style: TextStyle(
                color: AppColors.blackColorForTitleTexts,
                fontSize: 15.0.sp,
              ),
              descriptionText: AppStrings.whyChooseUsEasyToShopDescription,
              descriptionTextStyle: TextStyle(
                fontSize: 12.0.sp,
                color: AppColors.blackColorForTitleTexts,
              ),
              child: Image.asset(AppStrings.whyChooseUsEasyToShopImage),
            ),
          ],
        ),
        SizedBox(
          height: 10.0.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            WhyChooseUSItem(
              text: AppStrings.whyChooseUs247Support,
              style: TextStyle(
                color: AppColors.blackColorForTitleTexts,
                fontSize: 15.0.sp,
              ),
              descriptionText: AppStrings.whyChooseUs247SupportDescription,
              descriptionTextStyle: TextStyle(
                fontSize: 12.0.sp,
                color: AppColors.blackColorForTitleTexts,
              ),
              child: Image.asset(AppStrings.whyChooseUs247SupportImage),
            ),
            SizedBox(
              width: 20.0.w,
            ),
            WhyChooseUSItem(
              text: AppStrings.whyChooseUsUniqueexPerience,
              style: TextStyle(
                color: AppColors.blackColorForTitleTexts,
                fontSize: 15.0.sp,
              ),
              descriptionText: AppStrings.whyChooseUsUniqueexPerienceDescription,
              descriptionTextStyle: TextStyle(
                fontSize: 12.0.sp,
                color: AppColors.blackColorForTitleTexts,
              ),
              child: Image.asset(AppStrings.whyChooseUsUniqueexPerienceImage),
            ),
          ],
        ),
      ],
    );
  }
}
