import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_icon_button.dart';

class BolgTravelTitleSection extends StatelessWidget {
  final String title;
  final String address;
  final String price;
  final String imagePath;
  final bool isTrip;
  final void Function()? onLikePressed;

  const BolgTravelTitleSection({
    required this.title,
    required this.address,
    required this.price,
    required this.imagePath,
    this.onLikePressed,
    this.isTrip = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 408.h,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  icon: Icons.arrow_back,
                  onPressed: () {
                    context.pop();
                  },
                ),
                if (isTrip)
                  CustomIconButton(
                    icon: CupertinoIcons.heart,
                    iconColor: AppColors.redAppColor,
                    onPressed: onLikePressed,
                  ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 35.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.labelMedium!.copyWith(
                              color: AppColors.white,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          if (isTrip)
                            Text(
                              "\$$price",
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                          Text(
                            isTrip ? " /Person" : '7,3 2024',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: AppColors.grayLight,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        size: 18,
                        color: AppColors.textAndBackgroundColorButton,
                      ),
                      Text(
                        address,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
