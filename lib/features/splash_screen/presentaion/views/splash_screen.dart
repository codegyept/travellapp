import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

// import 'package:flutter/material.dart';

// import 'package:rehlatyuae/main.dart';
//
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// @override
// SplashScreen createState() => SplashScreen();
//
// class _SplashScreenState extends State<SplashScreen> {
//   final _controller = PageController();
//   bool isLastPage = false;
//
//
//   @override
//   Widget build(BuildContext context) {
//     final screenOrientaion = MediaQuery.of(context).orientation;
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.only(bottom: 60),
//         child: PageView(
//           controller: _controller,
//           onPageChanged: (index) {
//             setState(() {
//               isLastPage = index == 2;
//             });
//           },
//           children: [
//           /  buildPage(
//               orientation: screenOrientaion,
//               imageUrl: 'images/aimg1.png', color: null,
//                 color: const Color.fromARGB(255, 232, 213, 199),
//                 title: 'تريد أن تتصدق؟',
//                 subtitle:
//                 'إن كنت تريد أن تتصدق ولكن لا تعرف احد \n او تشعر بعدم الإرتياح إن كان بينكم وسيط \n حسناً لا تقلق فنحن هنا لمساعد
//             ),
//             buildPage(
//               orientation: screenOrientaion,
//               imageUrl: 'images/splash_2.jpg',
//               color: const AppColors.),
//               title: 'تريد أن تتصدق؟',
//               subtitle:
//               'إن كنت تريد أن تتصدق ولكن لا تعرف احد \n او تشعر بعدم الإرتياح إن كان بينكم وسيط \n حسناً لا تقلق فنحن هنا لمساعدتك',
//             ),
//             buildPage(
//                 orientation: screenOrientaion,
//                 imageUrl: 'images/splash_3.jpg',
//                 color: Colors.white,
//                 title: 'اذهب بنفسك...',
//                 subtitle:
//                 'افضل طريقة للتصدق هي ان تتصدق بنفسك\n فهكذا تضمن ان صدقتك في مكانها الصحيح \n وانك اخذت كل الثواب إن شاء الله ')
//           ],
//         ),
//       ),
//       bottomSheet: SizedBox(
//         child: isLastPage
//             ? TextButton(
//             onPressed: () async {
//               final prefs = await SharedPreferences.getInstance();
//               prefs.setBool('showHome', true);
//               if (!mounted) return;
//               Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(builder: (context) => const Home()));
//             },
//             style: TextButton.styleFrom(
//               backgroundColor: Colors.teal,
//               foregroundColor: Colors.white,
//               minimumSize: const Size.fromHeight(60),
//               shape: const RoundedRectangleBorder(),
//             ),
//             child: Text('ابدأ', style: GoogleFonts.amiri(fontSize: 24)))
//             : Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             TextButton(
//               onPressed: () => _controller.jumpToPage(2),
//               child: Text(
//                 'تخطي',
//                 style:
//                 GoogleFonts.amiri(fontSize: 18, color: Colors.teal),
//               ),
//             ),
//             SizedBox(
//               height: 60,
//               child: SmoothPageIndicator(
//                 controller: _controller,
//                 count: 3,
//                 effect: const ExpandingDotsEffect(
//                   activeDotColor: Colors.teal,
//                 ),
//                 onDotClicked: (index) => _controller.animateToPage(
//                   index,
//                   duration: const Duration(milliseconds: 300),
//                   curve: Curves.easeInOut,
//                 ),
//               ),
//             ),
//             TextButton(
//               onPressed: () => _controller.nextPage(
//                   duration: const Duration(milliseconds: 300),
//                   curve: Curves.easeInOut),
//               child: Text(
//                 'التالي',
//                 style:
//                 GoogleFonts.amiri(fontSize: 18, color: Colors.teal),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// Widget buildPage({
//   required Orientation orientation,
//   required String imageUrl,
//   required Color color,
//   required String title,
//   required String subtitle,
// }) {
//   return Container(
//     color: color,
//     child: orientation == Orientation.portrait || kIsWeb
//         ? Column(
//       children: [
//         const Spacer(),
//         Text(
//           title,
//           style: GoogleFonts.amiri(
//             fontSize: 32,
//             color: Colors.black,
//           ),
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         Text(
//           subtitle,
//           style: GoogleFonts.amiri(
//             fontSize: 20,
//             color: Colors.black,
//           ),
//         ),
//         const Spacer(),
//         Image.asset(imageUrl),
//       ],
//     )
//         : Row(
//       children: [
//         const Spacer(),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               title,
//               style: GoogleFonts.amiri(
//                 fontSize: 32,
//                 color: Colors.black,
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Text(
//               subtitle,
//               style: GoogleFonts.amiri(
//                 fontSize: 20,
//                 color: Colors.black,
//               ),
//             ),
//           ],
//         ),
//         const Spacer(),
//         Image.asset(imageUrl),
//       ],
//     ),
//   );
// }
//   }
// }
