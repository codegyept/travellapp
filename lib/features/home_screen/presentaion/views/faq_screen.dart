import 'package:flutter/material.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/custom_expansion_tile.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/components/title_section.dart';

class FAQsScreen extends StatelessWidget {
  const FAQsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          TitleSection(
            title: "FAQs",
            subTitle: "FAQs",
            imagePath: AppAssets.rectangle,
          ),
          CustomExpansionTile(
            title: "Start date Rehlatyuae",
            content: "2016 Founding Year of Rehlatyuae",
          ),
          CustomExpansionTile(
            title: "Number of our clients",
            content: "14,000+ Guests served",
          ),
          CustomExpansionTile(
            title: "Number of evaluations received",
            content: "1000+ Reviews on Rehlatyuae by our Travelers",
          ),
        ],
      ),
    );
  }
}
