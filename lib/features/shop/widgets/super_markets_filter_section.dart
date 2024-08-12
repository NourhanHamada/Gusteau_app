import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';

class SuperMarketsFilterSection extends StatefulWidget {
  const SuperMarketsFilterSection({super.key});

  @override
  State<SuperMarketsFilterSection> createState() =>
      _SuperMarketsFilterSectionState();
}

class _SuperMarketsFilterSectionState extends State<SuperMarketsFilterSection> {
  int currentIndex = 0;
  List<String> categories = [
    'All',
    'Near you',
    'Bread & Bakery',
    'Gas',
    'Coffee shop',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 4,
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: currentIndex == index
                      ? AppColors.mainColor
                      : AppColors.transparentColor,
                  border: Border.all(
                    color: currentIndex != index
                        ? AppColors.grayColor
                        : AppColors.transparentColor,
                  )),
              child: Center(
                child: Text(
                  categories[index],
                  style: currentIndex == index
                      ? AppTextStyles.white500Size16TextStyle
                      .copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  )
                      : AppTextStyles.white500Size16TextStyle
                      .copyWith(
                    color: AppColors.blackColor,
                    fontSize: 14.sp,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}