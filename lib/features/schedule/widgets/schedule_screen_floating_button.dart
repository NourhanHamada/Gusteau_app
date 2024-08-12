import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gusteau/core/extension.dart';
import 'package:gusteau/core/widgets/drop_down_custom.dart';
import 'package:gusteau/core/widgets/main_button.dart';
import 'package:gusteau/core/widgets/text_form_field_custom.dart';
import '../../../core/theming/app_colors.dart';
import 'bottom_sheet_title.dart';

class ScheduleScreenFloatingButton extends StatefulWidget {
  const ScheduleScreenFloatingButton({super.key});

  @override
  State<ScheduleScreenFloatingButton> createState() =>
      _ScheduleScreenFloatingButtonState();
}

class _ScheduleScreenFloatingButtonState
    extends State<ScheduleScreenFloatingButton> {
  DateTime? selectedDate;
  DateTime? picked;

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
          showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            builder: (BuildContext context) {
              return Container(
                padding: const EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                ),
                color: AppColors.whiteColor,
                width: double.infinity,
                child: SafeArea(
                  child: ListView(
                    shrinkWrap: true,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      const BottomSheetTitle(title: 'Date'),
                      TextFormFieldsCustom(
                        filled: true,
                        fillColor: AppColors.white6Color,
                        radius: 15,
                        hintText: 'Select one',
                        suffixIcon: Icon(
                          CupertinoIcons.calendar,
                          color: AppColors.mainColor,
                        ),
                        onTap: () async {
                          picked = await showDatePicker(
                            context: context,
                            firstDate: DateTime.now(),
                            lastDate: DateTime(2025),
                            initialDate: DateTime.now(),
                            builder: (context, child) {
                              return Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: ColorScheme.light(
                                      primary: AppColors.white6Color,
                                      // header background color
                                      onPrimary: Colors.black,
                                      // header text color
                                      onSurface: AppColors
                                          .black1Color, // body text color
                                    ),
                                    textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                        foregroundColor: AppColors.mainColor,
                                      ),
                                    ),
                                  ),
                                  child: child!);
                            },
                          );
                          if (picked != null && picked != selectedDate) {
                            setState(() {
                              selectedDate = picked;
                              // print(
                              //     'Selected date: ${DateFormat('yyyy-MM-dd').format(selectedDate!)}');
                            });
                          }
                        },
                      ),
                      const BottomSheetTitle(title: 'Add Breakfast'),
                      DropDownCustom(
                        hintText: 'Add one',
                        onChanged: (value) {
                        },
                        values: const [
                          'A',
                          'B',
                          'C',
                        ],
                      ),
                      const BottomSheetTitle(title: 'Add Lunch'),
                      DropDownCustom(
                        hintText: 'Add one',
                        onChanged: (value) {
                        },
                        values: const [
                          'A',
                          'B',
                          'C',
                        ],
                      ),
                      const BottomSheetTitle(title: 'Add Dinner'),
                      DropDownCustom(
                        hintText: 'Add one',
                        onChanged: (value) {
                        },
                        values: const [
                          'A',
                          'B',
                          'C',
                        ],
                      ),
                      const BottomSheetTitle(title: 'Notes'),
                      TextFormFieldsCustom(
                        minLines: 3,
                        maxLines: 8,
                        filled: true,
                        fillColor: AppColors.white6Color,
                        radius: 15,
                        hintText: 'Add note',
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: MainButton(
                                onPressed: () {
                                  context.pop();
                                },
                                title: 'Cancel',
                                backgroundColor: AppColors.transparentColor,
                                textColor: AppColors.black1Color,
                                radius: 15.r,
                              ),
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: MainButton(
                                onPressed: () {
                                  context.pop();
                                },
                                title: 'Save',
                                radius: 15.r,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
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