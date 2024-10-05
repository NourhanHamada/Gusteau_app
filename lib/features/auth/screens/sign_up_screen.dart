import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gusteau/core/extension.dart';
import 'package:gusteau/core/routing/routes.dart';
import 'package:gusteau/features/auth/logic/cubits/signup/signup_cubit.dart';
import 'package:gusteau/features/auth/logic/cubits/signup/signup_state.dart';
import 'package:gusteau/features/auth/widgets/sign_up_form.dart';
import '../../../core/di/dependency_injection.dart';
import '../../../core/widgets/loading_dialog.dart';
import '../../../core/widgets/main_button.dart';
import '../../../core/widgets/toast.dart';
import '../widgets/agree_to_terms_privacy_policy.dart';
import '../widgets/already_have_an_account.dart';
import '../widgets/image_and_welcome_back.dart';
import '../widgets/or.dart';
import '../widgets/social_auth.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final signupCubit = getIt<SignupCubit>();

  @override
  void initState() {
    super.initState();
    signupCubit.nameTextEditingController = TextEditingController();
    signupCubit.emailTextEditingController = TextEditingController();
    signupCubit.passwordTextEditingController = TextEditingController();
    signupCubit.formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    signupCubit.nameTextEditingController.dispose();
    signupCubit.emailTextEditingController.dispose();
    signupCubit.passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ImageAndWelcomeBack(
                  title: 'Sign up',
                ),
                SignUpForm(),
                AgreeToTermsAndPrivacyPolicy(),
                SignupButtonListener(),
                Or(),
                SocialAuth(),
                AlreadyHaveAnAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignupButtonListener extends StatelessWidget {
  const SignupButtonListener({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 52,
      ),
      child: BlocListener<SignupCubit, SignupState>(
        listener: (context, state) {
          state.whenOrNull(
            signupLoading: () {
              loadingDialog(context);
            },
            signupSuccess: (userCredential) {
              context.pop();
              debugPrint(userCredential.toString());
              showToast(message: 'Signup successfully');
              context.pushReplacementNamed(Routes.signinScreen);
            },
            signupFail: (error) {
              context.pop();
              debugPrint(error);
              showToast(message: error);
            },
          );
        },
        child: MainButton(
          onPressed: () {
            if (context.read<SignupCubit>().formKey.currentState!.validate()) {
              context.read<SignupCubit>();
              context.read<SignupCubit>().signup();
            }
          },
          title: 'Sign up',
        ),
      ),
    );
  }
}
