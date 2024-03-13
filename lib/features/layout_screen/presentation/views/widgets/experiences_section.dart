import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/custom_container_trip.dart';

class ExperiencesSections extends StatelessWidget {
  const ExperiencesSections({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 25),
          child: const Text(
            "Similar experiences you'd love",
            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: 215.h,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (context, index) => CustomContainerTrip(
              width: 225.w,
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 12),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 25),
          child: const Text(
            "Popular Experiences",
            style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        SizedBox(
          height: 215.h,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (context, index) => CustomContainerTrip(
              width: 140.w,
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 12),
          ),
        ),
      ],
    );
  }
}
