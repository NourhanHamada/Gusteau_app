import 'package:flutter/material.dart';
import 'package:gusteau/core/extension.dart';
import '../../../core/theming/app_text_styles.dart';
import '../screens/sign_in_screen.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account? ',
          style: AppTextStyles.black400Size14TextStyle,
        ),
        GestureDetector(
          onTap: () {
            context.pushReplacement(const SignInScreen());
          },
          child: Text(
            'Sign Up',
            style: AppTextStyles.mainColor600Size16TextStyle,
          ),
        ),
      ],
    );
  }
}
