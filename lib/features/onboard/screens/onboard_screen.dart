import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gusteau/core/assets/images.dart';
import 'package:gusteau/core/extension.dart';
import 'package:gusteau/core/theming/app_colors.dart';
import 'package:gusteau/core/theming/app_text_styles.dart';
import 'package:gusteau/features/auth/screens/sign_in_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
            itemCount: 4,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Image.asset(
                    AppImages.onboard[index],
                    fit: BoxFit.fill,
                    width: context.screenWidth,
                    height: context.screenHeight,
                  ),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              context.pushReplacement(const SignInScreen());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Skip',
                                  style: AppTextStyles.white400Size14TextStyle,
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: AppColors.whiteColor,
                                  size: 14,
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'Explore Recipes',
                            style: AppTextStyles.white700Size34TextStyle,
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          SizedBox(
                            width: context.screenWidth - 150,
                            child: Text(
                              'We provide recipes based on what you have on hand',
                              style: AppTextStyles.white400Size24TextStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(
                            height: 73.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Align(
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
          ),
        ],
      ),
    );
  }
}
