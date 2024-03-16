import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/privacy_section.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/title_section.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        thickness: 8,
        interactive: true,
        trackVisibility: true,
        thumbVisibility: true,
        radius: Radius.circular(10.r),
        child: ListView(
          children: const [
            TitleSection(
              title: AppStrings.termsConditions,
              subTitle: AppStrings.termsConditions,
              imagePath: AppAssets.rectangle,
            ),
            PrivacySection(
              title: AppStrings.termsConditions,
              content: AppStrings.termsConditionsContent,
            ),
          ],
        ),
      ),
    );
  }
}
