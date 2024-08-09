import 'package:flutter/material.dart';

import '../../../core/assets/icons.dart';
import '../../../core/theming/app_colors.dart';
import 'bottom_bar_icon.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatefulWidget {
  BottomNavBar({
    super.key,
    required this.currentIndex,
  });

  int currentIndex = 0;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: AppColors.mainColor,
      unselectedItemColor: AppColors.blackColor,
      selectedLabelStyle: TextStyle(
        color: AppColors.mainColor,
        fontSize: 10,
      ),
      unselectedLabelStyle: TextStyle(
        color: AppColors.blackColor,
        fontSize: 10,
      ),
      showUnselectedLabels: true,
      items: const [
        BottomNavigationBarItem(
          icon: BottomBarIcon(
            image: AppIcons.homeDisabledIcon,
          ),
          activeIcon: BottomBarIcon(
            image: AppIcons.homeEnabledIcon,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: BottomBarIcon(
            image: AppIcons.kitchenDisabledIcon,
          ),
          activeIcon: BottomBarIcon(
            image: AppIcons.kitchenEnabledIcon,
          ),
          label: 'Kitchen',
        ),
        BottomNavigationBarItem(
          icon: BottomBarIcon(
            image: AppIcons.shopDisabledIcon,
          ),
          activeIcon: BottomBarIcon(
            image: AppIcons.shopEnabledIcon,
          ),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: BottomBarIcon(
            image: AppIcons.calendarDisabledIcon,
          ),
          activeIcon: BottomBarIcon(
            image: AppIcons.calendarEnabledIcon,
          ),
          label: 'Schedule',
        ),
        BottomNavigationBarItem(
          icon: BottomBarIcon(
            image: AppIcons.profileDisabledIcon,
          ),
          activeIcon: BottomBarIcon(
            image: AppIcons.profileEnabledIcon,
          ),
          label: 'Profile',
        ),
      ],
      currentIndex: widget.currentIndex,
      onTap: (index) {
        setState(() {
          widget.currentIndex = index;
        });
      },
    );
  }
}