import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';
import 'package:rehlatyuae/core/utils/custom_circle_avatar.dart';

class CustomBottomSheet extends StatelessWidget {
  final String title;
  final String? labelButton;
  final String? avatarText;
  final Widget contentSheet;
  final Color avatarColor;
  final bool hasButton;
  final bool isPaymentSheet;

  const CustomBottomSheet({
    required this.title,
    required this.contentSheet,
    this.labelButton,
    this.avatarText,
    this.avatarColor = AppColors.textAndBackgroundColorButton,
    this.hasButton = true,
    this.isPaymentSheet = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return isPaymentSheet
        ? SingleChildScrollView(
            child: body(context),
          )
        : body(context);
  }

  Widget body(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 30.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop(context);
                    },
                    icon: const Icon(Icons.clear),
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      height: 1.42,
                    ),
                  ),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.clear,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Stack(
                  clipBehavior: Clip.antiAlias,
                  children: [
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 15.w).copyWith(top: 30.h),
                      padding: EdgeInsets.symmetric(horizontal: 20.w).copyWith(
                        top: 90.h,
                        bottom: 10.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.backgroundWhite,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: contentSheet,
                    ),
                    Positioned(
                      bottom: -10.h,
                      left: 50.w,
                      right: 50.w,
                      child: DottedLine(
                        dashLength: 25.w,
                        lineThickness: 25.w,
                        alignment: WrapAlignment.spaceBetween,
                        dashColor: AppColors.grey.shade100,
                        dashRadius: 100.sp,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: -15.h,
                  right: 0,
                  left: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomCircleAvatar(
                        iconData: avatarText == null ? Icons.check : null,
                        avatarText: avatarText,
                        radius: 50.h,
                        borderWidth: 10.h,
                        backgroundColor: avatarColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        if (hasButton && labelButton != null)
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            child: CustomActionButton(
              text: labelButton!,
              borderRadius: BorderRadius.circular(16.r),
              backGroundColor: AppColors.textAndBackgroundColorButton,
              onTap: () {
                context.pop();
              },
              width: 250.w,
              height: 50.h,
            ),
          ),
      ],
    );
  }
}
