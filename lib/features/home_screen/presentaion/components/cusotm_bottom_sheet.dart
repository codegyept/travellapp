import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_circle_avatar.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/components/row_details.dart';

class CustomBottomSheet extends StatelessWidget {
  final String totalPayment;
  final String date;
  final String details;
  final String referenceNum;
  final String account;
  final String discount;
  final String total;
  final Color avatarColor;

  const CustomBottomSheet({
    required this.totalPayment,
    required this.date,
    required this.details,
    required this.referenceNum,
    required this.account,
    required this.discount,
    required this.total,
    this.avatarColor = AppColors.backgroundAvatarPayment,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  margin: const EdgeInsets.symmetric(horizontal: 30).copyWith(top: 60),
                  padding: EdgeInsets.symmetric(horizontal: 20.w).copyWith(
                    top: 100.h,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.backgroundWhite,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "Total Amount",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF606060),
                          fontWeight: FontWeight.w400,
                          height: 1.3,
                        ),
                      ),
                      Text(
                        "\$ $totalPayment",
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          height: 1.32,
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
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
                      const DottedLine(
                        dashLength: 8,
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
                    ],
                  ),
                ),
                Positioned(
                  bottom: -10,
                  left: 50,
                  right: 50,
                  child: DottedLine(
                    dashLength: 25,
                    lineThickness: 25,
                    alignment: WrapAlignment.spaceBetween,
                    dashColor: AppColors.grey.shade100,
                    dashRadius: 100,
                  ),
                ),
              ],
            ),
            Positioned(
              top: -20,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCircleAvatar(
                    iconData: Icons.check,
                    radius: 60,
                    borderWidth: 15,
                    backgroundColor: avatarColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
