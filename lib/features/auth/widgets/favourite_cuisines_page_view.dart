import 'package:flutter/material.dart';
import 'package:gusteau/core/assets/images.dart';

import '../../../core/theming/app_text_styles.dart';
import '../../../core/widgets/main_card.dart';

class FavouriteCuisinesPageView extends StatefulWidget {
  const FavouriteCuisinesPageView({super.key});

  @override
  State<FavouriteCuisinesPageView> createState() =>
      _FavouriteCuisinesPageViewState();
}

class _FavouriteCuisinesPageViewState extends State<FavouriteCuisinesPageView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 52,
            ),
            child: Text(
              'Tell us your favourite cuisines',
              style: AppTextStyles.black600Size22TextStyle,
              textAlign: TextAlign.center,
            )),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            vertical: 24,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 24,
            mainAxisSpacing: 16,
            childAspectRatio: .78,
          ),
          itemCount: 17,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const MainCard(
              image: AppImages.kabab,
              title: 'Egyptian',
            );
          },
        )
      ],
    );
  }
}
