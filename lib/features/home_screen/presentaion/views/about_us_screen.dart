import 'package:flutter/material.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/custom_expansion_tile.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/components/title_section.dart';

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
            padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 34),
            child: const Text(
              'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia, The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is you can have in I',
              style: TextStyle(
                color: Color(0xFF8D94A2),
                fontSize: 16,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            decoration: const BoxDecoration(
              color: Color(0xFF263238),
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(9),
              ),
            ),
            child: const Text(
              'The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is one of the most exhilarating experiences you can have in Indonesia. At 3,726 meters tall, Gunung Rinjani is the second highest mountain in Indonesia, The mighty Rinjani mountain of Gunung Rinjani is a massive volcano which towers over the island of Lombok. A climb to the top is you can have in I',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Preview",
                  style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xFFF6F8FA),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "4,8",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 110,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (context, index) => Container(
                width: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/preview${index % 4 + 1}.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(width: 12),
            ),
          ),
        ],
      ),
    );
  }
}
