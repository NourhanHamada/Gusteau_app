import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/assets/icons.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';

class RecipeIngredients extends StatelessWidget {
  const RecipeIngredients({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              AppIcons.youtube,
            ),
            Text(
              'Youtube video',
              style: AppTextStyles.black400Size12TextStyle,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Ingredients',
              style: AppTextStyles.black600Size16TextStyle,
            ),
            Text(
              'Missing ingredients',
              style: AppTextStyles.main400Size12UnderLineTextStyle,
            ),
          ],
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.mainColor,
                      ),
                      width: 8,
                      height: 8,
                      margin: const EdgeInsets.only(
                        left: 10,
                        right: 8,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: '1k ',
                        style: AppTextStyles.black500Size12TextStyle,
                        children: [
                          TextSpan(text: 'Jumbo shrimp',
                            style: AppTextStyles.black400Size12TextStyle,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ],
    );
  }
}
