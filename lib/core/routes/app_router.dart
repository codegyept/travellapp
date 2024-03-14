import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/features/auth_screen/presentation/views/forget_password_screen.dart';
import 'package:rehlatyuae/features/auth_screen/presentation/views/update_password_screen.dart';
import 'package:rehlatyuae/features/auth_screen/presentation/views/verification_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/about_us_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/blog_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/faq_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/home_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/payment_details_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/payment_options_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/privacy_policy_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/terms_conditions_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/travel_details_screen.dart';
import 'package:rehlatyuae/features/profile_screen/presentation/views/edit_profile_screen.dart';
import 'package:rehlatyuae/features/profile_screen/presentation/views/profile_screen.dart';
import 'package:rehlatyuae/features/splash_screen/presentation/views/splash_screen.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/splashScreen",
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: "/",
        builder: (context, state) => HomeScreen(),
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
        path: "/editProfileScreen",
        builder: (context, state) => const EditProfileScreen(),
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
        path: "/verificationScreen",
        builder: (context, state) => const VerificationScreen(),
      ),
      GoRoute(
        path: "/updatePasswordScreen",
        builder: (context, state) => const UpdatePasswordScreen(),
      ),
      GoRoute(
        path: "/forgetPasswordScreen",
        builder: (context, state) => const ForgetPasswordScreen(),
      ),
    ],
  );
}
