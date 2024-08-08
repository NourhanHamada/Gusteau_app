import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';


class VerificationCodePageView extends StatefulWidget {
  const VerificationCodePageView({super.key, required this.pinCodeController});

  final TextEditingController pinCodeController;

  @override
  State<VerificationCodePageView> createState() => _VerificationCodePageViewState();
}

class _VerificationCodePageViewState extends State<VerificationCodePageView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            'Verification Code',
            style: AppTextStyles.black600Size22TextStyle,
          ),
          const SizedBox(
            height: 32,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'The code will send to +20-102-000-3000',
              style: AppTextStyles.black400Size12TextStyle
                  .copyWith(
                color: AppColors.gray6Color,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          PinCodeTextField(
            appContext: context,
            controller: widget.pinCodeController,
            length: 4,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(
                12,
              ),
              activeColor: AppColors.lightGrayColor,
              inactiveColor: AppColors.lightGrayColor,
              selectedColor: AppColors.grayColor,
              fieldHeight: 60,
              fieldWidth: 70,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Resend Code in 30s',
              style: AppTextStyles.black400Size12TextStyle
                  .copyWith(
                color: AppColors.gray6Color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}