import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/assets/images.dart';
import '../../../core/theming/app_text_styles.dart';

class ImageAndWelcomeBack extends StatelessWidget {
  const ImageAndWelcomeBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.splashChef,
          width: 150.w,
        ),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text(
            'Welcome back!',
            style: AppTextStyles.black600Size22RobotoFontTextStyle,
          ),
        )
      ],
    );
  }
}
