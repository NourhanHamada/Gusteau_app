import 'package:flutter/cupertino.dart';
import 'package:gusteau/core/assets/images.dart';
import 'package:gusteau/core/theming/app_text_styles.dart';
import '../../../core/theming/app_colors.dart';

class MarketItems extends StatefulWidget {
  const MarketItems({super.key});

  @override
  State<MarketItems> createState() => _MarketItemsState();
}

class _MarketItemsState extends State<MarketItems> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: AppColors.lightGrayColor),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 8,
                  ),
                  child: Image.asset(
                    AppImages.kark,
                    width: 100,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Instant Kark Chai tea',
                      style: AppTextStyles.black400Size14TextStyle,
                    ),
                    Row(
                      children: [
                        Text(
                          'EGP 72',
                          style: AppTextStyles.black400Size14TextStyle,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'EGP 75',
                          style: AppTextStyles.black400Size14TextStyle.copyWith(
                            color: AppColors.gray6Color,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: AppColors.gray6Color,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: AppColors.mainColor),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (count > 0) {
                                  count--;
                                }
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: AppColors.mainColor),
                              ),
                              padding: const EdgeInsets.all(2),
                              child: Icon(
                                CupertinoIcons.minus,
                                color: AppColors.mainColor,
                                size: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              index == 0 ? count.toString() : 0.toString(),
                              style: AppTextStyles.main700Size12TextStyle,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                count++;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: AppColors.mainColor),
                              ),
                              padding: const EdgeInsets.all(2),
                              child: Icon(
                                CupertinoIcons.add,
                                color: AppColors.mainColor,
                                size: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
