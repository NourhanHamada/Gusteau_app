import 'package:flutter/material.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';

class AgreeToTermsAndPrivacyPolicy extends StatelessWidget {
  const AgreeToTermsAndPrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Text(
          'By sign Up, You\'re agree to our ',
          style: AppTextStyles.black400Size12TextStyle,
        ),
        GestureDetector(
          onTap: (){},
          child: Text(
            'Terms & conditions ',
            style: AppTextStyles.black400Size12TextStyle.copyWith(color: AppColors.blueColor),
          ),
        ),
        Text(
          'and ',
          style: AppTextStyles.black400Size12TextStyle,
        ),
        GestureDetector(
          onTap: (){},
          child: Text(
            'Privacy Policy.',
            style: AppTextStyles.black400Size12TextStyle.copyWith(color: AppColors.blueColor),
          ),
        ),
      ],
    );
  }
}
