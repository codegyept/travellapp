import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

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
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    color: AppColors.grey,
                  ),
            ),
            if (midValue != null)
              Text(
                midValue!,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: AppColors.grey,
                    ),
              ),
            Text(
              value,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        )
      ],
    );
  }
}
