import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

@override
SplashScreen createState() => const SplashScreen();

class _SplashScreenState extends State<SplashScreen> {
  final _controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/images/img.png',
              ),
            ),
          ),
        ),
        // AnimatedSplashScreen(
        //   splash: Image.asset('') ,
        // nextScreen:const Onbording(),
        // splashTransition: SplashTransition.scaleTransition,
        // ),
      ],
    ));
  }
}
