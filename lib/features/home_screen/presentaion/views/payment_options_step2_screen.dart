import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_icon_button.dart';
import 'package:rehlatyuae/core/utils/default_text_button.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/components/cusotm_bottom_sheet.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/components/cusotm_radio_tile.dart';

class PaymentOptionsStep2Screen extends StatefulWidget {
  const PaymentOptionsStep2Screen({super.key});

  @override
  State<PaymentOptionsStep2Screen> createState() => _PaymentOptionsStep2ScreenState();
}

class _PaymentOptionsStep2ScreenState extends State<PaymentOptionsStep2Screen> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
                          onTap: () {},
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
                                "Credit & Debit Cards",
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
                      text: "View detailed bill",
                    )
                  ],
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
                  text: "Payment",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
