import 'package:flutter/material.dart';
import 'package:gusteau/core/assets/images.dart';
import 'package:gusteau/core/helpers/cache_helper.dart';
import '../../../core/chche_keys.dart';
import '../widgets/onboard_background_images.dart';
import '../widgets/onboard_center_section.dart';
import '../widgets/onboard_indicator.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    CacheHelper.setData(key: CacheKeys.isFirstSeen, value: true);
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: AppImages.onboard.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  OnboardBackgroundImages(index: index),
                  OnboardCenterSection(index: index,),
                ],
              );
            },
          ),
          OnboardIndicator(
            pageController: pageController,
          ),
        ],
      ),
    );
  }
}
