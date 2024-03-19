import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';
import 'package:rehlatyuae/core/utils/custom_dialog.dart';
import 'package:rehlatyuae/core/utils/default_text_button.dart';
import 'package:rehlatyuae/features/profile/presentation/views/widgets/profile_card_details.dart';
import 'package:rehlatyuae/features/profile/presentation/views/widgets/profile_photo_section.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.profile,
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          DefaultTextButton(
            onPressed: () {
              context.push('/editProfileScreen');
            },
            text: AppStrings.edit,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProfilePhotoSection(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        AppStrings.about,
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 60.w,
                        child: Divider(
                          color: AppColors.blogItemContainerBackgroundColor,
                          thickness: 2.h,
                          height: 10.h,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const ProfileCardDetails(
              title: AppStrings.fullName,
              value: "Ryo Elif radioman",
            ),
            const ProfileCardDetails(
              title: AppStrings.email,
              value: "ryoalif1998@gmail.com",
            ),
            const ProfileCardDetails(
              title: AppStrings.phone,
              value: "00962 000000000",
            ),
            const ProfileCardDetails(
              title: AppStrings.dateOfBirth,
              value: "12/12/2024",
            ),
            CustomActionButton(
              text: 'Delete Account',
              borderRadius: BorderRadius.circular(16.r),
              backGroundColor: AppColors.redAppColor,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => const CustomDialog(
                    title: "Are you sure to delete the account?",
                    subtitle: "\$12.00",
                    labelText: "Yes !",
                    color: AppColors.redAppColor,
                  ),
                );
              },
              width: double.infinity,
              height: 50.h,
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 10.h),
              child: DefaultTextButton(
                onPressed: () {
                  context.push('/forgetPasswordScreen');
                },
                text: "Forget Password",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
