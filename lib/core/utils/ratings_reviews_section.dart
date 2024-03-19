import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/comment_card.dart';
import 'package:rehlatyuae/core/utils/custom_rating_bar.dart';

class RatingsReviewsSection extends StatelessWidget {
  const RatingsReviewsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Ratings & Reviews",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Icon(
                Icons.star_border_rounded,
                size: 25.h,
                color: AppColors.textAndBackgroundColorButton,
              ),
              SizedBox(
                width: 5.w,
              ),
              const Text(
                "4.2 (852)",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const CustomRatingBar(
            starCount: 5,
            ratingCount: 180,
            progressPercent: 0.8,
          ),
          const CustomRatingBar(
            starCount: 4,
            ratingCount: 249,
            progressPercent: 0.5,
          ),
          const CustomRatingBar(
            starCount: 3,
            ratingCount: 180,
            progressPercent: 0.3,
          ),
          const CustomRatingBar(
            starCount: 2,
            ratingCount: 180,
            progressPercent: 0.2,
          ),
          const CustomRatingBar(
            starCount: 1,
            ratingCount: 180,
            progressPercent: 0.1,
          ),
          SizedBox(
            height: 30.h,
          ),
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
