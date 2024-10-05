import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/assets/icons.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';

class RecipeNameAndInfoSection extends StatefulWidget {
  const RecipeNameAndInfoSection({super.key});

  @override
  State<RecipeNameAndInfoSection> createState() => _RecipeNameAndInfoSectionState();
}

class _RecipeNameAndInfoSectionState extends State<RecipeNameAndInfoSection> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Shrimp pasta',
          style: AppTextStyles.black600Size16TextStyle,
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Icon(
                  CupertinoIcons.time_solid,
                  color: AppColors.mainColor,
                  size: 14,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '40 min',
                  style: AppTextStyles.black400Size12TextStyle,
                ),
              ],
            ),
            const SizedBox(
              width: 12,
            ),
            Row(
              children: [
                SvgPicture.asset(AppIcons.fire),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Cal 2180',
                  style: AppTextStyles.black400Size12TextStyle,
                ),
              ],
            ),
            const SizedBox(
              width: 12,
            ),
            Row(
              children: [
                SvgPicture.asset(AppIcons.chefHat),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Easy',
                  style: AppTextStyles.black400Size12TextStyle,
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.lightGrayColor,
          ),
          padding: const EdgeInsets.only(left: 4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                AppIcons.people,
                width: 26,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.mainColor,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 2,
                ),
                margin: const EdgeInsets.symmetric(
                  horizontal: 3,
                  vertical: 2,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (count > 0) {
                            count--;
                          }
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: AppColors.mainColor),
                        ),
                        padding: const EdgeInsets.all(2),
                        child: Icon(
                          CupertinoIcons.minus,
                          color: AppColors.whiteColor,
                          size: 12,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.whiteColor,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0),
                      child: Text(
                        count.toString(),
                        style:
                        AppTextStyles.black400Size14TextStyle,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          count++;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: AppColors.mainColor),
                        ),
                        padding: const EdgeInsets.all(2),
                        child: Icon(
                          CupertinoIcons.add,
                          color: AppColors.whiteColor,
                          size: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}