import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gusteau/core/extension.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';
import '../../auth/screens/sign_in_screen.dart';

class OnboardCenterSection extends StatelessWidget {
  const OnboardCenterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}
