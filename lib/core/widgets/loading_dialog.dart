import 'package:flutter/material.dart';
import '../theming/app_colors.dart';

loadingDialog(context) {
  return showDialog(
    context: context,
    builder: (context) {
      return  Center(
        child: CircularProgressIndicator.adaptive(
          backgroundColor: AppColors.mainColor,
        ),
      );
    },
  );
}
