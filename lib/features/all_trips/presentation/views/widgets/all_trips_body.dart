import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/utils/custom_container_trip.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
class AllTripsBody extends StatelessWidget {
  const AllTripsBody({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount:2,
      childAspectRatio:2.2/3,
      crossAxisSpacing:10.0.w,
      mainAxisSpacing: 1.0.w,
    ),
      itemBuilder: (context,index)=> CustomContainerTrip(
        width:140.0.w,
        cityName: "Dubai",
        countryName:"United Arab Emirates",
        imageName: AppStrings.containerTripBackgroundImage,
        tripPrice:"43",
        reservationType:"/person",
      ),
      itemCount:8,
      shrinkWrap:true,
      physics:const ClampingScrollPhysics(),
      padding:EdgeInsets.zero,
    );
  }
}
