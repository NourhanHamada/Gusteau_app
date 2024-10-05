import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import '../../../../core/networking/firebase/firebase_error_model.dart';
import '../../../../core/networking/firebase/firebase_result.dart';
import '../models/signup_request_body.dart';

class SignupRepo {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future<FirebaseResult> signUp(SignupRequestBody signupRequestBody) async {
    try {
      UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: signupRequestBody.email,
        password: signupRequestBody.password,
      );


      await userCredential.user?.updateProfile(displayName: signupRequestBody.displayName);




      debugPrint('User signed up: ${userCredential.user?.email}');
      return FirebaseResult.success(userCredential);
    } on FirebaseAuthException catch (error) {
      debugPrint(
          'Sign up failed with code: ${error.code}, message: ${error.message}');
      return FirebaseResult.fail(
        FirebaseErrorModel(
          message: error.message!,
          code: error.code,
        ),
      );
    }
  }
}
