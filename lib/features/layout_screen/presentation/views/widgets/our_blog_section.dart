import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/custom_row_title.dart';
import 'package:rehlatyuae/features/our_blogs/presentation/views/widgets/blog_container_item.dart';

class OurBlogSection extends StatelessWidget {
  const OurBlogSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRowTitle(
          text: AppStrings.ourBlogTitle,
          onPressed: ()
          {
            context.push(AppStrings.ourBlogsScreen);
          },
        ),
        SizedBox(
          height: 330.0.h,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const BlogContainerItem();
              },
              separatorBuilder: (context, index)
              {
                return SizedBox(
                  width: 5.0.w,
                );
              }),
        ),
      ],
    );
  }
}
