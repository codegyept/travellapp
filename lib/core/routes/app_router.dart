import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/about_us_screen.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/faq_screen.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/privacy_policy_screen.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/terms_conditions_screen.dart';

import '../../features/splash_screen/presentaion/views/splash_screen.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: "/aboutUsScreen",
        builder: (context, state) => const AboutUsScreen(),
      ),
      GoRoute(
        path: "/termsConditionsScreen",
        builder: (context, state) => const TermsConditionsScreen(),
      ),
      GoRoute(
        path: "/privacyPolicyScreen",
        builder: (context, state) => const PrivacyPolicyScreen(),
      ),
      GoRoute(
        path: "/faqsScreen",
        builder: (context, state) => const FAQsScreen(),
      ),
    ],
  );
}
