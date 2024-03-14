import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../widget/select_widget.dart';

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _State();
}

class _State extends State<Navbar> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon(
            Icons.home_outlined,
            size: 40,
          ),
          Icon(Icons.search_off_sharp, size: 40),
          Icon(Icons.travel_explore_rounded, size: 40),
          Icon(Icons.calendar_month_sharp, size: 40),
          Icon(Icons.person, size: 40),
        ],
        index: index,
        onTap: (selctedIndex) {
          setState(() {
            index = selctedIndex;
          });
        },
        backgroundColor: AppColors.white,
        buttonBackgroundColor: AppColors.orange,
        color: AppColors.Navbackground,
        animationDuration: const Duration(milliseconds: 300),
      ),
      body: Container(child: getSelectedWidget(index: index)),
    );
  }
}
