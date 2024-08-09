import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBarIcon extends StatelessWidget {
  const BottomBarIcon({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: SvgPicture.asset(
        image,
      ),
    );
  }
}
