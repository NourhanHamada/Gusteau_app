import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/app_text_styles.dart';

class BottomSheetTitle extends StatelessWidget {
  const BottomSheetTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,),
      child: Text(
        title,
        style: AppTextStyles.black700Size16TextStyle.copyWith(
          fontSize: 14.sp,
        ),
      ),
    );
  }
}
