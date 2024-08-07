import 'package:flutter/material.dart';
import 'package:gusteau/core/extension.dart';
import 'package:gusteau/core/theming/app_colors.dart';
import 'package:gusteau/features/onboard/screens/onboard_screen.dart';
import '../widgets/splash_chef.dart';
import '../widgets/splash_main_text.dart';
import '../widgets/splash_sub_title.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed((const Duration(seconds: 4)), () {
      context.pushReplacement(const OnboardScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body:  const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SplashChef(),
            SplashMainText(),
            SplashSubTitle(),
          ],
        ),
      ),
    );
  }
}
