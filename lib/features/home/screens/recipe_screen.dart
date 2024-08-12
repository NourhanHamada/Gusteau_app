import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gusteau/core/assets/images.dart';
import 'package:gusteau/core/extension.dart';
import 'package:gusteau/core/theming/app_colors.dart';
import 'package:gusteau/core/theming/app_text_styles.dart';

class RecipeScreen extends StatefulWidget {
  const RecipeScreen({super.key});

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(24),
                  bottomLeft: Radius.circular(24),
                )),
                width: double.infinity,
                child: Image.asset(
                  AppImages.shrimp,
                  fit: BoxFit.fitWidth,
                ),
              ),
              AppBar(
                backgroundColor: AppColors.transparentColor,
                leading: IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Icon(
                    CupertinoIcons.back,
                    color: AppColors.whiteColor,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        isFavourite = !isFavourite;
                      });
                    },
                    icon: isFavourite
                        ? Icon(
                            CupertinoIcons.heart_fill,
                            color: AppColors.mainColor,
                          )
                        : Icon(
                            CupertinoIcons.heart,
                            color: AppColors.whiteColor,
                          ),
                  ),
                ],
              ),
            ],
          ),
          Flexible(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 16,
              ),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Shrimp pasta',
                      style: AppTextStyles.black400Size16TextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
