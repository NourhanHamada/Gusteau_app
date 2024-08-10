import 'package:flutter/material.dart';
import '../../../core/assets/icons.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';
import 'icon_button_with_arrow.dart';

class ProfilePrivacySection extends StatelessWidget {
  const ProfilePrivacySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Privacy',
          style: AppTextStyles.main700Size18TextStyle,
        ),
        const SizedBox(
          height: 10,
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
                title: 'Orders',
                image: AppIcons.ordersIcon,
              ),
              Divider(
                color: AppColors.lightGrayColor,
              ),
              IconButtonWithArrow(
                onTap: () {},
                title: 'Addresses',
                image: AppIcons.addressIcons,
              ),
              Divider(
                color: AppColors.lightGrayColor,
              ),
              IconButtonWithArrow(
                onTap: () {},
                title: 'Payment',
                image: AppIcons.paymentIcon,
              ),
              Divider(
                color: AppColors.lightGrayColor,
              ),
              IconButtonWithArrow(
                onTap: () {},
                title: 'Security',
                image: AppIcons.securityIcon,
              ),
              Divider(
                color: AppColors.lightGrayColor,
              ),
              IconButtonWithArrow(
                onTap: () {},
                title: 'Privacy & Cookies policy',
                image: AppIcons.privacyIcon,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
