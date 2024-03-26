import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';
import 'package:rehlatyuae/core/utils/default_text_button.dart';
import 'package:rehlatyuae/core/utils/primary_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.registerBackground),
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
                Row(
                  children: [
                    Text(
                      'Register now',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ],
                ),
                SizedBox(height: 30.h),
                PrimaryTextField(
                  controller: TextEditingController(),
                  hint: 'your name',
                  padding: EdgeInsets.only(bottom: 20.h),
                  textColor: AppColors.white,
                  suffix: const Icon(
                    CupertinoIcons.person,
                    color: AppColors.textAndBackgroundColorButton,
                  ),
                ),
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
                SizedBox(height: 30.h),
                CustomActionButton(
                  onTap: () {
                    context.go(AppStrings.homeScreen);
                  },
                  text: 'Sign Up',
                  borderRadius: BorderRadius.circular(12.r),
                  backGroundColor: AppColors.textAndBackgroundColorButton,
                  height: 60.h,
                  width: double.infinity,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'If you have an account?',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    DefaultTextButton(
                      onPressed: () {
                        context.pop();
                      },
                      text: ' Sign In here',
                    ),
                  ],
                ),
                Text(
                  'By clicking Sing up, you agree to our ',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultTextButton(
                      onPressed: () {
                        context.push('/termsConditionsScreen');
                      },
                      text: 'Terms',
                    ),
                    Text(
                      'and',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    DefaultTextButton(
                      onPressed: () {
                        context.push('/privacyPolicyScreen');
                      },
                      text: 'Privacy Policy',
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
