import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_button.dart';
import 'package:rehlatyuae/core/utils/custom_expansion_tile.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/bolg_travel_title_section.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/experiences_section.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/preview_travels_section.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/ratings_reviews_section.dart';

class TravelDetailsScreen extends StatelessWidget {
  const TravelDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const BolgTravelTitleSection(
            title: "IMG Worlds of Adventure",
            address: "Dubai, United Arab Emirates",
            price: "79",
            imagePath: AppAssets.travel,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Text(
              'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia',
              style: TextStyle(
                color: Color(0xFF8D94A2),
                fontSize: 16,
              ),
            ),
          ),
          const CustomExpansionTile(
            title: "Highlights",
            content:
                "With more techy bells n’ webullish than our free version.With more techy bells n’ webullish than our free version.",
          ),
          const CustomExpansionTile(
            title: "Inclusions",
            content: "14,000+ Guests served",
            initiallyExpanded: false,
          ),
          const CustomExpansionTile(
            title: "Cancellation policy",
            content: "1000+ Reviews on Rehlatyuae by our Travelers",
            initiallyExpanded: false,
          ),
          const PreviewTravelsSection(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 35.h),
            child: CustomActionButton(
              text: 'Book Now',
              borderRadius: BorderRadius.circular(16),
              backGroundColor: AppColors.textAndBackgroundColorButton,
              onTap: () {
                context.push('/paymentOptionsScreen');
              },
              style: const TextStyle(color: AppColors.white),
              width: double.infinity,
              height: 50,
            ),
          ),
          const RatingsReviewsSection(),
          const CustomExpansionTile(
            title: "Highlights",
            content:
                "With more techy bells n’ webullish than our free version.With more techy bells n’ webullish than our free version.",
            initiallyExpanded: false,
          ),
          const CustomExpansionTile(
            title: "Inclusions",
            content: "14,000+ Guests served",
            initiallyExpanded: false,
          ),
          const CustomExpansionTile(
            title: "Cancellation policy",
            content: "1000+ Reviews on Rehlatyuae by our Travelers",
            initiallyExpanded: false,
          ),
          const ExperiencesSections(),
        ],
      ),
    );
  }
}
