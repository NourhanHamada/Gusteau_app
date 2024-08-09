import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gusteau/core/assets/images.dart';
import 'home_popular_recipes_item.dart';
import 'home_title.dart';

class HomePopularRecipes extends StatelessWidget {
  const HomePopularRecipes({super.key});

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
            return const HomePopularRecipeItem(
              image: AppImages.mixGrill,
              title: 'Mix grill',
              time: '80 Min',
            );
          },
        )
      ],
    );
  }
}
