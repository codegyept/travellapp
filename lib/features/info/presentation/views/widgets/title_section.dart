import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_icon_button.dart';

class TitleSection extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imagePath;

  const TitleSection({
    required this.title,
    required this.subTitle,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 284.h,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imagePath,
                  ),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30.sp),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
            child: Row(
              children: [
                CustomIconButton(
                  icon: Icons.arrow_back,
                  onPressed: () {
                    context.pop();
                  },
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.h, bottom: 26.w),
                  child: Text(
                    subTitle,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: AppColors.black,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
