import 'package:flutter/cupertino.dart';
import 'package:gusteau/core/assets/images.dart';
import 'package:gusteau/core/extension.dart';
import 'package:gusteau/core/theming/app_colors.dart';
import 'package:gusteau/features/home/screens/recipe_screen.dart';
import 'package:gusteau/features/home/widgets/home_popular_recipes_item.dart';
import 'package:gusteau/features/home/widgets/home_title.dart';
import '../../../core/theming/app_text_styles.dart';
import 'home_categories_item.dart';

class HomeCategories extends StatefulWidget {
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
  State<HomeCategories> createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories> {
  int selectedItem = -1;
  bool isVisible = false;
  final List<String> items = List.generate(14, (index) => "Item $index");

  // A set to store the selected items
  final Set<String> selectedItems = <String>{};

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const HomeTitle(
              title: 'Categories',
            ),
            Text(
              'See all',
              style: AppTextStyles.main400Size12UnderLineTextStyle,
            ),
          ],
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
            itemCount: HomeCategories.categoriesImages.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 0 : 8,
                  right: 8,
                ),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedItem = index;
                      isVisible = true;
                    });
                  },
                  child: HomeCategoriesItem(
                    title: HomeCategories.categoriesTitles[index],
                    image: HomeCategories.categoriesImages[index],
                    backgroundColor: selectedItem == index
                        ? AppColors.mainColor
                        : AppColors.pinkColor,
                  ),
                ),
              );
            },
          ),
        ),
        AnimatedOpacity(
          duration: const Duration(seconds: 2),
          opacity: isVisible ? 1 : 0.3,
          child: Visibility(
            visible: isVisible,
            maintainAnimation: true,
            maintainState: true,
            child: SizedBox(
              height: 180,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 14,
                itemBuilder: (context, index) {
                  final item = items[index];
                  final isSelected = selectedItems.contains(item);
                  return  Padding(
                    padding: const EdgeInsets.only(
                      right: 12
                    ),
                    child: HomePopularRecipeItem(
                        image: AppImages.molokhya,
                        title: 'Egyptian Molokhya',
                        titleTextStyle: AppTextStyles.white600Size12TextStyle,
                        time: '30 Min',
                      onHeartTap: (){
                        setState(() {
                          if (isSelected) {
                            selectedItems.remove(item);
                          } else {
                            selectedItems.add(item);
                          }
                        });
                      },
                      onImageTap: (){
                          context.push(const RecipeScreen());
                      },
                      icon: isSelected
                          ? Icon(
                        CupertinoIcons.heart_fill,
                        color: AppColors.mainColor,
                        size: 16,
                      )
                          : const Icon(
                        CupertinoIcons.heart,
                        size: 16,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
