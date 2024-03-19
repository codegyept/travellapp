import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/primary_text_field.dart';

class SendMessageContentSheet extends StatelessWidget {
  const SendMessageContentSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 30.h,
        ),
        PrimaryTextField(
          controller: TextEditingController(),
          padding: EdgeInsets.only(bottom: 20.h),
          hint: 'Full Name',
          textColor: AppColors.grey,
        ),
        PrimaryTextField(
          controller: TextEditingController(),
          padding: EdgeInsets.only(bottom: 20.h),
          hint: 'Your Email',
          textColor: AppColors.grey,
        ),
        PrimaryTextField(
          controller: TextEditingController(),
          padding: EdgeInsets.only(bottom: 20.h),
          hint: 'Your Message...',
          textColor: AppColors.grey,
          isTextAria: true,
        ),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}
