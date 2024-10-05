import 'package:flutter/material.dart';
import '../widgets/recipe_ingredients.dart';
import '../widgets/recipe_name_and_info_section.dart';
import '../widgets/recipe_screen_top_section.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({super.key});

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const RecipeScreenTopSection(),
          Flexible(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16,
              ),
              children: const [
                RecipeNameAndInfoSection(),
                SizedBox(
                  height: 16,
                ),
                RecipeIngredients(),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}