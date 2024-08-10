import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/app_string.dart';
import '../../../core/widgets/text_form_field_custom.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
    required this.nameTextEditingController,
    required this.emailTextEditingController,
    required this.passwordTextEditingController,
    required this.formKey,
  });

  final TextEditingController nameTextEditingController;
  final TextEditingController emailTextEditingController;
  final TextEditingController passwordTextEditingController;
  final GlobalKey<FormState> formKey;

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormFieldsCustom(
            controller: widget.nameTextEditingController,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            hintText: 'Your name',
            filled: true,
            onChanged: (value) {
              setState(() {});
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Name is required';
              } else if (!RegExp(AppString.validationName).hasMatch(value)) {
                return 'Name is not valid';
              }
              return null;
            },
          ),
          SizedBox(
            height: 16.h,
          ),
          TextFormFieldsCustom(
            controller: widget.emailTextEditingController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            hintText: 'E-mail / phone number',
            filled: true,
            onChanged: (value) {
              setState(() {});
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'E-mail is required';
              } else if (!RegExp(AppString.validationEmail).hasMatch(value)) {
                return 'E-mail is not valid';
              } else if (value.contains(' ')) {
                return 'E-mail is not valid';
              }
              return null;
            },
          ),
          SizedBox(
            height: 16.h,
          ),
          TextFormFieldsCustom(
            controller: widget.passwordTextEditingController,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.done,
            hintText: 'Password',
            filled: true,
            isPassword: isObscure,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscure = !isObscure;
                });
              },
              child: Icon(
                isObscure ? Icons.remove_red_eye_rounded : Icons.visibility_off,
                size: 20,
              ),
            ),
            onChanged: (value) {
              setState(() {});
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Password is required';
              } else if (!RegExp(AppString.validationPassword)
                  .hasMatch(value)) {
                return 'Password is not valid';
              } else if (value.contains(' ')) {
                return 'Password is not valid';
              }
              return null;
            },
          ),
          SizedBox(
            height: 16.h,
          )
        ],
      ),
    );
  }
}
