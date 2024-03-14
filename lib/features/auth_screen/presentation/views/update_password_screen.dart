import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';
import 'package:rehlatyuae/core/utils/custom_dialog.dart';
import 'package:rehlatyuae/core/utils/primary_text_field.dart';

class UpdatePasswordScreen extends StatelessWidget {
  const UpdatePasswordScreen({super.key});

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
                  AppStrings.updatePassword,
                  style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                Text(
                  AppStrings.youCanNowUpdate,
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
            hint: AppStrings.newPassword,
            isObscureText: true,
          ),
          PrimaryTextField(
            controller: TextEditingController(),
            isObscureText: true,
            hint: AppStrings.renterPassword,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w).copyWith(
              top: 30.h,
            ),
            child: CustomActionButton(
              text: AppStrings.updatePassword,
              borderRadius: BorderRadius.circular(16.sp),
              backGroundColor: AppColors.textAndBackgroundColorButton,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => CustomDialog(
                    title: "Change Password Success",
                    subtitle: 'Success',
                    labelText: "Back to Homepage",
                    color: AppColors.green,
                  ),
                );
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
