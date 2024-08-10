import 'package:flutter/material.dart';
import 'package:gusteau/core/theming/app_colors.dart';

import '../theming/app_text_styles.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
    required this.image,
    required this.title,
    this.color,
    this.titleColor,
  });

  final String image;
  final String title;
  final Color? titleColor;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color ?? AppColors.white9Color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            Text(
              title,
              style: AppTextStyles.black700Size16TextStyle.copyWith(
                color: titleColor ?? AppColors.blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
