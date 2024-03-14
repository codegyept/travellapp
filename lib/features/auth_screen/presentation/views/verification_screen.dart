import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';
import 'package:rehlatyuae/features/auth_screen/presentation/views/widgets/custom_otp_text_field.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final FocusNode focusNode = FocusNode();
  final OtpFieldController otpFieldController = OtpFieldController();
  String otp = '';
  bool otpHasError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w).copyWith(
          top: 30,
        ),
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
          SizedBox(
            height: 30.h,
          ),
          const CustomOTPTextField(),
          SizedBox(
            height: 100.h,
          ),
          const Text(
            "Did you receive any code?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: AppColors.black,
              fontWeight: FontWeight.w700,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomActionButton(
            text: 'Verify',
            borderRadius: BorderRadius.circular(16),
            backGroundColor: AppColors.textAndBackgroundColorButton,
            onTap: () {
              context.push('/resetPasswordScreen');
            },
            style: const TextStyle(color: AppColors.white),
            width: double.infinity,
            height: 50.h,
          ),
        ],
      ),
    );
  }
}
