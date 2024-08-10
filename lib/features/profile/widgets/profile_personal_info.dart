import 'package:flutter/material.dart';
import 'package:gusteau/core/theming/app_text_styles.dart';

import '../../../core/theming/app_colors.dart';

class ProfilePersonalInfo extends StatelessWidget {
  const ProfilePersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.whiteColor, borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      margin: const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.pinkColor,
                ),
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(right: 8),
                child: Text(
                  'NH',
                  style: AppTextStyles.main700Size18TextStyle,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Hello, ',
                      style: AppTextStyles.black400Size14TextStyle,
                      children: [
                        TextSpan(
                          text: 'Nourhan Hamada',
                          style: AppTextStyles.black600Size16TextStyle,
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'nourhan@gmail.com',
                  ),
                ],
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.mainColor,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Text(
              'Edit',
              style: AppTextStyles.white600Size13TextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
