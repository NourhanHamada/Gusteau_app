import 'package:flutter/material.dart';
import 'package:gusteau/core/theming/app_text_styles.dart';
import '../../../core/theming/app_colors.dart';

class HomeCategoriesItem extends StatelessWidget {
  const HomeCategoriesItem({
    super.key,
    required this.title,
    required this.image, this.backgroundColor,
  });

  final String title;
  final String image;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 77,
          width: 60,
          decoration: BoxDecoration(
              color: backgroundColor ?? AppColors.pinkColor,
              borderRadius: BorderRadius.circular(30),
          ),
          child: Image.asset(image),
        ),
        Text(
          title,
          style: AppTextStyles.black400Size12TextStyle,
        ),
      ],
    );
  }
}
