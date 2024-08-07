import 'package:flutter/material.dart';
import '../../../core/assets/images.dart';

class SplashChef extends StatefulWidget {
  const SplashChef({super.key});

  @override
  State<SplashChef> createState() => _SplashChefState();
}

class _SplashChefState extends State<SplashChef> {
  bool isAnimate = false;

  @override
  void initState() {
    super.initState();
    animate();
  }

  animate() {
    Future.delayed((const Duration(milliseconds: 300)), () {
      setState(() {
        isAnimate = true;
      });
    }).then((value) => {
          Future.delayed((const Duration(seconds: 1)), () {
            setState(() {
              isAnimate = false;
            });
          })
        });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        seconds: 1,
      ),
      width: !isAnimate ? 200 : 250,
      child: Image.asset(AppImages.splashChef),
    );
  }
}