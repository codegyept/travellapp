import 'package:flutter/cupertino.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/home_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/travel_details_screen.dart';
import 'package:rehlatyuae/features/profile_screen/presentaion/views/profile_screen.dart';

Widget getSelectedWidget({required int index}) {
  Widget widget;
  switch (index) {
    case 0:
      widget = HomeScreen();
      break;
    case 1:
      widget = TravelDetailsScreen();
      break;
    case 2:
      widget = ProfileScreen();
      break;
    default:
      widget = ProfileScreen();
      break;
  }
  return widget;
}
