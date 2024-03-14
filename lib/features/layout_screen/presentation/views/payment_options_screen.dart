import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';
import 'package:rehlatyuae/core/utils/custom_expansion_tile.dart';
import 'package:rehlatyuae/core/utils/custom_text_button.dart';
import 'package:rehlatyuae/core/utils/pickers.dart';
import 'package:rehlatyuae/core/utils/primary_text_field.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/number_ticket_card.dart';

class PaymentOptionsScreen extends StatefulWidget {
  const PaymentOptionsScreen({super.key});

  @override
  State<PaymentOptionsScreen> createState() => _PaymentOptionsScreenState();
}

class _PaymentOptionsScreenState extends State<PaymentOptionsScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PrimaryTextField(
              label: "Your date booking",
              hint: "Select a date",
              controller: TextEditingController(),
              readOnly: true,
              onTap: () async {
                var duration = const Duration();
                await Pickers.choseDate(
                  context: context,
                  firstDate: DateTime.now().add(duration),
                  initialDate: DateTime.now().add(duration),
                );
              },
              suffix: const Icon(CupertinoIcons.calendar),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 10.h),
              child: const Row(
                children: [
                  Text(
                    "Select Number off ticket",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      height: 1.25,
                    ),
                  ),
                ],
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
            CustomExpansionTile(
              title: "You Have Coupon!",
              content: 'Your Coupon!',
              children: [
                PrimaryTextField(
                  controller: TextEditingController(),
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                )
              ],
            ),
            PrimaryTextField(
              label: "Description",
              hint: "Please insert all notes",
              isTextAria: true,
              controller: TextEditingController(),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 15.h,
              ),
              margin: EdgeInsets.only(top: 20.h),
              color: AppColors.backgroundWhite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "  \$6,699",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          height: 1.25,
                        ),
                      ),
                      DefaultTextButton(
                        onPressed: null,
                        text: "12/12/2024",
                      ),
                    ],
                  ),
                  CustomActionButton(
                    text: 'Next payment',
                    borderRadius: BorderRadius.circular(16),
                    backGroundColor: AppColors.textAndBackgroundColorButton,
                    onTap: () {
                      context.push('/paymentDetailsScreen');
                    },
                    style: const TextStyle(color: AppColors.white),
                    width: 160,
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
