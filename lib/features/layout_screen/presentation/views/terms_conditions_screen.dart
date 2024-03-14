import 'package:flutter/material.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/privacy_section.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/title_section.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
    );
  }
}
