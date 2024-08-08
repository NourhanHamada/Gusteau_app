import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.mainColor,
        ),
        padding: const EdgeInsets.all(14),
        height: 52.h,
        child: Center(
          child: Text(
            title,
            style: AppTextStyles.white400Size18TextStyle,
          ),
        ),
      ),
    );
  }
}
