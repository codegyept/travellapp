import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/icon_button_with_white_background.dart';

class PopularExperiencesContainerItem extends StatelessWidget {
  const PopularExperiencesContainerItem({Key? key, required this.width}) : super(key: key);
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.0.h,
      width: width,
      child: Stack(
        children: [
          Container(
            height: 180.0.h,
            width: width,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(15.0.r),
            ),
            child: Image.asset(
              "assets/images/Rectangle 427.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 8,
            right: 10,
            child: IconButtonWithWhiteBackground(
              onPressed: () {},
              width: 30.0.w,
              height: 35.0.h,
              icon: Icon(
                Icons.favorite_outline,
                color: AppColors.redAppColor,
                size:17.0.sp,
              ),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dubai",
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
                      width: 2.0.w,
                    ),
                    Text(
                      "United Arab Emirates",
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
            bottom:40,
            right: 8,
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.center,
              children: [
                const Text(
                  "43",
                  style:TextStyle(
                      color:AppColors.whiteAppColor
                  ),
                ),
                SizedBox(
                  height:4.0.h,
                ),
                const Text(
                  "/Person",
                  style:TextStyle(
                      color:AppColors.whiteAppColor
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
