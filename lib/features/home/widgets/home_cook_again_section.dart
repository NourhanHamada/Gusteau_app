import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/assets/images.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';
import 'home_title.dart';

class HomeCookAgainSection extends StatefulWidget {
  const HomeCookAgainSection({super.key});

  @override
  State<HomeCookAgainSection> createState() => _HomeCookAgainSectionState();
}

class _HomeCookAgainSectionState extends State<HomeCookAgainSection> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeTitle(
          title: 'Cook again',
        ),
        SizedBox(
          height: 160,
          child: Stack(
            children: [
              PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        AppImages.pizza,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SmoothPageIndicator(
                      controller: pageController,
                      count: 5,
                      effect: SwapEffect(
                        dotWidth: 6,
                        dotHeight: 6,
                        activeDotColor: AppColors.mainColor,
                        dotColor: AppColors.whiteColor,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 16,
                right: 0,
                top: 16,
                child: Row(
                  children: [
                    Text(
                      'Italian peperoni pizza',
                      style: AppTextStyles.mainColor600Size16TextStyle
                          .copyWith(color: AppColors.whiteColor),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}