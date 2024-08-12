import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../theming/app_colors.dart';
import '../theming/app_text_styles.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.backgroundColor,
    this.borderColor,
    this.textColor, this.radius, this.height,
  });

  final Function() onPressed;
  final String title;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? textColor;
  final double? radius;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius ?? 30),
            color: backgroundColor ?? AppColors.mainColor,
            border: Border.all(
              color: AppColors.mainColor,
            ),),
        padding: const EdgeInsets.all(14),
        height: height ?? 52.h,
        child: Center(
          child: Text(
            title,
            style: AppTextStyles.white400Size18TextStyle.copyWith(
              color: textColor ?? AppColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
