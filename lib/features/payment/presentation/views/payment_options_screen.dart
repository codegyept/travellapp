import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/core/utils/custom_expansion_tile.dart';
import 'package:rehlatyuae/core/utils/pickers.dart';
import 'package:rehlatyuae/core/utils/primary_text_field.dart';
import 'package:rehlatyuae/features/payment/presentation/views/widgets/count_tickets_section.dart';
import 'package:rehlatyuae/features/payment/presentation/views/widgets/total_payment_section.dart';

class PaymentOptionsScreen extends StatelessWidget {
  const PaymentOptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.paymentOptions,
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
                color: AppColors.black,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PrimaryTextField(
              label: AppStrings.yourDateBooking,
              hint: AppStrings.selectDate,
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
            const CountTicketsSection(),
            CustomExpansionTile(
              title: AppStrings.youHaveCoupon,
              content: AppStrings.yourCoupon,
              initiallyExpanded: false,
              children: [
                PrimaryTextField(
                  controller: TextEditingController(),
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  textColor: AppColors.white,
                )
              ],
            ),
            PrimaryTextField(
              label: AppStrings.description,
              hint: AppStrings.pleaseInsertAllNotes,
              isTextAria: true,
              controller: TextEditingController(),
            ),
            TotalPaymentSection(
              total: "\$6,699",
              subtitle: "12/12/2024",
              buttonLabel: AppStrings.nextPayment,
              onButtonTap: () {
                context.push('/paymentDetailsScreen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
