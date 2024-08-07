import 'package:flutter/material.dart';
import 'package:gusteau/core/theming/app_colors.dart';
import 'package:gusteau/core/theming/app_text_styles.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'SIGN IN SCREEN',
          style: AppTextStyles.white400Size24aliceFontTextStyle.copyWith(
            color: AppColors.mainColor,
          ),
        ),
      ),
    );
  }
}
