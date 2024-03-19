import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/core/utils/cusotm_bottom_sheet.dart';
import 'package:rehlatyuae/core/utils/pickers.dart';
import 'package:rehlatyuae/core/utils/primary_text_field.dart';
import 'package:rehlatyuae/features/payment/presentation/views/widgets/credit_debit_cards_section.dart';
import 'package:rehlatyuae/features/payment/presentation/views/widgets/order_summary_section.dart';
import 'package:rehlatyuae/features/payment/presentation/views/widgets/payment_content_sheet.dart';
import 'package:rehlatyuae/features/payment/presentation/views/widgets/total_payment_section.dart';

class PaymentDetailsScreen extends StatelessWidget {
  const PaymentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppStrings.paymentDetails,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PrimaryTextField(
              label: AppStrings.yourDateBooking,
              hint: "12/12/2024",
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
            SizedBox(
              height: 15.h,
            ),
            const OrderSummarySection(
              total: '5,451',
              childrenCount: '2',
              adultCount: '3',
              address: "Dobai, United Arab Emarates",
            ),
            SizedBox(
              height: 15.h,
            ),
            const CreditDebitCardsSection(
              total: 'total',
              childrenCount: 'childrenCount',
              adultCount: 'adultCount',
              address: 'address',
            ),
            TotalPaymentSection(
              total: "\$6,699",
              subtitle: "View detailed bill",
              buttonLabel: AppStrings.payment,
              onButtonTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  builder: (context) => const CustomBottomSheet(
                    title: 'Payment Details',
                    labelButton: 'Payment',
                    contentSheet: PaymentContentSheet(
                      totalPayment: "12.00",
                      date: '12 / 12 / 2021',
                      tripDate: '12 / 2 / 2024',
                      details: 'IMG World ',
                      referenceNum: 'A06453826151',
                      account: 'Mike Wazowsky',
                      discount: '1.00',
                      total: '11.00',
                    ),
                  ),
                );
              },
              onSubtitleTap: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  builder: (context) => const CustomBottomSheet(
                    title: 'Payment Details',
                    labelButton: 'Payment',
                    contentSheet: PaymentContentSheet(
                      totalPayment: "12.00",
                      date: '12 / 12 / 2021',
                      tripDate: '12 / 2 / 2024',
                      details: 'IMG World',
                      referenceNum: 'A06453826151',
                      account: 'Mike Wazowsky',
                      discount: '1.00',
                      total: '11.00',
                    ),
                    avatarColor: AppColors.backgroundAvatarPayment,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
