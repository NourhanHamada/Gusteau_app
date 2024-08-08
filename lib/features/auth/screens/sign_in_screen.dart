import 'package:flutter/material.dart';
import '../../../core/widgets/main_button.dart';
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
  late TextEditingController emailTextEditingController;
  late TextEditingController passwordTextEditingController;
  late GlobalKey<FormState> formKey;

  @override
  void initState() {
    super.initState();
    emailTextEditingController = TextEditingController();
    passwordTextEditingController = TextEditingController();
    formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    emailTextEditingController.dispose();
    passwordTextEditingController.dispose();
    formKey.currentState!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const ImageAndWelcomeBack(),
                  SignInForm(
                    emailTextEditingController: emailTextEditingController,
                    passwordTextEditingController:
                        passwordTextEditingController,
                    formKey: formKey,
                  ),
                  const RememberMeAndForgetPassword(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 24, horizontal: 52),
                    child: MainButton(
                      onPressed: () {},
                      title: 'Sign in',
                    ),
                  ),
                  const Or(),
                  const SocialAuth(),
                  const DonotHaveAnAccount(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
