import 'package:flutter/material.dart';
import 'package:gusteau/core/extension.dart';
import '../../../core/assets/images.dart';

class OnboardBackgroundImages extends StatelessWidget {
  const OnboardBackgroundImages({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.onboard[index],
      fit: BoxFit.fill,
      width: context.screenWidth,
      height: context.screenHeight,
    );
  }
}
