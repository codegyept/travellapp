import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/home_screen.dart';

import 'package:rehlatyuae/features/splash_screen/presentation/views/splash_screen.dart';

import 'package:rehlatyuae/features/home_screen/presentaion/views/about_us_screen.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/faq_screen.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/payment_options_step1_screen.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/payment_options_step2_screen.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/privacy_policy_screen.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/terms_conditions_screen.dart';



abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: "/",
        builder: (context, state) =>  HomeScreen(),
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
      GoRoute(
        path: "/paymentOptionsStep1Screen",
        builder: (context, state) => const PaymentOptionsStep1Screen(),
      ),
      GoRoute(
        path: "/paymentOptionsStep2Screen",
        builder: (context, state) => const PaymentOptionsStep2Screen(),
      ),
    ],
  );
}
