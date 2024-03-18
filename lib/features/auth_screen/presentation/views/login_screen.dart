import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';
import 'package:rehlatyuae/core/utils/default_text_button.dart';
import 'package:rehlatyuae/core/utils/primary_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.loginBackground),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                SizedBox(height: 75.h),
                Image.asset('assets/images/logo.png'),
                SizedBox(height: 30.h),
                const Row(
                  children: [
                    Text(
                      'LogIn today',
                      style: TextStyle(
                        fontFamily: "Switzer",
                        color: Colors.white70,
                        fontSize: 33,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                PrimaryTextField(
                  controller: TextEditingController(),
                  hint: 'youremail@mail.com',
                  padding: EdgeInsets.only(bottom: 20.h),
                  textColor: AppColors.white,
                  inputType: TextInputType.emailAddress,
                  suffix: const Icon(
                    Icons.mail_outline_sharp,
                    color: AppColors.textAndBackgroundColorButton,
                  ),
                ),
                PrimaryTextField(
                  controller: TextEditingController(),
                  hint: 'password',
                  padding: EdgeInsets.zero,
                  textColor: AppColors.white,
                  suffix: const Icon(
                    Icons.mail_outline_sharp,
                    color: AppColors.textAndBackgroundColorButton,
                  ),
                  isObscureText: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    DefaultTextButton(
                      onPressed: () {
                        context.push('/forgetPasswordScreen');
                      },
                      text: 'Forgot Password?',
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
                CustomActionButton(
                  onTap: () {},
                  text: 'LogIn',
                  borderRadius: BorderRadius.circular(12.r),
                  backGroundColor: AppColors.textAndBackgroundColorButton,
                  height: 60.h,
                  width: double.infinity,
                ),
                SizedBox(height: 30.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Didn’t have any account?',
                      style: TextStyle(
                        fontFamily: "Switzer",
                        color: Colors.white70,
                        fontSize: 14.sp,
                      ),
                    ),
                    DefaultTextButton(
                      onPressed: () {
                        context.push('/registerScreen');
                      },
                      text: ' Sign Up here',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
