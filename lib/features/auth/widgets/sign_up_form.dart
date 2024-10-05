import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/app_string.dart';
import '../../../core/di/dependency_injection.dart';
import '../../../core/helpers/text_form_field_validators.dart';
import '../../../core/helpers/text_selection_options.dart';
import '../../../core/widgets/text_form_field_custom.dart';
import '../logic/cubits/signup/signup_cubit.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isObscure = true;
  final signupCubit = getIt<SignupCubit>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: signupCubit.formKey,
      child: Column(
        children: [
          TextFormFieldsCustom(
            controller: signupCubit.nameTextEditingController,
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            hintText: 'Your name',
            filled: true,
            onChanged: (value) {
              setState(() {});
            },
            contextMenuBuilder: TextSelectionOptions.emailTextSelectionOptions,
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
            controller: signupCubit.emailTextEditingController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            hintText: 'E-mail / phone number',
            filled: true,
            onChanged: (value) {
              setState(() {});
            },
            contextMenuBuilder: TextSelectionOptions.emailTextSelectionOptions,
            validator: (value) =>
                TextFormFieldValidators.emailValidator(value, context),
          ),
          SizedBox(
            height: 16.h,
          ),
          TextFormFieldsCustom(
            controller: signupCubit.passwordTextEditingController,
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
            contextMenuBuilder:
                TextSelectionOptions.passwordTextSelectionOptions,
            validator: (value) =>
                TextFormFieldValidators.passwordValidator(value, context),
          ),
          SizedBox(
            height: 16.h,
          )
        ],
      ),
    );
  }
}
