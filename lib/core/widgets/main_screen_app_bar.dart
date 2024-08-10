import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gusteau/core/extension.dart';
import 'package:gusteau/core/theming/app_colors.dart';
import 'main_screen_title.dart';

class MainScreenAppBar extends StatelessWidget {
  const MainScreenAppBar({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(
            CupertinoIcons.back,
          ),
        ),
        MainScreenTitle(
          title: title,
        ),
        IconButton(
          onPressed: () {
          },
          icon: Icon(
            CupertinoIcons.back,
            color: AppColors.transparentColor,
          ),
        ),
      ],
    );
  }
}
