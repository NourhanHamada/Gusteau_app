import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/assets/images.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';
import '../../../core/widgets/main_card.dart';

class AllergiesPageView extends StatefulWidget {
  const AllergiesPageView({super.key});

  @override
  State<AllergiesPageView> createState() => _AllergiesPageViewState();
}

class _AllergiesPageViewState extends State<AllergiesPageView> {
  final List<String> items = List.generate(17, (index) => "Item $index");
  // A set to store the selected items
  final Set<String> selectedItems = <String>{};

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 52,
            ),
            child: Text(
              'Any allergies or diets?',
              style: AppTextStyles.black600Size22TextStyle,
              textAlign: TextAlign.center,
            )),
        Padding(
          padding: const EdgeInsets.only(
            top: 24,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Allergies',
              style: AppTextStyles.mainColor600Size16TextStyle.copyWith(
                fontSize: 18.sp,
              ),
            ),
          ),
        ),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            vertical: 24,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 24,
            mainAxisSpacing: 16,
            childAspectRatio: .79,
          ),
          itemCount: 17,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final item = items[index];
            final isSelected = selectedItems.contains(item);
            return GestureDetector(
              onTap: (){
                setState(() {
                  if (isSelected) {
                    selectedItems.remove(item);
                  } else {
                    selectedItems.add(item);
                  }
                });
              },
              child: MainCard(
                image: AppImages.milk,
                title: 'Milk',
                color: isSelected ? AppColors.mainColor : AppColors.white6Color,
                titleColor: isSelected ? AppColors.white6Color : AppColors.blackColor,
              ),
            );
          },
        )
      ],
    );
  }
}
