import 'package:flutter/material.dart';
import 'package:gusteau/core/assets/images.dart';
import 'package:gusteau/core/theming/app_colors.dart';
import 'package:gusteau/core/widgets/main_card.dart';

class SupermarketsSection extends StatefulWidget {
  const SupermarketsSection({super.key, required this.pageController});

  final PageController pageController;

  @override
  State<SupermarketsSection> createState() => _SupermarketsSectionState();
}

class _SupermarketsSectionState extends State<SupermarketsSection> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: 24,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .8,
          crossAxisSpacing: 16,
          mainAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              widget.pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.linear,
              );
            },
            child: MainCard(
              image: AppImages.kheirZaman,
              title: 'Kheir Zaman',
              color: AppColors.whiteColor,
            ),
          );
        },
      ),
    );
  }
}
