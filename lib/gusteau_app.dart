import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gusteau/core/theming/light_theme.dart';
import 'package:gusteau/features/auth/screens/sign_in_screen.dart';
import 'features/splash/screens/splash_screen.dart';

class GusteauApp extends StatelessWidget {
  const GusteauApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Gusteau App',
        debugShowCheckedModeBanner: false,
        theme: lightTheme(context),
        // home: const SplashScreen(),
        home: const SignInScreen(),
      ),
    );
  }
}
