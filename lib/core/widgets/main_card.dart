import 'package:flutter/material.dart';

import '../theming/app_text_styles.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            Text(
              title,
              style: AppTextStyles.black700Size16TextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
