import 'package:go_router/go_router.dart';

import '../../features/splash_screen/presentaion/views/splash_screen.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        builder:(context, state) => const SplashScreen(),
      ),
    ],
  );
}
