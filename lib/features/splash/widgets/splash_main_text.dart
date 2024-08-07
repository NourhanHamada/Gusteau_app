import 'package:flutter/material.dart';
import 'package:gusteau/core/theming/app_text_styles.dart';

class SplashMainText extends StatelessWidget {
  const SplashMainText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'GUSTEAU',
      style: AppTextStyles.white700Siz40KaiseiOptiFontTextStyle,
    );
  }
}
