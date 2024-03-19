import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/features/our_blogs/presentation/views/widgets/row_details.dart';

class PaymentContentSheet extends StatelessWidget {
  final String totalPayment;
  final String date;
  final String tripDate;
  final String details;
  final String referenceNum;
  final String account;
  final String discount;
  final String total;

  const PaymentContentSheet({
    required this.totalPayment,
    required this.date,
    required this.tripDate,
    required this.details,
    required this.referenceNum,
    required this.account,
    required this.discount,
    required this.total,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
        RowDetails(
          title: "Trip Date",
          value: tripDate,
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
          height: 20.h,
        ),
      ],
    );
  }
}
