import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gusteau/core/extension.dart';
import 'package:gusteau/features/notifications/screens/notification_screen.dart';
import '../../../core/assets/icons.dart';
import '../../../core/assets/images.dart';
import '../../../core/theming/app_text_styles.dart';

class HomeTopSection extends StatelessWidget {
  const HomeTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.homeBackground,
          fit: BoxFit.contain,
          width: double.infinity,
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello, Sara',
                      style: AppTextStyles.white400Size14TextStyle,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            context.push(const NotificationScreen());
                          },
                          child: SvgPicture.asset(
                            AppIcons.notificationIcon,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: SvgPicture.asset(
                            AppIcons.heartIcon,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                    text: 'Not sure what to ',
                    style: AppTextStyles.white500Size24TextStyle,
                    children: [
                      TextSpan(
                        text: 'cook ',
                        style: AppTextStyles.main700Size18TextStyle,
                      ),
                      TextSpan(
                        text: 'tonight !!',
                        style: AppTextStyles.white500Size24TextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
