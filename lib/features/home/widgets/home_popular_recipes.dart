import 'package:flutter/cupertino.dart';
import 'package:gusteau/core/assets/images.dart';
import '../../../core/theming/app_colors.dart';
import 'home_popular_recipes_item.dart';
import 'home_title.dart';

class HomePopularRecipes extends StatefulWidget {
  const HomePopularRecipes({super.key});

  @override
  State<HomePopularRecipes> createState() => _HomePopularRecipesState();
}

class _HomePopularRecipesState extends State<HomePopularRecipes> {
  final List<String> items = List.generate(14, (index) => "Item $index");

  // A set to store the selected items
  final Set<String> selectedItems = <String>{};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HomeTitle(
          title: 'Popular recipes',
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 24,
            mainAxisSpacing: 16,
            childAspectRatio: .9,
          ),
          itemCount: 14,
          itemBuilder: (context, index) {
            final item = items[index];
            final isSelected = selectedItems.contains(item);
            return GestureDetector(
              onTap: () {
                setState(() {
                  if (isSelected) {
                    selectedItems.remove(item);
                  } else {
                    selectedItems.add(item);
                  }
                });
              },
              child: HomePopularRecipeItem(
                image: AppImages.mixGrill,
                title: 'Mix grill',
                time: '80 Min',
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
        )
      ],
    );
  }
}
