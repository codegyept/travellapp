import 'package:flutter/material.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/custom_circle_avatar.dart';

class CommentCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String date;
  final String comment;

  const CommentCard({
    required this.imageUrl,
    required this.name,
    required this.date,
    required this.comment,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomCircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(imageUrl),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 4,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Text(
                date,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            comment,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
