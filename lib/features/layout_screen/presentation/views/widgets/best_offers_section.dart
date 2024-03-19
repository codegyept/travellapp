import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/best_offers_item.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/custom_row_title.dart';

class BestOffersSection extends StatelessWidget {
  const BestOffersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRowTitle(
          text: AppStrings.bestOffersTitle,
          onPressed: ()
          {
            context.go(AppStrings.bestOffersScreen);
          },
        ),
        ListView.separated(
          shrinkWrap: true,
          physics:const NeverScrollableScrollPhysics(),
          scrollDirection:Axis.vertical,
          itemBuilder: (context,index)
          {
            return BestOffersItem(
              width:78.0.w,
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10.0.h,
            );
          },
          itemCount: 3,
        ),
      ],
    );
  }
}
