import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';
import 'package:rehlatyuae/core/utils/custom_text_field.dart';
import 'package:rehlatyuae/core/utils/default_text_button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/Login.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 30.w),
              child: Column(children: [
                SvgPicture.asset('assets/images/main_logo.svg'),
                SizedBox(height: 20.h),
                Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    'LogIn today ',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  SizedBox(height: 20.h),
                  CustomTextField(
                    hintText: 'youremail@mail.com',
                    suffixIcon: Icon(Icons.email_outlined,
                        color: AppColors.textAndBackgroundColorButton,
                        size: 20.sp),
                  ),
                  SizedBox(height: 20.h),
                  CustomTextField(
                    hintText: 'password',
                    suffixIcon: Icon(
                      Icons.lock_outline,
                      color: AppColors.textAndBackgroundColorButton,
                      size: 20.sp,
                    ),
                    isObsureText: true,
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      DefaultTextButton(
                        onPressed: () {
                          GoRouter.of(context).go('/register');
                        },
                        text: 'Forgot Password?',
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  CustomActionButton(
                    onTap: () {
                      GoRouter.of(context).go('/homeScreen');
                    },
                    text: 'LogIn',
                    borderRadius: BorderRadius.circular(12.r),
                    backGroundColor: AppColors.textAndBackgroundColorButton,
                    height: 55.h,
                    width: double.infinity,
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Didn’t have any account?',
                        style: TextStyle(
                            fontFamily: "Switzer",
                            color: Colors.white70,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      DefaultTextButton(
                        onPressed: () {
                          GoRouter.of(context).go('/register');
                        },
                        text: ' Sign Up here',
                      ),
                    ],
                  ),
                ]),
              ]),
            ),
          )),
        ],
      ),
    );
  }
}
