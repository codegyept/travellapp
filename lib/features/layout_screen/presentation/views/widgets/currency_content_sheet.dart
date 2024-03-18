import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/row_details.dart';

class CurrencyContentSheet extends StatelessWidget {
  const CurrencyContentSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RowDetails(
          title: "United Arab Emirates Dirham",
          value: 'AED',
        ),
        const RowDetails(
          title: "United States Dollar",
          value: 'USD \$',
        ),
        const RowDetails(
          title: "Saudi Arabian Dollar",
          value: 'SAR',
        ),
        const RowDetails(
          title: "Euro",
          value: 'EUR',
        ),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}
