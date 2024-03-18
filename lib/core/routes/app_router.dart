import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/blog_screen.dart';

import '../../features/layout_screen/presentation/views/about_us_screen.dart';
import '../../features/layout_screen/presentation/views/faq_screen.dart';
import '../../features/layout_screen/presentation/views/home_screen.dart';
import '../../features/layout_screen/presentation/views/payment_details_screen.dart';
import '../../features/layout_screen/presentation/views/payment_options_screen.dart';
import '../../features/layout_screen/presentation/views/privacy_policy_screen.dart';
import '../../features/layout_screen/presentation/views/terms_conditions_screen.dart';
import '../../features/layout_screen/presentation/views/travel_details_screen.dart';
import '../../features/outh/login/presention/views/login.dart';
import '../../features/outh/register/presention/views/register.dart';
import '../../features/profile_screen/presentaion/views/profile_screen.dart';
import '../../features/splash_screen/presentation/views/onboarding.dart';
import '../../features/splash_screen/presentation/views/splash_screen.dart';

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
      GoRoute(
        path: "/homeScreen",
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: "/onboarding",
        builder: (context, state) => Onbording(),
      ),
    ],
  );
}
