import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/about_us_screen.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/faq_screen.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/payment_options_step1_screen.dart';
import 'package:rehlatyuae/features/home_screen/presentaion/views/payment_options_step2_screen.dart';
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
      GoRoute(
        path: "/paymentOptionsScreen",
        builder: (context, state) => const PaymentOptionsScreen(),
      ),
      GoRoute(
        path: "/paymentDetailsScreen",
        builder: (context, state) => const PaymentDetailsScreen(),
      ),
      GoRoute(
        path: "/profileScreen",
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: "/travelDetailsScreen",
        builder: (context, state) => const TravelDetailsScreen(),
      ),
      GoRoute(
        path: "/blogScreen",
        builder: (context, state) => const BlogScreen(),
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
