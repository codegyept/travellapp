import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/about_us_screen.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/faq_screen.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/payment_options_step1_screen.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/payment_options_step2_screen.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/privacy_policy_screen.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/terms_conditions_screen.dart';
import 'package:rehlatyuae/features/splash_screen/presentaion/views/onboarding.dart';

import '../../features/outh/login/presention/views/login.dart';
import '../../features/outh/register.dart';
import '../../features/splash_screen/presentaion/views/splash_screen.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: "/onboarding",
        builder: (context, state) => const Onbording(),
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
      GoRoute(
        path: "/register",
        builder: (context, state) => const Register(),
      ),
      GoRoute(
        path: "/login",
        builder: (context, state) => const Login(),
      ),
    ],
  );
}
