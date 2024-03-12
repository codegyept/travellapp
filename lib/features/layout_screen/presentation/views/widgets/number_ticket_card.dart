import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_icon_button.dart';

class CountTicketCard extends StatelessWidget {
  final String name;
  final String detail;
  final int count;
  final double total;
  final void Function()? onIncreasePressed;
  final void Function()? onDecreasePressed;

  const CountTicketCard({
    required this.name,
    required this.detail,
    required this.count,
    required this.total,
    required this.onIncreasePressed,
    required this.onDecreasePressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 15.h),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppColors.black,
                        fontWeight: FontWeight.w400,
                        height: 1.42,
                      ),
                    ),
                    SizedBox(
                      height: 7.h,
                    ),
                    Text(
                      detail,
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.grey,
                        fontWeight: FontWeight.w400,
                        height: 1.3,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    CustomIconButton(
                      icon: CupertinoIcons.minus,
                      iconColor: AppColors.textAndBackgroundColorButton,
                      backgroundColor: AppColors.textAndBackgroundColorButton.withOpacity(0.2),
                      size: 35,
                      radius: 50,
                      iconSize: 20,
                      onPressed: onDecreasePressed,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      "$count",
                      style: const TextStyle(
                        fontSize: 16,
                        color: AppColors.black,
                        fontWeight: FontWeight.w400,
                        height: 1.42,
                      ),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    CustomIconButton(
                      icon: CupertinoIcons.add,
                      iconColor: AppColors.textAndBackgroundColorButton,
                      backgroundColor: AppColors.textAndBackgroundColorButton.withOpacity(0.2),
                      size: 35,
                      iconSize: 20,
                      radius: 50,
                      onPressed: onIncreasePressed,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  "\$ $total",
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    fontSize: 16,
                    color: AppColors.black,
                    fontWeight: FontWeight.w400,
                    height: 1.42,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: AppColors.grey,
          height: 0,
        ),
      ],
    );
  }
}
