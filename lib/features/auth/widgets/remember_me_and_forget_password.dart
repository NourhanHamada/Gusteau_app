import 'package:flutter/material.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';

class RememberMeAndForgetPassword extends StatefulWidget {
  const RememberMeAndForgetPassword({super.key});

  @override
  State<RememberMeAndForgetPassword> createState() => _RememberMeAndForgetPasswordState();
}

class _RememberMeAndForgetPasswordState extends State<RememberMeAndForgetPassword> {
  bool isRememberChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isRememberChecked = !isRememberChecked;
            });
          },
          child: Row(
            children: [
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.lightGrayColor,
                  ),
                  color: AppColors.white6Color,
                ),
                child: isRememberChecked
                    ? SizedBox(
                  child: Icon(
                    Icons.done,
                    color: AppColors.mainColor,
                    size: 12,
                  ),
                )
                    : const SizedBox(),
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                'Remember me.',
                style: AppTextStyles.gray400Size14TextStyle,
              ),
            ],
          ),
        ),
        Text(
          'Forget password',
          style: AppTextStyles.blue400Size14UnderLineTextStyle,
        ),
      ],
    );
  }
}