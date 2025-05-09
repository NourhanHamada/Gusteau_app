import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';

class HomePopularRecipeItem extends StatelessWidget {
  const HomePopularRecipeItem({
    super.key,
    required this.image,
    required this.title,
    required this.time,
    this.icon,
    this.titleTextStyle,
    this.onHeartTap,
    this.onImageTap,
  });

  final String image;
  final String title;
  final String time;
  final Widget? icon;
  final TextStyle? titleTextStyle;
  final Function()? onHeartTap;
  final Function()? onImageTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Stack(
        children: [
          GestureDetector(
            onTap: onImageTap,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            left: 8,
            bottom: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:
                      titleTextStyle ?? AppTextStyles.white400Size14TextStyle,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      color: AppColors.whiteColor,
                      size: 14,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      time,
                      style: AppTextStyles.black400Size12TextStyle
                          .copyWith(color: AppColors.whiteColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            top: 12,
            child: GestureDetector(
              onTap: onHeartTap,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.whiteColor,
                ),
                padding: const EdgeInsets.all(3),
                child: icon ??
                    const Icon(
                      CupertinoIcons.heart,
                      size: 16,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
