import 'package:flutter/material.dart';
import '../../../core/assets/icons.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';
import 'icon_button_with_arrow.dart';

class ProfileAccountSection extends StatelessWidget {
  const ProfileAccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Account',
          style: AppTextStyles.main700Size18TextStyle,
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 16,
          ),
          child: Column(
            children: [
              IconButtonWithArrow(
                onTap: () {},
                title: 'Your preferences',
                image: AppIcons.preferencesIcons,
              ),
              Divider(
                color: AppColors.lightGrayColor,
              ),
              IconButtonWithArrow(
                onTap: () {},
                title: 'Your allergies or diets',
                image: AppIcons.allergiesIcons,
              ),
              Divider(
                color: AppColors.lightGrayColor,
              ),
              IconButtonWithArrow(
                onTap: () {},
                title: 'Wishlist',
                image: AppIcons.wishlistIcon,
              ),
              Divider(
                color: AppColors.lightGrayColor,
              ),
              IconButtonWithArrow(
                onTap: () {},
                title: 'Language',
                image: AppIcons.languageIcon,
              ),
              Divider(
                color: AppColors.lightGrayColor,
              ),
              IconButtonWithArrow(
                onTap: () {},
                title: 'Notifications',
                image: AppIcons.notificationsIcon,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}