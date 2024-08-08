import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gusteau/core/theming/app_colors.dart';

// ignore: must_be_immutable
class TextFormFieldsCustom extends StatefulWidget {
  final int? errorMaxLines;
  final String? hintText;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  bool? isPassword;
  final TextInputType? keyboardType;
  final String? helperText;
  final String initialValue;
  final Function()? onEditingComplete;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final bool? suffix;
  final bool? suffixToggle;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? suffixIconColor;
  final IconData? suffixIconToggle;
  final Color? suffixIconColorToggle;
  final Function()? suffixOnPressed;
  final Function()? onTap;
  final FocusNode? focus;
  final Function(String?)? onChanged;
  final bool? readOnly;
  final bool? enabled;
  final int? maxLength;
  final List<TextInputFormatter>? inputFormatter;
  final int? minLines;
  final int? maxLines;
  final Color? borderColor;
  final Color? fillColor;
  final bool? filled;
  final String? labelText;
  final bool? enableInteractiveSelection;
  Widget Function(BuildContext, EditableTextState)? contextMenuBuilder;
  final TextDirection?  textDirection;

  TextFormFieldsCustom({
    super.key,
    this.prefixIcon,
    this.hintText,
    this.validator,
    this.onSaved,
    this.keyboardType,
    this.helperText,
    this.isPassword = false,
    this.initialValue = 'initial',
    this.onEditingComplete,
    this.textInputAction,
    this.controller,
    this.suffix = false,
    this.suffixToggle = false,
    this.suffixIcon,
    this.suffixIconColor,
    this.suffixIconToggle,
    this.suffixIconColorToggle,
    this.suffixOnPressed,
    this.focus,
    this.onChanged,
    // required bool enableInteractive,
    this.errorMaxLines,
    this.readOnly,
    this.enabled,
    this.inputFormatter,
    this.onTap,
    this.maxLength,
    this.minLines,
    this.maxLines,
    this.borderColor,
    this.fillColor,
    this.filled,
    this.labelText,
    this.enableInteractiveSelection,
    this.contextMenuBuilder,
    this.textDirection
  });

  @override
  State<TextFormFieldsCustom> createState() => _TextFormFieldsCustomState();
}

class _TextFormFieldsCustomState extends State<TextFormFieldsCustom> {

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: widget.textDirection ?? TextDirection.ltr,
      child: TextFormField(
        contextMenuBuilder: widget.contextMenuBuilder,
        // to unFocus Field when tap anyWhere outside
        onTapOutside: (event) {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        textAlignVertical: TextAlignVertical.center,
        // textAlign: TextAlign.left,
        autocorrect: false,
        maxLines: widget.maxLines ?? 1,
        minLines: widget.minLines ?? 1,
        onTap: widget.onTap,
        maxLength: widget.maxLength,
        inputFormatters: widget.inputFormatter,
        autofocus: false,
        readOnly: widget.readOnly ?? false,
        enabled: widget.enabled ?? true,
        enableInteractiveSelection: widget.enableInteractiveSelection ?? true,
        controller: widget.controller,
        // focusNode: widget.focus,
        textInputAction: widget.textInputAction ?? TextInputAction.done,
        // prevent text from being automatically selected
        // onEditingComplete: widget.onEditingComplete,
        onChanged: (value) {
          // widget.onChanged!(value);
          widget.onChanged != null ? widget.onChanged!(value) : null;
          setState(() {

          });
        },
        style: TextStyle(
            color: AppColors.grayColor,
          // height: 1,
        ),
        cursorColor: AppColors.grayColor,
        cursorHeight: 17,
        cursorWidth: 1.5,
        decoration: InputDecoration(
          fillColor: widget.fillColor ?? AppColors.white6Color,
          filled: widget.filled ?? false,
          errorMaxLines: widget.errorMaxLines,
          // isDense: true,
          hintText: widget.hintText,
          helperText: widget.helperText,
          // prefixIcon: languageCubit.locale == arabic ? widget.suffixIcon : widget.prefixIcon,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          // prefixText: 'Hello',
          // suffixIcon: languageCubit.locale == arabic ? widget.prefixIcon : widget.suffixIcon,
          errorStyle: const TextStyle(
            // color: redColor, fontSize: 12, fontWeight: FontWeight.w500,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          labelText: widget.labelText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: AppColors.grayColor,
          ),
          // prefixIconColor: greyColor7,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(
                // color: widget.borderColor ?? lightGreyColor,
              )),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: widget.borderColor ?? AppColors.lightGrayColor,
            ),
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 20,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:  BorderSide(
              color: AppColors.lightGrayColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              // color: lightGreyColor,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              // color: lightGreyColor,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        obscureText: widget.isPassword!,
        obscuringCharacter: '*',
        validator: widget.validator,
        onSaved: (value) {
          // widget.onSaved != null ? widget.onSaved!(value) : null;
        },
        keyboardType: widget.keyboardType,
      ),
    );
  }
}