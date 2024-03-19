import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/features/our_blogs/presentation/views/widgets/row_details.dart';

class LanguageContentSheet extends StatelessWidget {
  const LanguageContentSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const RowDetails(
          title: "Arabic",
          value: 'AR',
        ),
        const RowDetails(
          title: "United States",
          value: 'USD \$',
        ),
        const RowDetails(
          title: "OURDO",
          value: 'OU',
        ),
        SizedBox(
          height: 50.h,
        ),
      ],
    );
  }
}
