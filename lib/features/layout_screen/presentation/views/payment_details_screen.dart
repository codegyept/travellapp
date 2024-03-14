import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';
import 'package:rehlatyuae/core/utils/custom_icon_button.dart';
import 'package:rehlatyuae/core/utils/custom_text_button.dart';
import 'package:rehlatyuae/core/utils/pickers.dart';
import 'package:rehlatyuae/core/utils/primary_text_field.dart';
import 'package:rehlatyuae/core/utils/default_text_button.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/cusotm_bottom_sheet.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/cusotm_radio_tile.dart';

class PaymentDetailsScreen extends StatefulWidget {
  const PaymentDetailsScreen({super.key});

  @override
  State<PaymentDetailsScreen> createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  String selectedCard = '';
  int adultNumber = 1, childCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payment Options",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        width: 3,
                        color: const Color(0xFFF5F5F5),
                      ),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 87,
                              height: 67,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/preview1.png',
                                  ),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Order Summary",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700,
                                      height: 1.25,
                                    ),
                                  ),
                                  Text(
                                    "IMG World",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Color(0xFF606060),
                                      fontWeight: FontWeight.w400,
                                      height: 1.3,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Qty: 1",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF606060),
                                          fontWeight: FontWeight.w400,
                                          height: 1.3,
                                        ),
                                      ),
                                      Text(
                                        "Children: 1",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xFF606060),
                                          fontWeight: FontWeight.w400,
                                          height: 1.3,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        const Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            Text(
                              "Dobai, United Arab Emarates",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF606060),
                                fontWeight: FontWeight.w400,
                                height: 1.3,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        const Row(
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
                              "\$6,699.0",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                height: 1.42,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Credit & Debit Cards",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.black,
                      fontWeight: FontWeight.w400,
                      height: 1.42,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        width: 3,
                        color: const Color(0xFFF5F5F5),
                      ),
                    ),
                    child: Column(
                      children: [
                        CustomRadioTile(
                          name: 'Axis Bank',
                          number: '**** **** **** 8395',
                          imagePath: AppAssets.logoMastercard,
                          value: 'master',
                          selectedValue: selectedCard,
                          onChanged: (value) {
                            setState(() {
                              selectedCard = value!;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomRadioTile(
                          name: 'HDFC Bank',
                          number: '**** **** **** 6246',
                          imagePath: AppAssets.logoVisa,
                          value: 'visa',
                          selectedValue: selectedCard,
                          onChanged: (value) {
                            setState(() {
                              selectedCard = value!;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                builder: (context) => Column(
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
                                                "Add New Card",
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
                                        PrimaryTextField(
                                          controller: TextEditingController(),
                                          label: "Card Number",
                                          hint: "Enter 12 digit card number",
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: PrimaryTextField(
                                                  controller: TextEditingController(),
                                                  label: "Valid Thru",
                                                  hint: "MM",
                                                  padding: EdgeInsets.zero,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8.w,
                                              ),
                                              Expanded(
                                                child: PrimaryTextField(
                                                  controller: TextEditingController(),
                                                  label: "",
                                                  hint: "DD",
                                                  padding: EdgeInsets.zero,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 8.w,
                                              ),
                                              Expanded(
                                                child: PrimaryTextField(
                                                  controller: TextEditingController(),
                                                  label: "CVV",
                                                  hint: "--0",
                                                  padding: EdgeInsets.zero,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        PrimaryTextField(
                                          controller: TextEditingController(),
                                          label: "Card Holder’s Name",
                                          hint: "Name on Card",
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                                      child: CustomActionButton(
                                        text: 'Save card and Proceed',
                                        borderRadius: BorderRadius.circular(16.r),
                                        backGroundColor: AppColors.textAndBackgroundColorButton,
                                        onTap: () {
                                          context.pop();
                                        },
                                        style: const TextStyle(color: AppColors.white),
                                        width: double.infinity,
                                        height: 50.h,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                CustomIconButton(
                                  icon: Icons.add,
                                  iconColor: AppColors.textAndBackgroundColorButton,
                                  backgroundColor: AppColors.textAndBackgroundColorButton.withOpacity(0.2),
                                  size: 40,
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                const Text(
                                  "Add New Card",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w400,
                                    height: 1.42,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 15.h,
              ),
              margin: EdgeInsets.only(top: 15.h),
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
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => const CustomBottomSheet(
                              totalPayment: '12.00',
                              date: '12 / 12 / 2021',
                              details: 'IMG World',
                              referenceNum: 'A06453826151',
                              account: 'Mike Wazowsky',
                              discount: '1.00',
                              total: '11.00',
                            ),
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          );
                        },
                        text: "View detailed bill",
                      )
                    ],
                  ),
                  CustomActionButton(
                    text: 'Payment',
                    borderRadius: BorderRadius.circular(16),
                    backGroundColor: AppColors.textAndBackgroundColorButton,
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => const CustomBottomSheet(
                          totalPayment: '12.00',
                          date: '12 / 12 / 2021',
                          details: 'IMG World',
                          referenceNum: 'A06453826151',
                          account: 'Mike Wazowsky',
                          discount: '1.00',
                          total: '11.00',
                          avatarColor: AppColors.textAndBackgroundColorButton,
                          isPaymentDone: true,
                        ),
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      );
                    },
                    style: const TextStyle(color: AppColors.white),
                    width: 160,
                    height: 50,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
