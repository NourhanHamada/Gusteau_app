import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/theming/app_text_styles.dart';

class ScheduleDateSection extends StatefulWidget {
  const ScheduleDateSection({super.key});

  @override
  State<ScheduleDateSection> createState() => _ScheduleDateSectionState();
}

class _ScheduleDateSectionState extends State<ScheduleDateSection> {
  DateTime today = DateTime.now();
  late String dayOfMonth;
  late String dayName;
  late DateTime day;
  List<String> daysOfMonth = [];
  List<String> dayNames = [];
  int currentIndex = 0;
  late DateTime currentDay;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 7; i++) {
      day = today.add(Duration(days: i));
      getDaysOfMonth();
      getDayNames();
    }
    currentDay = DateTime.now();
  }

  getDayNames() {
    String getTwoLetterDayName(DateTime date) {
      String fullDayName = DateFormat('EEE').format(date);
      switch (fullDayName) {
        case 'Mon':
          return 'Mo';
        case 'Tue':
          return 'Tu';
        case 'Wed':
          return 'We';
        case 'Thu':
          return 'Th';
        case 'Fri':
          return 'Fr';
        case 'Sat':
          return 'Sa';
        case 'Sun':
          return 'Su';
        default:
          return fullDayName.substring(0, 2);
      }
    }

    dayName = getTwoLetterDayName(day);
    dayNames.add(dayName);
  }

  getDaysOfMonth() {
    dayOfMonth = DateFormat('d').format(day);
    daysOfMonth.add(dayOfMonth);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'October',
              style: AppTextStyles.black500Size20TextStyle,
            ),
            const Icon(
              CupertinoIcons.forward,
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.pinkColor,
            borderRadius: BorderRadius.circular(15),
          ),
          width: double.infinity,
          // height: 80,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                          dayOfMonth = daysOfMonth[index];
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: currentIndex == index
                                ? AppColors.mainColor
                                : AppColors.transparentColor,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 6,
                                  left: 6,
                                  right: 6,
                                ),
                                child: Text(
                                  dayNames[index],
                                  style: currentIndex == index
                                      ? AppTextStyles.white700Size12TextStyle
                                      : AppTextStyles.black500Size12TextStyle,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: currentIndex == index
                                        ? AppColors.whiteColor
                                        : AppColors.transparentColor),
                                padding: const EdgeInsets.all(7),
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 2,
                                ),
                                child: Text(
                                  daysOfMonth[index],
                                  style: currentIndex == index
                                      ? AppTextStyles.black500Size12TextStyle
                                          .copyWith(
                                          fontWeight: FontWeight.w700,
                                        )
                                      : AppTextStyles.black500Size12TextStyle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            'Today $dayOfMonth ${DateFormat('MMMM').format(day)}',
            style: AppTextStyles.black500Size12TextStyle,
          ),
        ),
      ],
    );
  }
}
