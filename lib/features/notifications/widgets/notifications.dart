import 'package:flutter/material.dart';

import 'notification_item.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 16,
        ),
        shrinkWrap: true,
        itemCount: 14,
        itemBuilder: (context, index) {
          return NotificationItem(
            index: index,
            title: 'Your ',
            title2:
            '\'s expiration date is approaching here are some recipes to do with it',
            boldText: 'milk',
            time: '2h',
          );
        },
      ),
    );
  }
}