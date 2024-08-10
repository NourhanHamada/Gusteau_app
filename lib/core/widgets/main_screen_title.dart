import 'package:flutter/material.dart';

import '../theming/app_text_styles.dart';

class MainScreenTitle extends StatelessWidget {
  const MainScreenTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.black600Size24TextStyle,
    );
  }
}
