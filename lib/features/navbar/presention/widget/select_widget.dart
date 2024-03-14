import 'package:flutter/cupertino.dart';
import 'package:rehlatyuae/features/outh/register.dart';

Widget getSelectedWidget({required int index}) {
  Widget widget;
  switch (index) {
    case 0:
      widget = Register();
      break;
    case 1:
      widget = Register();
      break;
    case 2:
      widget = Register();
      break;
    default:
      widget = Register();
      break;
  }
  return widget;
}
