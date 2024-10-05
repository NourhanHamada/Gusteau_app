import 'package:flutter/material.dart';
import 'package:gusteau/core/chche_keys.dart';
import 'package:gusteau/core/extension.dart';
import 'package:gusteau/core/helpers/cache_helper.dart';
import 'package:gusteau/core/routing/routes.dart';
import 'package:gusteau/core/theming/app_colors.dart';
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
      bool isFirstSeen = CacheHelper.getData(key: CacheKeys.isFirstSeen) ?? false;
      if (!isFirstSeen) {
        if (mounted) context.pushReplacementNamed(Routes.onboardingScreen);
      } else {
        if (mounted) context.pushReplacementNamed(Routes.signinScreen);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: const Center(
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
