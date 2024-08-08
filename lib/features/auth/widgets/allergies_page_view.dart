import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/assets/images.dart';
import '../../../core/theming/app_text_styles.dart';
import '../../../core/widgets/main_card.dart';

class AllergiesPageView extends StatefulWidget {
  const AllergiesPageView({super.key});

  @override
  State<AllergiesPageView> createState() => _AllergiesPageViewState();
}

class _AllergiesPageViewState extends State<AllergiesPageView> {
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
            childAspectRatio: .78,
          ),
          itemCount: 17,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const MainCard(
              image: AppImages.milk,
              title: 'Milk',
            );
          },
        )
      ],
    );
  }
}
