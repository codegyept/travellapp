import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';

class AllBlogsItem extends StatelessWidget {
  const AllBlogsItem({
    super.key,
    required this.width,
  });

  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 185.0.h,
      width: width,
      child: Stack(
        children: [
          Container(
            height: 185.0.h,
            width: width,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(15.0.r),
            ),
            child: Image.asset(
               AppStrings.containerTripBackgroundImage,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 10,
            left: 5,
            child: Container(
              width: 40.0.w,
              height: 30.0.h,
              decoration: BoxDecoration(
                color: AppColors.blogItemBackgroundColor.withOpacity(0.3),
                borderRadius: BorderRadiusDirectional.circular(12.0.r),
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star_border,
                    color: AppColors.whiteAppColor,
                  ),
                  Text(
                    "4.8",
                    style:Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 5,
            child: Container(
              width: 72.0.w,
              height: 30.0.h,
              decoration: BoxDecoration(
                color: AppColors.blogItemBackgroundColor.withOpacity(0.3),
                borderRadius: BorderRadiusDirectional.circular(12.0.r),
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.calendar_month,
                    color: AppColors.whiteAppColor,
                  ),
                  Text(
                    "2/2/2024",
                    style:Theme.of(context).textTheme.displaySmall,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Blog name",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                SizedBox(
                  height: 6.0.h,
                ),
                Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    "Short Description Short Description Short Description",
                    style: Theme.of(context).textTheme.displaySmall
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
