import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rehlatyuae/core/utils/app_assets.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      items: [
        CurvedNavigationBarItem(
          child: SvgPicture.asset(
            AppAssets.homeIcon,
          ),
          label: "Home",
          labelStyle: const TextStyle(
            color: AppColors.white,
          ),
        ),
        CurvedNavigationBarItem(
          child: SvgPicture.asset(
            AppAssets.searchIcon,
          ),
          label: "Search",
          labelStyle: const TextStyle(
            color: AppColors.white,
          ),
        ),
        CurvedNavigationBarItem(
          child: SvgPicture.asset(
            AppAssets.bookingIcon,
          ),
          label: "Booking",
          labelStyle: const TextStyle(
            color: AppColors.white,
          ),
        ),
        CurvedNavigationBarItem(
          child: SvgPicture.asset(
            AppAssets.exploreIcon,
          ),
          label: "Explore",
          labelStyle: const TextStyle(
            color: AppColors.white,
          ),
        ),
        CurvedNavigationBarItem(
          child: SvgPicture.asset(
            AppAssets.accountIcon,
          ),
          label: "Account",
          labelStyle: const TextStyle(
            color: AppColors.white,
          ),
        ),
      ],
      index: index,
      onTap: (selctedIndex) {
        setState(() {
          index = selctedIndex;
        });
      },
      backgroundColor: AppColors.white,
      buttonBackgroundColor: AppColors.yellow,
      color: AppColors.blogItemBackgroundColor,
      animationDuration: const Duration(milliseconds: 300),
    );
  }
}
