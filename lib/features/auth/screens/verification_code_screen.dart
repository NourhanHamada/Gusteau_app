import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gusteau/core/extension.dart';
import 'package:gusteau/features/layout/screens/layout_screen.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';
import '../widgets/verification-and_set_up_steps.dart';
import '../widgets/verification_and_set_up_button.dart';
import '../widgets/verification_and_set_up_pages.dart';

class VerificationCodeScreen extends StatefulWidget {
  const VerificationCodeScreen({super.key});

  @override
  State<VerificationCodeScreen> createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {
  late TextEditingController pinCodeController;
  late PageController pageController;
  bool isLastPage = false;
  bool isFirstPage = true;
  int activeStep = 0;

  @override
  void initState() {
    super.initState();
    pinCodeController = TextEditingController();
    pageController = PageController();
    pageController.addListener(() {
      pageListener();
    });
  }

  @override
  void dispose() {
    pinCodeController.dispose();
    pageController.removeListener(() {
      pageListener();
    });
    super.dispose();
  }

  pageListener() {
    if (pageController.page == 2) {
      setState(() {
        isLastPage = true;
      });
    } else if (pageController.page != 0) {
      setState(() {
        isFirstPage = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            top: 16.0,
          ),
          child: Stack(
            children: [
              // PageView
              VerificationAndSetUpPages(
                pageController: pageController,
                pinCodeController: pinCodeController,
              ),
              // EasyStepper
              Positioned(
                top: context.screenTopInset,
                right: 0,
                left: 0,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      VerificationAndSetUpSteps(
                        isFirstPage: isFirstPage,
                        activeStep: activeStep,
                        onStepReached: (index) =>
                            setState(() => activeStep = index),
                      ),
                    ],
                  ),
                ),
              ),
              // Bottom button
              VerificationAndSetUpButton(
                pageController: pageController,
                isLastPage: isLastPage,
                onPressed: () {
                  setState(() {
                    activeStep = pageController.page!.toInt() + 1;
                  });
                  if (!isLastPage) {
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear,
                    );
                  } else {
                    context.pushReplacement(const LayoutScreen());
                  }
                },
              ),

              isFirstPage
                  ? const SizedBox()
                  : Positioned(
                      top: context.screenTopInset + 20,
                      right: 8,
                      child: GestureDetector(
                        onTap: () {
                          context.pushReplacement(const LayoutScreen());
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Skip',
                              style: AppTextStyles.white400Size14TextStyle
                                  .copyWith(
                                color: AppColors.mainColor,
                              ),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppColors.mainColor,
                              size: 14,
                            ),
                          ],
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
