import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  bool selected = false;

  // late Animation<double> _animation;
  // late AnimationController _animationController ;

  @override
  void initState() {
    super.initState();
    // _animationController=AnimationController(
    //   vsync: this ,duration: Duration(seconds: 2));
    // _animation = Tween<double>(begin: 0,end: 1).animate(_animationController);

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5), () {
      GoRouter.of(context).go(AppStrings.onboarding);
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/splash.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            SizedBox(
              height: 750.h,
              child: Center(
                child: SvgPicture.asset("assets/images/main_logo.svg"),
              ),
            )
          ],
        ),
      ),
    );
  }
}