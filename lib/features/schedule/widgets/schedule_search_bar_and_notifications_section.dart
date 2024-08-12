import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/assets/icons.dart';
import '../../home/widgets/home_search_bar.dart';

class SearchBarAndNotificationsSection extends StatelessWidget {
  const SearchBarAndNotificationsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 8,
          child: HomeSearchBar(),
        ),
        Expanded(
          child: SvgPicture.asset(
            AppIcons.notificationBlackIcon,
          ),
        ),
      ],
    );
  }
}
