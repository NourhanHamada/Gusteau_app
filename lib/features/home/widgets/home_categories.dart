import 'package:flutter/material.dart';
import 'package:gusteau/core/assets/images.dart';
import 'package:gusteau/features/home/widgets/home_title.dart';
import '../../../core/theming/app_text_styles.dart';
import 'home_categories_item.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  static const List<String> categoriesTitles = [
    'Breakfast',
    'Lunch',
    'Dunner',
    'Drinks',
    'Bakeries',
  ];
  static const List<String> categoriesImages = [
    AppImages.egg,
    AppImages.lunch,
    AppImages.dinner,
    AppImages.juice,
    AppImages.croissant,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const HomeTitle(
             title:  'Categories',
            ),
            Text(
              'See all',
              style: AppTextStyles.main400Size14UnderLineTextStyle,
            ),
          ],
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: categoriesImages.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding:  EdgeInsets.only(
                  left: index == 0 ? 0 : 8,
                  right: 8,
                ),
                child: HomeCategoriesItem(
                  title: categoriesTitles[index],
                  image: categoriesImages[index],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
