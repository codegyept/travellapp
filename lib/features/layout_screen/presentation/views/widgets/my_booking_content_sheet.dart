import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/features/our_blogs/presentation/views/widgets/row_details.dart';

class MyBookingContentSheet extends StatelessWidget {
  const MyBookingContentSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RowDetails(
          title: "AMG WORLD",
          midValue: '22/12/2024',
          value: '22\$',
        ),
        const RowDetails(
          title: "Dubai World",
          midValue: '12/12/2024',
          value: '22\$',
        ),
        const RowDetails(
          title: "Dubai Travell",
          midValue: '12/12/2023',
          value: '22\$',
        ),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}
