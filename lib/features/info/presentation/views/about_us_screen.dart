import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_expansion_tile.dart';
import 'package:rehlatyuae/core/utils/experiences_section.dart';
import 'package:rehlatyuae/core/utils/preview_travels_section.dart';
import 'package:rehlatyuae/features/info/presentation/views/widgets/title_section.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const TitleSection(
            title: "About Us",
            subTitle: "About Rehlatyuae",
            imagePath: AppAssets.rectangle,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w).copyWith(
              top: 34.h,
            ),
            child: Text(
              'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia, The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is you can have in I',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColors.grey,
                  ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 17.h),
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            decoration: BoxDecoration(
              color: AppColors.backgroundColorExpansionAndText,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(9.r),
              ),
            ),
            child: Text(
              'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia, The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is you can have in I',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColors.white,
                  ),
            ),
          ),
          const CustomExpansionTile(
            title: "Start date Rehlatyuae",
            content: "2016 Founding Year of Rehlatyuae",
          ),
          const CustomExpansionTile(
            title: "Number of our clients",
            content: "14,000+ Guests served",
          ),
          const CustomExpansionTile(
            title: "Number of evaluations received",
            content: "1000+ Reviews on Rehlatyuae by our Travelers",
          ),
          const PreviewTravelsSection(hasBookButton: false),
          const ExperiencesSections(),
        ],
      ),
    );
  }
}
