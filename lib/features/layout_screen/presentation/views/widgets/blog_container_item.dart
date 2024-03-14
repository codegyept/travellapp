import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class BlogContainerItem extends StatelessWidget {
  const BlogContainerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330.0.h,
      width: 220.0.w,
      child: Stack(
        children: [
          Container(
            height: 330.0.h,
            width: 220.0.w,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(15.0.r),
            ),
            child: Image.asset(
              "assets/images/Frame 47221.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 60.0.w,
              height: 30.0.h,
              decoration: BoxDecoration(
                color: AppColors.blogItemBackgroundColor.withOpacity(0.3),
                borderRadius: BorderRadiusDirectional.circular(12.0.r),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star_border,
                    color: AppColors.whiteAppColor,
                  ),
                  Text(
                    "4.8",
                    style: TextStyle(
                      color: AppColors.whiteAppColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: 8,
            child: Container(
              width: 92.0.w,
              height: 30.0.h,
              decoration: BoxDecoration(
                color: AppColors.blogItemBackgroundColor.withOpacity(0.3),
                borderRadius: BorderRadiusDirectional.circular(12.0.r),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: AppColors.whiteAppColor,
                  ),
                  Text(
                    "2/2/2024",
                    style: TextStyle(
                      color: AppColors.whiteAppColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 240.0.w,
              height: 80.0.h,
              decoration: BoxDecoration(
                color: AppColors.blogItemContainerBackgroundColor.withOpacity(0.8),
                borderRadius: BorderRadiusDirectional.only(
                  bottomEnd: Radius.circular(15.0.r),
                  bottomStart: Radius.circular(15.0.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.0.w,
                  vertical: 12.0.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Blog name",
                      style: TextStyle(
                        color: AppColors.whiteAppColor,
                      ),
                    ),
                    SizedBox(
                      height: 6.0.h,
                    ),
                    const Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      "Short Description Short Description Short Description",
                      style: TextStyle(
                        color: AppColors.whiteAppColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
