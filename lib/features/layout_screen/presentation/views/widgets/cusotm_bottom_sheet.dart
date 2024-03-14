import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';
import 'package:rehlatyuae/core/utils/custom_circle_avatar.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/row_details.dart';

class CustomBottomSheet extends StatelessWidget {
  final String totalPayment;
  final String date;
  final String details;
  final String referenceNum;
  final String account;
  final String discount;
  final String total;
  final Color avatarColor;
  final bool isPaymentDone;

  const CustomBottomSheet({
    required this.totalPayment,
    required this.date,
    required this.details,
    required this.referenceNum,
    required this.account,
    required this.discount,
    required this.total,
    this.isPaymentDone = false,
    this.avatarColor = AppColors.backgroundAvatarPayment,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 30.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      GoRouter.of(context).pop(context);
                    },
                    icon: const Icon(Icons.clear),
                  ),
                  const Text(
                    "Payment Details",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      height: 1.42,
                    ),
                  ),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.clear,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Stack(
                  clipBehavior: Clip.antiAlias,
                  children: [
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 30.w).copyWith(top: 30.h),
                      padding: EdgeInsets.symmetric(horizontal: 20.w).copyWith(
                        top: 100.h,
                        bottom: 20.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.backgroundWhite,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Total Amount",
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: AppColors.backgroundColorExpansionAndText,
                              fontWeight: FontWeight.w400,
                              height: 1.3,
                            ),
                          ),
                          Text(
                            "\$ $totalPayment",
                            style: TextStyle(
                              fontSize: 30.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              height: 1.32,
                            ),
                          ),
                          RowDetails(
                            title: "Date",
                            value: date,
                          ),
                          RowDetails(
                            title: "Details",
                            value: details,
                          ),
                          RowDetails(
                            title: "Reference num",
                            value: referenceNum,
                          ),
                          RowDetails(
                            title: "Account",
                            value: account,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          DottedLine(
                            dashLength: 8.w,
                            alignment: WrapAlignment.spaceBetween,
                            dashColor: AppColors.grey,
                          ),
                          RowDetails(
                            title: "Total Payment",
                            value: "\$$totalPayment",
                          ),
                          RowDetails(
                            title: "Discount",
                            value: "\$$discount",
                          ),
                          RowDetails(
                            title: "Total",
                            value: "\$$total",
                            textValueColor: AppColors.textAndBackgroundColorButton,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -10.h,
                      left: 50.w,
                      right: 50.w,
                      child: DottedLine(
                        dashLength: 25.w,
                        lineThickness: 25.w,
                        alignment: WrapAlignment.spaceBetween,
                        dashColor: AppColors.grey.shade100,
                        dashRadius: 100.sp,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: -30.h,
                  right: 0,
                  left: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomCircleAvatar(
                        iconData: Icons.check,
                        radius: 60.h,
                        borderWidth: 15.h,
                        backgroundColor: avatarColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
          child: CustomActionButton(
            text: isPaymentDone ? 'Back to Homepage' : 'Payment',
            borderRadius: BorderRadius.circular(16.r),
            backGroundColor: AppColors.textAndBackgroundColorButton,
            onTap: () {
              context.pop();
            },
            style: const TextStyle(color: AppColors.white),
            width: 250.w,
            height: 50.h,
          ),
        ),
      ],
    );
  }
}
