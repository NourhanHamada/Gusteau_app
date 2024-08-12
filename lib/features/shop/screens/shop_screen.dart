import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gusteau/core/theming/app_text_styles.dart';
import '../../../core/widgets/top_notch.dart';
import '../../schedule/widgets/schedule_search_bar_and_notifications_section.dart';
import '../widgets/market_items.dart';
import '../widgets/market_items_filter_section.dart';
import '../widgets/super_markets_filter_section.dart';
import '../widgets/super_markets_section.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

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
                  child: PageView(
                    controller: pageController,
                    children: [
                      ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Supermarkets',
                              style: AppTextStyles.black500Size20TextStyle,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const SuperMarketsFilterSection(),
                          const SizedBox(
                            height: 16,
                          ),
                          SupermarketsSection(
                            pageController: pageController,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                      ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Kheir Zaman Market',
                              style: AppTextStyles.black500Size20TextStyle,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const MarketItemsFilterSection(),
                          const SizedBox(
                            height: 16,
                          ),
                          const MarketItems(),
                          const SizedBox(
                            height: 16,
                          ),
                        ],
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
