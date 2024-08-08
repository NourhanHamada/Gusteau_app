import 'package:flutter/material.dart';
import 'package:gusteau/features/auth/widgets/verification_code_page_view.dart';

import 'allergies_page_view.dart';
import 'favourite_cuisines_page_view.dart';

class VerificationAndSetUpPages extends StatelessWidget {
  const VerificationAndSetUpPages({
    super.key,
    required this.pageController,
    required this.pinCodeController,
  });

  final PageController pageController;
  final TextEditingController pinCodeController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 110,
      ),
      child: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          VerificationCodePageView(
            pinCodeController: pinCodeController,
          ),
          const FavouriteCuisinesPageView(),
          const AllergiesPageView(),
        ],
      ),
    );
  }
}
