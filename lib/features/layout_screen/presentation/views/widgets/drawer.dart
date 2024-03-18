import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/help_drawer_sction.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/legal_drawer_scetion.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/my_account_drawer_sction.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        height: 130.h,
        width: 83.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bluemainlogo.png')),
        ),
      ),
      const MyAccount(),
      const Help(),
      const Legal(),
    ]);
  }
}
