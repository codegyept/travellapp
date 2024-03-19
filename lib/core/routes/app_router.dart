

import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/core/utils/app_strings.dart';
import 'package:rehlatyuae/features/all_trips/presentation/views/All_trips_Screen.dart';
import 'package:rehlatyuae/features/best_offers/presentation/views/best_offers_screen.dart';
import 'package:rehlatyuae/features/best_trips/presentation/views/best_trips_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/about_us_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/blog_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/faq_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/home_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/payment_details_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/payment_options_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/privacy_policy_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/terms_conditions_screen.dart';
import 'package:rehlatyuae/features/layout_screen/presentation/views/travel_details_screen.dart';
import 'package:rehlatyuae/features/our_blogs/presentation/views/our_blogs_screen.dart';
import 'package:rehlatyuae/features/outh/login/presention/views/login.dart';
import 'package:rehlatyuae/features/outh/register/presention/views/register.dart';
import 'package:rehlatyuae/features/popular_experiences/presentation/views/popular_experiences_screen.dart';
import 'package:rehlatyuae/features/profile_screen/presentaion/views/profile_screen.dart';
import 'package:rehlatyuae/features/splash_screen/presentation/views/onboarding.dart';
import 'package:rehlatyuae/features/splash_screen/presentation/views/splash_screen.dart';
import 'package:rehlatyuae/features/top_destinations_section/presentation/views/top_destination_screen.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: AppStrings.homeScreen,
        builder: (context, state) =>  HomeScreen(),
      ),
      GoRoute(
        path:AppStrings.allTripsScreen,
        builder: (context, state) =>   AllTripsScreen(),
      ),
      GoRoute(
        path:AppStrings.bestOffersScreen,
        builder: (context, state) =>   BestOffersScreen(),
      ),
      GoRoute(
        path: AppStrings.bestTripsScreen,
        builder: (context, state) =>   BestTripsScreen(),
      ),
      GoRoute(
        path: AppStrings.ourBlogsScreen,
        builder: (context, state) =>   OurBlogsScreen(),
      ),
      GoRoute(
        path: AppStrings.popularExperiencesScreen,
        builder: (context, state) =>   PopularExperiencesScreen(),
      ),
      GoRoute(
        path: AppStrings.topDestinationScreen,
        builder: (context, state) =>   TopDestinationScreen(),
      ),
      GoRoute(
        path: AppStrings.aboutUsScreen,
        builder: (context, state) => const AboutUsScreen(),
      ),
      GoRoute(
        path: AppStrings.termsConditionsScreen,
        builder: (context, state) => const TermsConditionsScreen(),
      ),
      GoRoute(
        path: AppStrings.privacyPolicyScreen,
        builder: (context, state) => const PrivacyPolicyScreen(),
      ),
      GoRoute(
        path: AppStrings.faqsScreen,
        builder: (context, state) => const FAQsScreen(),
      ),
      GoRoute(
        path: AppStrings.paymentOptionsScreen,
        builder: (context, state) => const PaymentOptionsScreen(),
      ),
      GoRoute(
        path: AppStrings.paymentDetailsScreen,
        builder: (context, state) => const PaymentDetailsScreen(),
      ),
      GoRoute(
        path: AppStrings.profileScreen,
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: AppStrings.travelDetailsScreen,
        builder: (context, state) => const TravelDetailsScreen(),
      ),
      GoRoute(
        path:AppStrings.blogScreen,
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
        path: "/onboarding",
        builder: (context, state) => Onbording(),
      ),
    ],
  );
}
