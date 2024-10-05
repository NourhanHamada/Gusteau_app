import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gusteau/core/di/dependency_injection.dart';
import 'package:gusteau/core/theming/app_colors.dart';
import 'firebase_options.dart';
import 'gusteau_app.dart';


void main() async {
 WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: AppColors.transparentColor,
    statusBarBrightness: Brightness.dark,
  ));
  await setupGetIt();
 await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
 );
  runApp(const GusteauApp());
}