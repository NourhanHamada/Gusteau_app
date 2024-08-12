import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:sign_in_with_apple/sign_in_with_apple.dart';

import '../../../core/assets/icons.dart';

class SocialAuth extends StatefulWidget {
  const SocialAuth({super.key});

  @override
  State<SocialAuth> createState() => _SocialAuthState();
}

class _SocialAuthState extends State<SocialAuth> {
  // late GoogleSignIn googleSignIn;
  //
  // @override
  // void initState() {
  //   super.initState();
  //
  //   // Init google auth
  //   const List<String> scopes = <String>[
  //     'email',
  //     'https://www.googleapis.com/auth/contacts.readonly',
  //   ];
  //
  //   googleSignIn = GoogleSignIn(
  //     // Optional clientId
  //     // clientId: 'your-client_id.apps.googleusercontent.com',
  //     scopes: scopes,
  //   );
  // }
  //
  // Future<void> handleGoogleSignIn() async {
  //   try {
  //     await googleSignIn.signIn();
  //   } catch (error) {
  //     print(error);
  //   }
  // }
  //
  // handleAppleSignIn () async {
  //   final credential = await SignInWithApple.getAppleIDCredential(
  //     scopes: [
  //       AppleIDAuthorizationScopes.email,
  //       AppleIDAuthorizationScopes.fullName,
  //     ],
  //   );
  //   print(credential);
  // }



  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            AppIcons.facebookIcon,
          ),
        ),
        IconButton(
          onPressed: () {
            // handleGoogleSignIn();
          },
          icon: Image.asset(
            AppIcons.googleIcon,
          ),
        ),
        IconButton(
          onPressed: () {
            // handleAppleSignIn();
          },
          icon: Image.asset(
            AppIcons.appleIcon,
          ),
        ),
      ],
    );
  }
}
