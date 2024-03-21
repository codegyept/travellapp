import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_circle_avatar.dart';

class ProfilePhotoSection extends StatelessWidget {
  const ProfilePhotoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Stack(
              children: [
                CustomCircleAvatar(
                  backgroundImage: const AssetImage(AppAssets.profile),
                  borderWidth: 10.h,
                  radius: 70.h,
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: CustomCircleAvatar(
                    backgroundColor: AppColors.blogItemContainerBackgroundColor.withOpacity(0.5),
                    radius: 30.r,
                    iconData: CupertinoIcons.camera,
                    iconSize: 30.h,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              "Ryo Elif radioman",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            SizedBox(
              height: 7.h,
            ),
            Text(
              "S1 Information",
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: AppColors.grayLight,
                  ),
            ),
          ],
        ),
      ],
    );
  }
}
