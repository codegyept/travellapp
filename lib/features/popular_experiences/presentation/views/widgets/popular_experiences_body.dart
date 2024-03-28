import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/features/popular_experiences/presentation/views/widgets/popular_experiences_contanier_item.dart';

class PopularExperiencesBody extends StatelessWidget
{
  const PopularExperiencesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount:2,
        childAspectRatio:3/3,
        crossAxisSpacing:10.0.w,
        mainAxisSpacing: 10.0.w,
      ),
      itemBuilder: (context,index)=> PopularExperiencesContainerItem(
        width:140.w,
        popularExperiences: null,
      ),
      itemCount:8,
      shrinkWrap:true,
      physics:const ClampingScrollPhysics(),
      padding:EdgeInsets.zero,
    );
  }
}
