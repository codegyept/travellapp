import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:40.0.h,
      width:70.0.w,
      decoration:BoxDecoration(
        color:AppColors.categoriesItemBackgroundColor,
            borderRadius: BorderRadiusDirectional.circular(12.0.r),
      ),
      child:Row(
        children: [
          Image.asset(
            "assets/images/Asset 1-1.png",
            fit:BoxFit.cover,
          ),
          SizedBox(width:4.0.w,),
          const Text("Waterfall",
          style: TextStyle(
            color: AppColors.categoriesItemTextColor,
          ),),
        ],
      ),
    );
  }
}
