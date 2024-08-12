import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gusteau/features/home/screens/home_screen.dart';
import 'package:gusteau/features/profile/screens/profile_screen.dart';
import 'package:gusteau/features/shop/screens/shop_screen.dart';
import '../../../core/assets/icons.dart';
import '../../../core/theming/app_colors.dart';
import '../../schedule/screens/schedule_screen.dart';
import '../../schedule/widgets/schedule_screen_floating_button.dart';
import '../widgets/bottom_bar_icon.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const HomeScreen(),
    const ShopScreen(),
    const ScheduleScreen(),
    const ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.transparentColor,
      statusBarBrightness: Brightness.dark,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white9Color,
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.mainColor.withOpacity(.1),
                offset: const Offset(0, -10),
                blurRadius: 20,
                spreadRadius: 1,
              ),
            ]),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(40),
            topLeft: Radius.circular(40),
          ),
          child: BottomNavigationBar(
            // Do not change selected item width make them all the same size not taking extra space.
            type: BottomNavigationBarType.fixed,
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
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
      floatingActionButton:
          currentIndex == 3 ? const ScheduleScreenFloatingButton() : null,
    );
  }
}
