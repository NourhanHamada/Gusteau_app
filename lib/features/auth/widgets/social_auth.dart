import 'package:flutter/material.dart';

import '../../../core/assets/icons.dart';

class SocialAuth extends StatelessWidget {
  const SocialAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            AppIcons.facebookIcon,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            AppIcons.googleIcon,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            AppIcons.appleIcon,
          ),
        ),
      ],
    );
  }
}
