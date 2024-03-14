import 'package:flutter/material.dart';
import 'package:rehlatyuae/features/outh/register.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // Bloc.observer = MyBlocObserver();
  // setupInjector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return ScreenUtilInit(
    //   designSize:  const Size(300, 800),
    //     minTextAdapt: true,
    //     splitScreenMode: true,
    //     builder:(context,child)
    //     {
    //       return MaterialApp.router(
    //         theme: ThemeData(
    //           fontFamily: "Switzer"
    //         ),
    //         debugShowCheckedModeBanner:false,
    //         routerConfig:AppRouter.router,
    //       );
    //     }
    // );
    // Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Register(),
    );
  }
}
