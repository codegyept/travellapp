import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/default_text_button.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/components/number_ticket_card.dart';

class PaymentOptionsStep1Screen extends StatefulWidget {
  const PaymentOptionsStep1Screen({super.key});

  @override
  State<PaymentOptionsStep1Screen> createState() => _PaymentOptionsStep1ScreenState();
}

class _PaymentOptionsStep1ScreenState extends State<PaymentOptionsStep1Screen> {
  String selectedCard = '';
  int adultNumber = 1, childCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment Options  ",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
                child: const Text(
                  "Select Number off ticket",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    height: 1.25,
                  ),
                ),
              ),
              CountTicketCard(
                name: 'Adult',
                detail: 'Above 4 yrs',
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
                name: 'Children',
                detail: 'Under 3 yrs',
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
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
              vertical: 15.h,
            ),
            margin: const EdgeInsets.only(top: 50),
            color: AppColors.backgroundWhite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "  \$6,699",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        height: 1.25,
                      ),
                    ),
                    DefaultTextButton(
                      onPressed: () {},
                      text: "12/12/2024",
                    )
                  ],
                ),
                const DefaultTextButton(
                  onPressed: null,
                  text: "Next payment",
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
