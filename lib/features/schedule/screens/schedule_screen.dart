import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gusteau/core/widgets/top_notch.dart';
import '../widgets/schedule_meals_section.dart';
import '../widgets/schedule_search_bar_and_notifications_section.dart';
import '../widgets/schedule_time_section.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopNotch(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SearchBarAndNotificationsSection(),
                const SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: const [
                      ScheduleDateSection(),
                      SizedBox(
                        height: 16,
                      ),
                      ScheduleMealsSection(),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
