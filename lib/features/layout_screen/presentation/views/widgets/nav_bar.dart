import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _State();
}

class _State extends State<Navbar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
      height: 80.h,
      items: [
        CurvedNavigationBarItem(
          child: SvgPicture.asset(
            'assets/images/home_icon.svg',
          ),
          label: 'Home',
          labelStyle: Theme.of(context).textTheme.bodySmall,
        ),
        CurvedNavigationBarItem(
          child: SvgPicture.asset(
            'assets/images/search_icon.svg',
          ),
          label: 'Search',
          labelStyle: Theme.of(context).textTheme.bodySmall,
        ),
        CurvedNavigationBarItem(
          child: SvgPicture.asset(
            'assets/images/explore_icon.svg',
          ),
          label: 'Explore',
          labelStyle: Theme.of(context).textTheme.bodySmall,
        ),
        CurvedNavigationBarItem(
          child: SvgPicture.asset(
            'assets/images/booking_icon.svg',
          ),
          label: 'Bookings',
          labelStyle: Theme.of(context).textTheme.bodySmall,
        ),
        CurvedNavigationBarItem(
          child: SvgPicture.asset(
            'assets/images/account_icon.svg',
          ),
          label: 'Account',
          labelStyle: Theme.of(context).textTheme.bodySmall,
        ),
      ],
      index: index,
      onTap: (selctedIndex) {
        setState(() {
          index = selctedIndex;
        });
      },
      backgroundColor: AppColors.white,
      buttonBackgroundColor: AppColors.orange,
      color: AppColors.navbackground,
      animationDuration: const Duration(milliseconds: 300),
      // child:getSelectedWidget(index: index),
    ));
  }
}
