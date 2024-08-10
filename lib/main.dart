import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gusteau/core/theming/app_colors.dart';
import 'gusteau_app.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: AppColors.transparentColor,
    statusBarBrightness: Brightness.dark,
  ));
  runApp(const GusteauApp());
}