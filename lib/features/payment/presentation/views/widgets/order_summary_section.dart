import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';

class OrderSummarySection extends StatelessWidget {
  final String total;
  final String childrenCount;
  final String adultCount;
  final String address;

  const OrderSummarySection({
    required this.total,
    required this.childrenCount,
    required this.adultCount,
    required this.address,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          width: 1.h,
          color: AppColors.black.withOpacity(0.3),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 85.w,
                height: 75.h,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/preview1.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(16.r),
                ),
              ),
              SizedBox(
                width: 16.h,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.orderSummary,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "IMG World",
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: AppColors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${AppStrings.adult}: $adultCount",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "${AppStrings.children}: 1",
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: AppColors.grey,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Icon(
                CupertinoIcons.placemark,
                size: 20.h,
              ),
              Text(
                address,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppStrings.totalAmount,
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "\$$total",
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
