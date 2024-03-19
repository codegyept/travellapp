import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/features/our_blogs/presentation/widgets/all_blogs_item.dart';

class OurBlogsBody extends StatelessWidget {
  const OurBlogsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:2,
        childAspectRatio:8/6,
        crossAxisSpacing:8.0.w,
        mainAxisSpacing: 10.0.w,
      ),
      itemBuilder: (context, index) =>  AllBlogsItem(
        width:170.0.w,
      ),
      itemCount: 8,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: EdgeInsets.zero,
    );
  }
}
