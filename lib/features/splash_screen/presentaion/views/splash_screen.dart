import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  // void initState() {
  //   super.initState();
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  //   Future.delayed(Duration(milliseconds: 500), () {
  //     GoRouter.of(context).go('/onboarding');
  //   });
  // }

  // @override
  // void dispose() {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  //       overlays: SystemUiOverlay.values);
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/img.png',
                ),
              ),
            ),
          ),
          // Container(
          //   padding:  const EdgeInsets.all(30),
          //   child: AnimatedSplashScreen(
          //     splash: SvgPicture.asset('assets/images/main_logo.svg'),
          //     nextScreen: Onbording(),
          //     splashTransition: SplashTransition.scaleTransition,
          //   ),
          // ),
        ],
      ),
    );
  }
}