import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/default_text_button.dart';

class RegisterBottomSection extends StatelessWidget {
  const RegisterBottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'If you have an account? ',
              style: TextStyle(
                fontFamily: "Switzer",
                color: Colors.white,
                fontSize: 10.sp,
              ),
            ),
            DefaultTextButton(
              onPressed: () {
                GoRouter.of(context).go('/login');
              },
              text: 'Sign In here',
            ),
          ],
        ),
        SizedBox(height: 5.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'By clicking Sign up, you agree to our ',
              style: TextStyle(
                fontFamily: "Switzer",
                color: Colors.white,
                fontSize: 10.sp,
              ),
            ),
          ],
        ),
        SizedBox(height: 5.h),
      ],
    );
  }
}
