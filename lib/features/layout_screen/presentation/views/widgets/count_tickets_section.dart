import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/number_ticket_card.dart';

class CountTicketsSection extends StatefulWidget {
  const CountTicketsSection({super.key});

  @override
  State<CountTicketsSection> createState() => _CountTicketsSectionState();
}

class _CountTicketsSectionState extends State<CountTicketsSection> {
  String selectedCard = '';
  int adultNumber = 1, childCount = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
            vertical: 10.h,
          ),
          child: Row(
            children: [
              Text(
                AppStrings.selectNumberTicket,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        CountTicketCard(
          name: AppStrings.adult,
          detail: AppStrings.above4Yrs,
          count: adultNumber,
          total: adultNumber * 10,
          onIncreasePressed: () {
            setState(() {
              ++adultNumber;
            });
          },
          onDecreasePressed: adultNumber <= 1
              ? null
              : () {
                  setState(() {
                    --adultNumber;
                  });
                },
        ),
        CountTicketCard(
          name: AppStrings.children,
          detail: AppStrings.under3Yrs,
          count: childCount,
          total: childCount * 5,
          onIncreasePressed: () {
            setState(() {
              ++childCount;
            });
          },
          onDecreasePressed: childCount <= 0
              ? null
              : () {
                  setState(() {
                    --childCount;
                  });
                },
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Amount",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  height: 1.42,
                ),
              ),
              Text(
                "\$0.00",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  height: 1.42,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
