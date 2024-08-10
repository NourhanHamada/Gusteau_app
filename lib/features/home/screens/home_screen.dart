import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/home_categories.dart';
import '../widgets/home_cook_again_section.dart';
import '../widgets/home_popular_recipes.dart';
import '../widgets/home_search_bar.dart';
import '../widgets/home_top_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // padding: EdgeInsets.zero,
        children: [
          const HomeTopSection(),
          const Padding(
            padding: EdgeInsets.only(
              left: 24,
              right: 24,
              top: 8,
            ),
            child: HomeSearchBar(),
          ),
          Flexible(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              shrinkWrap: true,
              children: const [
                HomeCategories(),
                HomeCookAgainSection(),
                HomePopularRecipes(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
