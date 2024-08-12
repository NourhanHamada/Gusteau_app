import 'package:flutter/material.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/widgets/text_form_field_custom.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormFieldsCustom(
      prefixIcon: const Icon(
        Icons.search,
        size: 16,
      ),
      suffixIcon: const Icon(
        Icons.menu,
        size: 16,
      ),
      filled: true,
      fillColor: AppColors.black1Color.withOpacity(.03),
      borderColor: AppColors.transparentColor,
      hintText: 'Search here',
      hintColor: AppColors.black1Color,
      hintSize: 12,
    );
  }
}
