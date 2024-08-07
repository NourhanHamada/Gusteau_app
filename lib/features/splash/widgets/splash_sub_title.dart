import 'package:flutter/material.dart';

import '../../../core/theming/app_text_styles.dart';

class SplashSubTitle extends StatefulWidget {
  const SplashSubTitle({super.key});

  @override
  State<SplashSubTitle> createState() => _SplashSubTitleState();
}

class _SplashSubTitleState extends State<SplashSubTitle> {

  bool isAnimated = false;

  @override
  void initState() {
    super.initState();
    animate();
  }

  animate(){
    Future.delayed((const Duration(seconds: 2)), (){
      setState(() {
        isAnimated = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(seconds: 1),
      opacity: isAnimated ? 1 : 0,
      child: Text(
        'Anyone can cook',
        style: AppTextStyles.white400Size24aliceFontTextStyle,
      ),
    );
  }
}