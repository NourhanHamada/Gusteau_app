import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';

class OnboardIndicator extends StatelessWidget {
  const OnboardIndicator({super.key, required this.pageController,});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SmoothPageIndicator(
              controller: pageController,
              count: 4,
              effect: SwapEffect(
                activeDotColor: AppColors.mainColor,
                dotColor: AppColors.whiteColor,
                dotWidth: 12,
                dotHeight: 12,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              'Swipe left',
              style: AppTextStyles.white400Size14TextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
