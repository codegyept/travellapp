import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/default_text_button.dart';

class ProfileCardDetails extends StatelessWidget {
  final String title;
  final String value;

  const ProfileCardDetails({
    required this.title,
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  color: Color(0xFF606060),
                  fontWeight: FontWeight.w400,
                  height: 1.3,
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          DefaultTextButton(
            onPressed: () {},
            text: "Edit",
          )
        ],
      ),
    );
  }
}
