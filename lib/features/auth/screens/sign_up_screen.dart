import 'package:flutter/material.dart';
import 'package:gusteau/features/auth/widgets/sign_up_form.dart';
import '../../../core/widgets/main_button.dart';
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
  late TextEditingController nameTextEditingController;
  late TextEditingController emailTextEditingController;
  late TextEditingController passwordTextEditingController;
  late GlobalKey<FormState> formKey;

  @override
  void initState() {
    super.initState();
    nameTextEditingController = TextEditingController();
    emailTextEditingController = TextEditingController();
    passwordTextEditingController = TextEditingController();
    formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    nameTextEditingController.dispose();
    emailTextEditingController.dispose();
    passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const ImageAndWelcomeBack(
                  title: 'Sign up',
                ),
                SignUpForm(
                  nameTextEditingController: nameTextEditingController,
                  emailTextEditingController: emailTextEditingController,
                  passwordTextEditingController: passwordTextEditingController,
                  formKey: formKey,
                ),
                const AgreeToTermsAndPrivacyPolicy(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 24,
                    horizontal: 52,
                  ),
                  child: MainButton(
                    onPressed: () {},
                    title: 'Sign up',
                  ),
                ),
                const Or(),
                const SocialAuth(),
                const AlreadyHaveAnAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
