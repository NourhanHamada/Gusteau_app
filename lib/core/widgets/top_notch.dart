import 'package:flutter/material.dart';
import '../assets/images.dart';

class TopNotch extends StatelessWidget {
  const TopNotch({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.topNotch,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
