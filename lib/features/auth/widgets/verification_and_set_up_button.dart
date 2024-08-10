import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gusteau/core/extension.dart';

import '../../../core/widgets/main_button.dart';
import '../../layout/screens/layout_screen.dart';

class VerificationAndSetUpButton extends StatelessWidget {
  const VerificationAndSetUpButton({
    super.key,
    required this.pageController,
    required this.isLastPage, required this.onPressed,
  });

  final PageController pageController;
  final bool isLastPage;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 52.w,
          vertical: 32,
        ),
        child: MainButton(
          onPressed: onPressed,
          title: isLastPage ? 'Start cooking' : 'Next step',
        ),
      ),
    );
  }
}
