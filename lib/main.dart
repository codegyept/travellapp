import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rehlatyuae/core/routes/app_router.dart';
import 'package:rehlatyuae/features/all_trips/presentation/views/All_trips_Screen.dart';
import 'package:rehlatyuae/features/best_offers/presentation/views/best_offers_screen.dart';
import 'package:rehlatyuae/features/best_trips/presentation/views/best_trips_screen.dart';
import 'package:rehlatyuae/features/our_blogs/presentation/views/our_blogs_screen.dart';
import 'package:rehlatyuae/features/popular_experiences/presentation/views/popular_experiences_screen.dart';
import 'package:rehlatyuae/features/top_destinations_section/presentation/views/top_destination_screen.dart';
import 'core/utils/bloc_observer.dart';
import 'core/utils/injector.dart';

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  setupInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context)
  {
    return ScreenUtilInit(
      designSize:  const Size(300, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        builder:(context,child)
        {
          return MaterialApp.router(
            theme: ThemeData(
              fontFamily: "Switzer"
            ),
            debugShowCheckedModeBanner:false,
            routerConfig:AppRouter.router,
          );
        }
    );
  }
}
