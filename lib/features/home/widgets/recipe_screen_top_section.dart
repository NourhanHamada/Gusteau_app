import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gusteau/core/extension.dart';

import '../../../core/assets/images.dart';
import '../../../core/theming/app_colors.dart';

class RecipeScreenTopSection extends StatefulWidget {
  const RecipeScreenTopSection({super.key});

  @override
  State<RecipeScreenTopSection> createState() => _RecipeScreenTopSectionState();
}

class _RecipeScreenTopSectionState extends State<RecipeScreenTopSection> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
        Positioned(
            right: 0,
            bottom: 10,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.ios_share_outlined,
                color: AppColors.whiteColor,
              ),
            )),
      ],
    );
  }
}
