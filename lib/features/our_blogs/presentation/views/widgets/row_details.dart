import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowDetails extends StatelessWidget {
  final String title;
  final String value;
  final String? midValue;
  final Color textValueColor;

  const RowDetails({
    required this.title,
    required this.value,
    this.midValue,
    this.textValueColor = Colors.black,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                color: Color(0xFF606060),
                fontWeight: FontWeight.w500,
                height: 1.3,
              ),
            ),
            if (midValue != null)
              Text(
                midValue!,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xFF606060),
                  fontWeight: FontWeight.w500,
                  height: 1.3,
                ),
              ),
            Text(
              value,
              style: TextStyle(
                fontSize: 14,
                color: textValueColor,
                fontWeight: FontWeight.w500,
                height: 1.32,
              ),
            ),
          ],
        )
      ],
    );
  }
}
