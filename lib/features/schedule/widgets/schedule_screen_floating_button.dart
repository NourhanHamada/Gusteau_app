import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/theming/app_colors.dart';

class ScheduleScreenFloatingButton extends StatelessWidget {
  const ScheduleScreenFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          200,
        ),
      ),
      backgroundColor: AppColors.mainColor,
      mini: true,
      child: IconButton(
        onPressed: () {
          // TODO: Open datePicker bottom sheet
        },
        icon: Icon(
          CupertinoIcons.add,
          color: AppColors.white6Color,
          size: 20,
        ),
      ),
    );
  }
}
