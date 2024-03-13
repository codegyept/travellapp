import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

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
                const Text(
                  "Verification",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                const Text(
                  "Check your email. We’ve sent you the PIN at your email.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF606060),
                    fontWeight: FontWeight.w400,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w).copyWith(
              top: 30,
            ),
            child: CustomActionButton(
              text: 'Save',
              borderRadius: BorderRadius.circular(16),
              backGroundColor: AppColors.textAndBackgroundColorButton,
              onTap: () {
                context.push('/resetPasswordScreen');
              },
              style: const TextStyle(color: AppColors.white),
              width: double.infinity,
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
