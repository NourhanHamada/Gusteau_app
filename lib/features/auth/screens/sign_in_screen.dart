import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gusteau/core/di/dependency_injection.dart';
import 'package:gusteau/core/extension.dart';
import 'package:gusteau/core/routing/routes.dart';
import 'package:gusteau/features/auth/logic/cubits/signin/signin_cubit.dart';
import 'package:gusteau/features/auth/logic/cubits/signin/signin_state.dart';
import '../../../core/theming/app_colors.dart';
import '../../../core/widgets/loading_dialog.dart';
import '../../../core/widgets/main_button.dart';
import '../../../core/widgets/toast.dart';
import '../widgets/donot_have_an_account.dart';
import '../widgets/image_and_welcome_back.dart';
import '../widgets/or.dart';
import '../widgets/remember_me_and_forget_password.dart';
import '../widgets/sign_in_form.dart';
import '../widgets/social_auth.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final signinCubit = getIt<SigninCubit>();

  @override
  void initState() {
    super.initState();
    signinCubit.emailTextEditingController = TextEditingController();
    signinCubit.passwordTextEditingController = TextEditingController();
    signinCubit.formKey = GlobalKey<FormState>();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.transparentColor,
      statusBarBrightness: Brightness.light,
    ));
  }

  @override
  void dispose() {
    signinCubit.emailTextEditingController.dispose();
    signinCubit.passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log(signinCubit.state.toString());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ImageAndWelcomeBack(
                  title: 'Welcome back!',
                ),
                SignInForm(
                  emailTextEditingController:
                      signinCubit.emailTextEditingController,
                  passwordTextEditingController:
                      signinCubit.passwordTextEditingController,
                  formKey: signinCubit.formKey,
                ),
                const RememberMeAndForgetPassword(),
                const SigninButtonListener(),
                const Or(),
                const SocialAuth(),
                const DonotHaveAnAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SigninButtonListener extends StatelessWidget {
  const SigninButtonListener({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 52,
      ),
      child: BlocListener<SigninCubit, SigninState>(
        listener: (context, state) {
          state.whenOrNull(
            signinLoading: () {
              loadingDialog(context);
            },
            signinSuccess: (userCredential) {
              context.pop();
              debugPrint(userCredential.toString());
              showToast(message: 'Signin successfully');
              context.pushReplacementNamed(Routes.layout);
            },
            signinFail: (error) {
              context.pop();
              debugPrint(error);
              showToast(message: error);
            },
          );
        },
        child: MainButton(
          onPressed: () {
            if (context.read<SigninCubit>().formKey.currentState!.validate()) {
              context.read<SigninCubit>().signin();
            }
          },
          title: 'Sign in',
        ),
      ),
    );
  }
}
