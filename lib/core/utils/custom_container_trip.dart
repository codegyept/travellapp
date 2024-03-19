import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_icon_button.dart';

class CustomContainerTrip extends StatelessWidget {
  const CustomContainerTrip({
    super.key,
    required this.width,
    required this.imageName,
    required this.cityName,
    required this.countryName,
    required this.tripPrice,
    required this.reservationType,
  });

  final double width;
  final String imageName;
  final String cityName;
  final String countryName;
  final String tripPrice;
  final String reservationType;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.0.h,
      width: width,
      child: Stack(
        children: [
          Container(
            height: 195.0.h,
            width: width,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(15.0.r),
            ),
            child: Image.asset(
              imageName,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 10,
            right: 18,
            child: CustomIconButton(
              icon: CupertinoIcons.heart,
              iconColor: AppColors.redAppColor,
              onPressed: () {},
              width: 35.0.w,
              height: 40.0.h,
              icon: Icon(
                Icons.favorite_outline,
                color: AppColors.redAppColor,
                size: 22.0.sp,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cityName,
                  style: TextStyle(color: AppColors.whiteAppColor),
                ),
                SizedBox(
                  height: 5.0.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.location_on_sharp,
                      color: AppColors.whiteAppColor,
                      size: 14.0.sp,
                    ),
                    SizedBox(
                      width: 1.0.w,
                    ),
                    Text(
                      cityName,
                      style: TextStyle(
                        color: AppColors.whiteAppColor,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Text(
                  tripPrice,
                  style: TextStyle(color: AppColors.whiteAppColor),
                ),
                SizedBox(
                  height: 4.0.h,
                ),
                 Text(
                  reservationType,
                  style: TextStyle(color: AppColors.whiteAppColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
