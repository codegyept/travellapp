import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_colors.dart';
import 'package:rehlatyuae/features/splash_screen/presentaion/views/unboarding.dart';

import '../../../../core/utils/custom_button.dart';
import '../../../../core/utils/custom_text_button.dart';
import '../../../outh/login/presention/views/login.dart';
import '../../../outh/register.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: PageView.builder(
                  itemCount: contents.length,
                  onPageChanged: (int index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemBuilder: (_, i) {
                    return Column(children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              contents[i].image,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/svgs/main_logo.svg',
                            ),
                          ),
                        ),
                      ),
                      Container(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    contents[i].title,
                                    style: const TextStyle(
                                      fontFamily: "Switzer",
                                      color: Colors.white70,
                                      fontSize: 32,
                                    ),
                                  ),
                                ),
                                Text(
                                  contents[i].discription,
                                  style: const TextStyle(
                                    fontFamily: "Switzer",
                                    color: Colors.white70,
                                    fontSize: 32,
                                  ),
                                ),
                              ])),
                    ]);
                  }),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => buildDot(index, context),
                ),
              ),
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.all(30),
              child: CustomActionButton(
                text: currentIndex == contents.length - 1
                    ? "Get Started"
                    : "Next",
                onTap: () {
                  if (currentIndex == contents.length - 1) {
                    GoRoute(
                        path: '/register',
                        builder: (context, state) => Register());
                  }
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn,
                  );
                },
                backGroundColor: AppColors.textAndBackgroundColorButton,
                borderRadius: BorderRadius.circular(5),
                style: const TextStyle(
                  fontFamily: "Switzer",
                  color: Colors.white70,
                ),
                width: 398,
                height: 55,
              ),
            ),
            Row(children: [
              const Text(
                'Already have an account?',
                style: TextStyle(
                  fontFamily: "Switzer",
                  color: Colors.white70,
                ),
              ),
              DefaultTextButton(
                onPressed: () => const Login(),
                text: 'Login',
              )
            ]),
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.textAndBackgroundColorButton,
      ),
    );
  }
}
