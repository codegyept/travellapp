import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';

class OurPartnersItem extends StatelessWidget {
  const OurPartnersItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Container(
      width:70.0.w,
      height: 70.0.h,
      decoration:BoxDecoration(
        image:DecorationImage(
          image: AssetImage(
            AppStrings.ourPartnersLogo,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
