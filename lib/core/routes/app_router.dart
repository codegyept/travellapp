import 'package:go_router/go_router.dart';
import 'package:rehlatyuae/features/splash_screen/presentation/views/splash_screen.dart';


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
