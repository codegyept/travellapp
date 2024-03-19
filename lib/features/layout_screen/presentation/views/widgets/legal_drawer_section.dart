import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/drawer_item.dart';

class LegalDrawerSection extends StatelessWidget {
  const LegalDrawerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        DrawerItem(
          title: 'Privacy Policy',
          iconPath: AppAssets.privacyPolicy,
          trailing: const [
            Icon(
              Icons.arrow_forward_ios_sharp,
            ),
          ],
          onTap: () {
            context.push('/privacyPolicyScreen');
          },
        ),
        DrawerItem(
          title: 'Terms of Usage',
          iconPath: AppAssets.terms,
          trailing: const [
            Icon(
              Icons.arrow_forward_ios_sharp,
            ),
          ],
          onTap: () {
            context.push('/termsConditionsScreen');
          },
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
        DrawerItem(
          title: 'About App',
          iconPath: AppAssets.aboutApp,
          trailing: const [
            Icon(
              Icons.arrow_forward_ios_sharp,
            ),
          ],
          onTap: () {
            context.push('/aboutUsScreen');
          },
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
      ],
    );
  }
}
