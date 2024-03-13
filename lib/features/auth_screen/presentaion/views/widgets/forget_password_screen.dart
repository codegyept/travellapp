import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
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
                const Text(
                  "Forgot Password?",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                const Text(
                  "Enter your informations below or login with a other account",
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
          PrimaryTextField(
            controller: TextEditingController(),
            hint: 'Email',
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w).copyWith(
              top: 30,
            ),
            child: CustomActionButton(
              text: 'Update Password',
              borderRadius: BorderRadius.circular(16),
              backGroundColor: AppColors.textAndBackgroundColorButton,
              onTap: () {},
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
