import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/drawer_item.dart';

class HelpDrawerSection extends StatelessWidget {
  const HelpDrawerSection({super.key});

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
      ],
    );
  }
}
