import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/core/utils/icon_button_with_white_background.dart';
import '../../../data/models/popular_experiences_model.dart';

class PopularExperiencesContainerItem extends StatelessWidget {
  const PopularExperiencesContainerItem({
    super.key,
    required this.width,
    this.oldTripPrice,
    this.percentageSave,
    required this.popularExperiences,
  });

  final double width;
  final String? oldTripPrice;
  final String? percentageSave;
  final PopularExperiences?popularExperiences;

  @override
  Widget build(BuildContext context)
  {
    return InkWell(
      onTap: () {
        context.push(AppStrings.travelDetailsScreen);
      },
      child: SizedBox(
        height: 180.0.h,
        width: width,
        child: Stack(
          children: [
            Container(
              height: 180.0.h,
              width: width,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(15.0.r),
                image: DecorationImage(
                  image: NetworkImage(
                  popularExperiences?.imagePath ?? "",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if ((oldTripPrice != null || percentageSave != null) &&
               ( percentageSave!.isNotEmpty||oldTripPrice!.isNotEmpty))
              Positioned(
                top: 16,
                left: 6,
                child: Row(
                  children: [
                    Text(
                      oldTripPrice ?? "",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Container(
                      width: 62.0.w,
                      height: 20.0.h,
                      margin:
                          EdgeInsetsDirectional.symmetric(horizontal: 4.0.w),
                      padding: EdgeInsetsDirectional.symmetric(
                        horizontal: 4.0.w,
                        vertical: 1.3.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.green,
                        borderRadius: BorderRadius.circular(8.0.r),
                      ),
                      child: Text(
                       " $percentageSave% saved" ,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
            Positioned(
              top: 8,
              right: 8,
              child: IconButtonWithWhiteBackground(
                onPressed: () {},
                width: 30.0.w,
                height: 35.0.h,
                icon: Icon(
                  Icons.favorite_outline,
                  color: AppColors.redAppColor,
                  size: 17.0.sp,
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    popularExperiences?.name ?? "Dubai",
                    style: Theme.of(context).textTheme.displayMedium,
                  ),
                  SizedBox(
                    height: 5.0.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on_sharp,
                        color: AppColors.whiteAppColor,
                        size: 14.0.sp,
                      ),
                      SizedBox(
                        width: 2.0.w,
                      ),
                      Text(
                        popularExperiences?.address ?? "United Arab Emirates",
                        style: Theme.of(context).textTheme.bodySmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 40,
              right: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    popularExperiences?.adultPrice.toString() ?? "43",
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  SizedBox(
                    height: 4.0.h,
                  ),
                  Text(
                    "/Person",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
