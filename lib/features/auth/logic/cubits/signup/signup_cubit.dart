import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:gusteau/features/auth/logic/cubits/signup/signup_state.dart';

import '../../../data/models/signup_request_body.dart';
import '../../../data/repos/signup_repo.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo signupRepo;

  SignupCubit(this.signupRepo) : super(const SignupState.initial());

  late TextEditingController nameTextEditingController;
  late TextEditingController emailTextEditingController;
  late TextEditingController passwordTextEditingController;
  late GlobalKey<FormState> formKey;

  void signup() async {
    emit(const SignupState.signupLoading());
    var response = await signupRepo.signUp(SignupRequestBody(
      emailTextEditingController.text,
      passwordTextEditingController.text,
      nameTextEditingController.text,
    ));
    response.when(success: (userCredential) {
      emit(SignupState.signupSuccess(userCredential));
    }, fail: (error) {
      emit(SignupState.signupFail(error: error.message ?? ''));
    });
  }
}
