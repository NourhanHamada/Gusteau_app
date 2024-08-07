import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  static TextStyle white700Siz40KaiseiOptiFontTextStyle = GoogleFonts.kaiseiOpti(
    color: AppColors.whiteColor,
    fontSize: 40,
    fontWeight: FontWeight.w700,
  );


  static TextStyle white400Size24aliceFontTextStyle = GoogleFonts.alice(
    color: AppColors.whiteColor,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );

  static TextStyle white400Size24TextStyle = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );

  static TextStyle white700Size34TextStyle = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 34,
    fontWeight: FontWeight.w700,
  );

  static TextStyle white400Size14TextStyle = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
