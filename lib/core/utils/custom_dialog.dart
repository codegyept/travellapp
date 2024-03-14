import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';
import 'package:rehlatyuae/core/utils/custom_circle_avatar.dart';

class CustomDialog extends StatelessWidget {
  final String title;
  final String subtitle;
  final String labelText;
  final Color color;

  const CustomDialog({
    required this.title,
    required this.subtitle,
    required this.labelText,
    this.color = AppColors.textAndBackgroundColorButton,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.all(40),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      backgroundColor: AppColors.whiteAppColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20.w).copyWith(
                  top: 70.h,
                  bottom: 20.h,
                ),
                child: Column(
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: AppColors.grey,
                        fontWeight: FontWeight.w400,
                        height: 1.3,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 30.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        height: 1.32,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 40.h, bottom: 10.h),
                      child: CustomActionButton(
                        text: labelText,
                        borderRadius: BorderRadius.circular(16.r),
                        backGroundColor: color,
                        onTap: () {
                          context.pop();
                        },
                        style: const TextStyle(color: AppColors.white),
                        width: double.infinity,
                        height: 50.h,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -60.h,
                right: 0,
                left: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCircleAvatar(
                      iconData: Icons.check,
                      radius: 45.h,
                      borderWidth: 10.h,
                      backgroundColor: color,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
