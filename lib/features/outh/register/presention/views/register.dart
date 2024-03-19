import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';
import 'package:rehlatyuae/core/utils/custom_text_field.dart';
import 'package:rehlatyuae/core/utils/default_text_button.dart';
import 'package:rehlatyuae/features/outh/register/presention/widget/register_bottom_section.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Register.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Center(
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 30.w),
          child: Column(
            children: [
              Image(
                height: 240.h,
                width: 165.w,
                image: const AssetImage('assets/images/logo.png'),
              ),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Register now', style: Theme.of(context).textTheme.displayLarge),
                ],
              ),
              SizedBox(height: 10.h),
              CustomTextField(
                hintText: 'your name',
                suffixIcon: Icon(Icons.person_outline, color: AppColors.textAndBackgroundColorButton, size: 20.sp),
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                hintText: 'youremail@mail.com',
                suffixIcon: Icon(Icons.email_outlined, color: AppColors.textAndBackgroundColorButton, size: 20.sp),
              ),
              SizedBox(height: 20.h),
              CustomTextField(
                hintText: 'password',
                suffixIcon: Icon(Icons.lock_outline, color: AppColors.textAndBackgroundColorButton, size: 20.sp),
              ),
              SizedBox(height: 20.h),
              CustomActionButton(
                onTap: () {},
                text: 'Sign Up',
                borderRadius: BorderRadius.circular(10.r),
                backGroundColor: AppColors.textAndBackgroundColorButton,
                width: double.infinity,
                style: Theme.of(context).textTheme.displayMedium,
                height: 55.h,
              ),
              const RegisterBottomSection(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefaultTextButton(
                    onPressed: () {},
                    text: 'Terms',
                  ),
                  const Text(
                    'and',
                    style: TextStyle(color: AppColors.white),
                  ),
                  DefaultTextButton(
                    onPressed: () {},
                    text: 'Privacy Policy',
                  ),
                ],
              ),
            ],
          ),
        )),
      ),
    ]));
  }
}
