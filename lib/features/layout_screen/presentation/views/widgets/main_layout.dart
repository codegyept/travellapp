import 'package:flutter/material.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/home_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:rehlatyuae/features/profile_screen/presentation/views/profile_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int currentTab = 0;
  List<Widget> tabs = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTab],
      bottomNavigationBar: CustomBottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentTab = index;
          });
        },
      ),
    );
  }
}
