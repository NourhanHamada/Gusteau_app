import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gusteau/core/extension.dart';
import 'package:gusteau/core/theming/app_colors.dart';
import 'package:gusteau/core/theming/app_text_styles.dart';

class DropDownCustom extends StatelessWidget {
  const DropDownCustom(
      {super.key,
        required this.hintText,
        required this.onChanged,
        this.validation,
        this.initValue,
        required this.values,
        this.fontSize,
        this.wPadding = 5,
        this.leftIcon,
        this.svgIcon,
        this.rightIcon,
        this.hintColor});

  final String hintText;
  final void Function(int? value) onChanged;
  final String? Function(int? value)? validation;
  final int? initValue;
  final List<String> values;
  final double? fontSize;
  final double wPadding;
  final Widget? leftIcon;
  final String? svgIcon;
  final Widget? rightIcon;
  final Color? hintColor;

  @override
  Widget build(BuildContext context) {
    // final theme = ThemeCubit.get(context).state;
    return Material(
      color: AppColors.transparentColor,
      borderRadius: BorderRadius.circular(8.r),
      child: DropdownButtonFormField(
        menuMaxHeight: context.screenHeight / 2,
        icon: rightIcon ??
            const Icon(Icons.keyboard_arrow_down,),
        value: initValue,
        validator: validation,
        style: AppTextStyles.black400Size12TextStyle.copyWith(
          fontSize: fontSize?.r,
        ),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.lightGrayColor,
              ),
              borderRadius: BorderRadius.circular(15)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide:  BorderSide(
                color: AppColors.lightGrayColor,
              ),
              borderRadius: BorderRadius.circular(15)
          ),
          // suffixIcon: rightIcon,
          filled: true,
          fillColor: AppColors.white6Color,
          prefixIcon: leftIcon ??
              (svgIcon == null
                  ? null
                  : Padding(
                padding: EdgeInsetsDirectional.symmetric(
                  horizontal: 15.r,
                ),
                child: SvgPicture.asset(
                  svgIcon!,
                  colorFilter: ColorFilter.mode(AppColors.pinkColor, BlendMode.color),
                ),
              )),
          hintText: hintText,
        ).copyWith(
            contentPadding: EdgeInsetsDirectional.symmetric(
              vertical: 10.r,
              horizontal: 12.r,
            ),
            hintStyle: AppTextStyles.black400Size12TextStyle.copyWith(
                fontSize: fontSize?.r ?? 14,
                color: hintColor ?? AppColors.gray6Color,),),
        onChanged: onChanged,
        items: List.generate(values.length, (index) {
          return DropdownMenuItem(
            value: index,
            child: Text(
              values[index],
             style: TextStyle(
               fontSize: fontSize ?? 10,
               color: AppColors.black1Color,
             ),
            ),
          );
        }),
      ),
    );
  }
}
