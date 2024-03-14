import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/core/utils/custom_container_trip.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/custom_row_title.dart';

class BestTripsSection extends StatelessWidget {
  const BestTripsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        CustomRowTitle(
          text: AppStrings.bestTripsTitle,
          onPressed: () {},
        ),
        SizedBox(
          height:200.0.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return CustomContainerTrip(
                  width:200.0.w,
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 5.0.w,
                );
              }),
        ),
      ],
    );
  }
}
