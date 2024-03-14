import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';
import 'package:rehlatyuae/core/utils/primary_text_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 30.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.forgotPassword,
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Text(
                  AppStrings.enterYourInformation,
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: AppColors.greySearchText,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          PrimaryTextField(
            controller: TextEditingController(),
            hint: AppStrings.email,
            inputType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: 100.h,
          ),
          Text(
            AppStrings.tryAnotherWay,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14.sp,
              color: AppColors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w).copyWith(
              top: 30.h,
            ),
            child: CustomActionButton(
              text: AppStrings.send,
              borderRadius: BorderRadius.circular(16.r),
              backGroundColor: AppColors.textAndBackgroundColorButton,
              onTap: () {
                context.push('/verificationScreen');
              },
              style: const TextStyle(color: AppColors.white),
              width: double.infinity,
              height: 50.h,
            ),
          ),
        ],
      ),
    );
  }
}
