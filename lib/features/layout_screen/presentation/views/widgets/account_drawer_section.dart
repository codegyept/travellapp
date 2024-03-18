import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/currency_content_sheet.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/cusotm_bottom_sheet.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/drawer_item.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/language_content_sheet.dart';

class AccountDrawerSection extends StatelessWidget {
  const AccountDrawerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.w,
            vertical: 20.h,
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
                fontSize: 12.sp,
                color: AppColors.backgroundColorExpansionAndText,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_sharp,
            ),
          ],
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              builder: (context) => const CustomBottomSheet(
                title: 'Select Currency',
                avatarText: '\$',
                contentSheet: CurrencyContentSheet(),
              ),
            );
          },
        ),
        DrawerItem(
          title: 'Language',
          iconPath: AppAssets.language,
          trailing: [
            Text(
              "English",
              style: TextStyle(
                fontSize: 12.sp,
                color: AppColors.backgroundColorExpansionAndText,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios_sharp,
            ),
          ],
          onTap: () {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
              builder: (context) => const CustomBottomSheet(
                title: 'Select Language',
                avatarText: 'AR',
                contentSheet: LanguageContentSheet(),
              ),
            );
          },
        ),
        DrawerItem(
          title: 'Notifications',
          iconPath: AppAssets.notifications,
          trailing: [
            Transform.scale(
              scale: 0.8,
              child: Switch(
                value: true,
                onChanged: (value) {},
                trackOutlineWidth: MaterialStateProperty.resolveWith<double?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.disabled)) {
                      return 2.0;
                    }
                    return 2.0;
                  },
                ),
                trackColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    return AppColors.textAndBackgroundColorButton;
                  },
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
