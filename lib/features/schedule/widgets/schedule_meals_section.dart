import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gusteau/core/assets/images.dart';
import 'package:gusteau/core/theming/app_text_styles.dart';
import '../../../core/theming/app_colors.dart';

class ScheduleMealsSection extends StatefulWidget {
  const ScheduleMealsSection({super.key});

  @override
  State<ScheduleMealsSection> createState() => _ScheduleMealsSectionState();
}

class _ScheduleMealsSectionState extends State<ScheduleMealsSection> {
  List<String> meals = [
    'Breakfast',
    'Snake',
    'Lunch',
    'Dinner',
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: meals.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      RotatedBox(
                        quarterTurns: -1,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: currentIndex == index
                                ? AppColors.mainColor
                                : AppColors.pinkColor,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 6,
                          ),
                          child: Text(
                            meals[index],
                            style: currentIndex == index
                                ? AppTextStyles.white500Size16TextStyle
                                : AppTextStyles.white500Size16TextStyle
                                    .copyWith(
                                    color: AppColors.blackColor,
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 100,
                      width: 200,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: currentIndex == index
                                    ? AppColors.mainColor
                                    : AppColors.pinkColor,
                              ),
                              height: 75,
                              width: 190,
                              margin: const EdgeInsets.only(right: 43),
                            ),
                          ),
                          Positioned(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage(
                                    AppImages.pancake,
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                SizedBox(
                                  width: 100,
                                  child: Text(
                                    'Pancake with Strawberry',
                                    style: currentIndex == index
                                        ? AppTextStyles.white500Size16TextStyle
                                            .copyWith(
                                            fontSize: 14.sp,
                                          )
                                        : AppTextStyles.white500Size16TextStyle
                                            .copyWith(
                                            color: AppColors.blackColor,
                                            fontSize: 14.sp,
                                          ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              index == 3
                  ? const SizedBox()
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: List.generate(
                              300 ~/ 10,
                              (index) => RotatedBox(
                                    quarterTurns: 1,
                                    child: Container(
                                      color: index % 2 == 0
                                          ? AppColors.transparentColor
                                          : AppColors.blackColor,
                                      height: 1,
                                      width: 2,
                                    ),
                                  )),
                        ),
                      ),
                    ),
            ],
          ),
        );
      },
    );
  }
}
