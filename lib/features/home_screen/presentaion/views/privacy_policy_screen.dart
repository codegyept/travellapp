import 'package:flutter/material.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/components/privacy_section.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/components/title_section.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          TitleSection(
            title: "Privacy Policy",
            subTitle: "Privacy Policy",
            imagePath: AppAssets.rectangle,
          ),
          PrivacySection(
            title: "Privacy Policy",
            content: AppStrings.privacyPolicyContent,
          ),
        ],
      ),
    );
  }
}