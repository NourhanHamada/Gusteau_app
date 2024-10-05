import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:gusteau/features/auth/data/models/signin_request_body.dart';
import '../../../../core/networking/firebase/firebase_error_model.dart';
import '../../../../core/networking/firebase/firebase_result.dart';

class SigninRepo {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<FirebaseResult> signin(SigninRequestBody signinRequestBody) async {
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
        email: signinRequestBody.email,
        password: signinRequestBody.password,
      );
      User? user = userCredential.user;
      if (user != null && !user.emailVerified) {
        debugPrint("Email is not verified. Please check your inbox.");
        return FirebaseResult.fail(
          FirebaseErrorModel(
            message: "Your email is not verified. Please verify your email.",
            code: "EMAIL_NOT_VERIFIED",
          ),
        );
      }
      String? displayName = user?.displayName;
      debugPrint('User signed in: ${user?.email}, Name: $displayName');
      return FirebaseResult.success(userCredential);
    } on FirebaseAuthException catch (error) {
      debugPrint(
          'Sign in failed with code: ${error.code}, message: ${error.message}');
      return FirebaseResult.fail(
        FirebaseErrorModel(
          message: error.message!,
          code: error.code,
        ),
      );
    }
  }

  Future<bool> isEmailVerified(User user) async {
    await user.reload();
    return user.emailVerified;
  }

  Future<void> checkEmailVerification() async {
    User? user = auth.currentUser;
    if (user != null) {
      bool verified = await isEmailVerified(user);
      if (verified) {
        debugPrint("Email is verified");
      } else {
        debugPrint("Email is not verified. Please check your inbox.");
      }
    }
  }
}
