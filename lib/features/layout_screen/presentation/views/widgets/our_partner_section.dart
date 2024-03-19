import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/our_partners_item.dart';

class OurPartnerSection extends StatelessWidget {
  const OurPartnerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          AppStrings.ourPartnerTitle,
          style: const TextStyle(
            color: AppColors.black,
          ),
        ),
        SizedBox(
          height: 75.0.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const OurPartnersItem();
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 5.0.w,
                );
              }),
        ),
      ],
    );
  }
}
