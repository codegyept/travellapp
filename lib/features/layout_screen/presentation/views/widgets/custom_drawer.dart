import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/drawer_item.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 30.h),
        child: Column(
          children: [
            SvgPicture.asset(AppAssets.blueLogo),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
              child: Row(
                children: [
                  Text(
                    "My Account",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.backgroundColorExpansionAndText,
                      fontWeight: FontWeight.w700,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            DrawerItem(
              title: 'Credits',
              iconPath: AppAssets.credits,
              trailing: [
                Text(
                  "\$0.0",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: AppColors.backgroundColorExpansionAndText,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            DrawerItem(
              title: 'Currency',
              iconPath: AppAssets.currency,
              trailing: [
                Text(
                  "USD\$",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: AppColors.backgroundColorExpansionAndText,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios_sharp,
                ),
              ],
            ),
            DrawerItem(
              title: 'Language',
              iconPath: AppAssets.language,
              trailing: [
                Text(
                  "English",
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: AppColors.backgroundColorExpansionAndText,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios_sharp,
                ),
              ],
            ),
            DrawerItem(
              title: 'Notifications',
              iconPath: AppAssets.notifications,
              trailing: [
                Switch(
                  value: true,
                  onChanged: (value) {},
                ),
              ],
            ),
            //
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
              child: Row(
                children: [
                  Text(
                    "Help",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.backgroundColorExpansionAndText,
                      fontWeight: FontWeight.w700,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            const DrawerItem(
              title: 'My booking',
              iconPath: AppAssets.myBooking,
              trailing: [
                Icon(
                  Icons.arrow_forward_ios_sharp,
                ),
              ],
            ),
            const DrawerItem(
              title: 'Send message',
              iconPath: AppAssets.sendMessage,
              trailing: [
                Icon(
                  Icons.arrow_forward_ios_sharp,
                ),
              ],
            ),
            //
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
              child: Row(
                children: [
                  Text(
                    "Legal",
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: AppColors.backgroundColorExpansionAndText,
                      fontWeight: FontWeight.w700,
                      height: 1.3,
                    ),
                  ),
                ],
              ),
            ),
            const DrawerItem(
              title: 'Privacy Policy',
              iconPath: AppAssets.privacyPolicy,
              trailing: [
                Icon(
                  Icons.arrow_forward_ios_sharp,
                ),
              ],
            ),
            const DrawerItem(
              title: 'Terms of Usage',
              iconPath: AppAssets.terms,
              trailing: [
                Icon(
                  Icons.arrow_forward_ios_sharp,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            const DrawerItem(
              title: 'Update App',
              iconPath: AppAssets.updateApp,
              trailing: [
                Icon(
                  Icons.arrow_forward_ios_sharp,
                ),
              ],
            ),
            const DrawerItem(
              title: 'About App',
              iconPath: AppAssets.aboutApp,
              trailing: [
                Icon(
                  Icons.arrow_forward_ios_sharp,
                ),
              ],
            ),
            const DrawerItem(
              title: 'Logout',
              iconPath: AppAssets.logout,
              trailing: [
                Icon(
                  Icons.arrow_forward_ios_sharp,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Text(
                "Version 2.2.22",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: AppColors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
