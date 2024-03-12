import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/comment_card.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/components/bolg_travel_title_section.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/components/preview_travels_section.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const BolgTravelTitleSection(
            title: "Blog name",
            address: "Dubai, United Arab Emirates",
            price: "79",
            imagePath: AppAssets.travel,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Text(
              'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia.\n\nThe mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia.\n\nThe mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia...',
              style: TextStyle(
                color: Color(0xFF8D94A2),
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Exciting Activities at A'Famosa Water Park",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    height: 1.25,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                const Text(
                  'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia.',
                  style: TextStyle(
                    color: Color(0xFF8D94A2),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "KIDS ADVENTURE",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    height: 1.25,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                const Text(
                  'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia.',
                  style: TextStyle(
                    color: Color(0xFF8D94A2),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "ARABIAN VILLAGE",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    height: 1.25,
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                const Text(
                  'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia.',
                  style: TextStyle(
                    color: Color(0xFF8D94A2),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const PreviewTravelsSection(imagesPaths: []),
          ...List.generate(
            3,
            (index) => const CommentCard(
              imageUrl: AppAssets.profile,
              name: "Lee Mohammad",
              date: "12/12/2024",
              comment:
                  "The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A  you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia,",
            ),
          ),
        ],
      ),
    );
  }
}
