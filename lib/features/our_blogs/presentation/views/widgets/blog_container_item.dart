import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';

class BlogContainerItem extends StatelessWidget {
  const BlogContainerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppStrings.blogScreen);
      },
      child: SizedBox(
        height: 330.0.h,
        width: 240.0.w,
        child: Stack(
          children: [
            Container(
              height: 330.0.h,
              width: 240.0.w,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(15.0.r),
              ),
              child: Image.asset(
                AppAssets.travel,
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
              right: 17,
              child: Container(
                width: 92.0.w,
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
              bottom: 0,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.0.w,
                  vertical: 12.0.h,
                ),
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
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      "Short Description Short Description Short Description",
                      style: Theme.of(context).textTheme.displaySmall
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
