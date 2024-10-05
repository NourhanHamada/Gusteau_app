import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gusteau/core/app_string.dart';
import 'package:gusteau/core/assets/images.dart';
import 'package:gusteau/core/extension.dart';
import 'package:gusteau/core/routing/routes.dart';
import 'package:gusteau/core/widgets/main_button.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';

class OnboardCenterSection extends StatelessWidget {
  const OnboardCenterSection({
    super.key,
    required this.index,
  });

  final int index;

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
            index == AppImages.onboard.length - 1
                ? const Row()
                : GestureDetector(
                    onTap: () {
                      context.pushReplacementNamed(Routes.signinScreen);
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
              AppString.onBoardTitles[index],
              style: AppTextStyles.white700Size34TextStyle,
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              width: context.screenWidth - 130,
              child: Text(
                AppString.onBoardSubTitles[index],
                style: AppTextStyles.white400Size24TextStyle,
                textAlign: TextAlign.center,
              ),
            ),
            index == AppImages.onboard.length - 1
                ? Padding(
                    padding: EdgeInsets.only(
                      left: 52.w,
                      right: 52.w,
                      top: 16,
                    ),
                    child: MainButton(
                        onPressed: () {
                          context.pushReplacementNamed(Routes.signinScreen);
                        },
                        title: 'Get started'),
                  )
                : const SizedBox(),
            SizedBox(
              height: 60.h,
            ),
          ],
        ),
      ),
    );
  }
}
