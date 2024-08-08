import 'package:flutter/material.dart';

import '../../../core/theming/app_text_styles.dart';

class DonotHaveAnAccount extends StatelessWidget {
  const DonotHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account? ',
          style: AppTextStyles.black400Size14TextStyle,
        ),
        GestureDetector(
          onTap: () {},
          child: Text(
            'Sign Up',
            style: AppTextStyles.mainColor600Size16TextStyle,
          ),
        ),
      ],
    );
  }
}
