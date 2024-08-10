import 'package:flutter/material.dart';
import 'package:gusteau/core/assets/images.dart';
import '../../../core/widgets/main_screen_app_bar.dart';
import '../widgets/notification_item.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TopNotch(),
          const MainScreenAppBar(
            title: 'Notifications',
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 24,
              right: 24,
              top: 16,
            ),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return NotificationItem(
                  index: index,
                  title: 'Your ',
                  title2:
                      'bla dkndnvbkjsfbvjf bjvjlcnjsl nvjf vjl njl nvjlfdn vjlf vjfjjfl f v',
                  boldText: 'milk ',
                  time: '2h',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TopNotch extends StatelessWidget {
  const TopNotch({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.topNotch,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
