import 'package:flutter/material.dart';
import '../../../core/assets/images.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({
    super.key,
    required this.index,
    required this.title,
    required this.title2,
    required this.boldText,
    required this.time,
  });

  final int index;
  final String title;
  final String title2;
  final String boldText;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AppImages.milkCarton,
              width: 30,
              height: 50,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              // flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: AppTextStyles.black400Size14TextStyle.copyWith(
                        height: 1.3,
                      ),
                      text: title,
                      children: [
                        TextSpan(
                          text: boldText,
                          style: AppTextStyles.black600Size22TextStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: title2,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    time,
                    style: AppTextStyles.black400Size12TextStyle
                        .copyWith(fontSize: 10),
                  ),
                  index == 13
                      ? const SizedBox()
                      : Padding(
                          padding: const EdgeInsets.only(
                              right: 24, top: 8, bottom: 12),
                          child: Divider(
                            color: AppColors.lightGrayColor,
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
        index == 13
            ? const SafeArea(
                top: false,
                child: SizedBox(),
              )
            : const SizedBox()
      ],
    );
  }
}
