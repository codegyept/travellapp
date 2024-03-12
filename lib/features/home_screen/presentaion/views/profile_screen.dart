import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_circle_avatar.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/components/profile_card_details.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                const CustomCircleAvatar(
                  backgroundImage: AssetImage(AppAssets.profile),
                  borderWidth: 10,
                  radius: 70,
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: CustomCircleAvatar(
                    backgroundColor: AppColors.blogItemContainerBackgroundColor.withOpacity(0.5),
                    radius: 30,
                    iconData: CupertinoIcons.camera,
                    iconSize: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            const Text(
              "Ryo Elif radioman",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            const Text(
              "S1 Information",
              style: TextStyle(
                fontSize: 15,
                color: Color(0xFF606060),
                fontWeight: FontWeight.w400,
                height: 1.3,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 60.w,
                      child: Divider(
                        color: AppColors.blogItemContainerBackgroundColor,
                        thickness: 2,
                        height: 10.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            const ProfileCardDetails(
              title: "Full Name",
              value: "Ryo Elif radioman",
            ),
            const ProfileCardDetails(
              title: "Email",
              value: "ryoalif1998@gmail.com",
            ),
            const ProfileCardDetails(
              title: "Juryman",
              value: "S1 Informatika",
            ),
          ],
        ),
      ),
    );
  }
}
