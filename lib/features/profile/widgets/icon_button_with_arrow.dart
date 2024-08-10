import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/theming/app_text_styles.dart';

class IconButtonWithArrow extends StatelessWidget {
  const IconButtonWithArrow(
      {super.key,
        required this.onTap,
        required this.title,
        required this.image});

  final Function() onTap;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  image,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  title,
                  style: AppTextStyles.black600Size16TextStyle,
                ),
              ],
            ),
            const Icon(
              CupertinoIcons.forward,
            )
          ],
        ),
      ),
    );
  }
}