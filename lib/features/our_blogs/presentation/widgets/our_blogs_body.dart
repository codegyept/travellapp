import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/blog_container_item.dart';

class OurBlogsBody extends StatelessWidget
{
  const OurBlogsBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:1,
        childAspectRatio:3/3,
        crossAxisSpacing:10.0.w,
        mainAxisSpacing: 15.0.w,
      ),
      itemBuilder: (context,index)=> const Center(child: BlogContainerItem()),
      itemCount:8,
      shrinkWrap:true,
      physics:const ClampingScrollPhysics(),
      padding:EdgeInsets.zero,
    );
  }
}
