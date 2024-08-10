import 'package:flutter/material.dart';
import '../../../core/widgets/main_screen_app_bar.dart';
import '../../../core/widgets/top_notch.dart';
import '../widgets/notifications.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          TopNotch(),
          MainScreenAppBar(
            title: 'Notifications',
          ),
          Notifications(),
        ],
      ),
    );
  }
}
