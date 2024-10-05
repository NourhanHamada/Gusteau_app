import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gusteau/core/theming/light_theme.dart';
import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class GusteauApp extends StatefulWidget {
  const GusteauApp({super.key});

  @override
  State<GusteauApp> createState() => _GusteauAppState();
}

class _GusteauAppState extends State<GusteauApp> {


  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Gusteau App',
        debugShowCheckedModeBanner: false,
        theme: lightTheme(context),
        initialRoute: Routes.splashScreen,
        onGenerateRoute: AppRouter().generateRoute,
      ),
    );
  }
}
