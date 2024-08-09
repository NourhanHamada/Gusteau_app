import 'package:flutter/material.dart';

import '../../../core/theming/app_text_styles.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
        top: 16,
      ),
      child: Text(
        title,
        style: AppTextStyles.black400Size16TextStyle.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
