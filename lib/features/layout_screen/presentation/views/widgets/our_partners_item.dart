import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';

class OurPartnersItem extends StatelessWidget {
  const OurPartnersItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70.0.w,
      height: 70.0.h,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AppStrings.ourPartnersLogo,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
