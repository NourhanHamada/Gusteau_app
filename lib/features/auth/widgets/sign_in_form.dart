import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/widgets/text_form_field_custom.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    super.key,
    required this.emailTextEditingController,
    required this.passwordTextEditingController, required this.formKey,
  });

  final TextEditingController emailTextEditingController;
  final TextEditingController passwordTextEditingController;
  final GlobalKey<FormState> formKey;

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormFieldsCustom(
            controller: widget.emailTextEditingController,
            hintText: 'E-mail / phone number',
            filled: true,
          ),
          SizedBox(
            height: 16.h,
          ),
          TextFormFieldsCustom(
            controller: widget.passwordTextEditingController,
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
          ),
          SizedBox(
            height: 16.h,
          )
        ],
      ),
    );
  }
}
