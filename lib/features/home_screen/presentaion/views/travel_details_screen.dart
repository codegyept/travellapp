import 'package:flutter/material.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/custom_expansion_tile.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/components/bolg_travel_title_section.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/components/preview_travels_section.dart';

class TravelDetailsScreen extends StatelessWidget {
  const TravelDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          BolgTravelTitleSection(
            title: "IMG Worlds of Adventure",
            address: "Dubai, United Arab Emirates",
            price: "79",
            imagePath: AppAssets.travel,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            child: Text(
              'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia',
              style: TextStyle(
                color: Color(0xFF8D94A2),
                fontSize: 16,
              ),
            ),
          ),
          CustomExpansionTile(
            title: "Highlights",
            content:
                "With more techy bells n’ webullish than our free version.With more techy bells n’ webullish than our free version.",
          ),
          CustomExpansionTile(
            title: "Inclusions",
            content: "14,000+ Guests served",
            initiallyExpanded: false,
          ),
          CustomExpansionTile(
            title: "Cancellation policy",
            content: "1000+ Reviews on Rehlatyuae by our Travelers",
          initiallyExpanded: false,
          ),
          PreviewTravelsSection(imagesPaths: []),
        ],
      ),
    );
  }
}
