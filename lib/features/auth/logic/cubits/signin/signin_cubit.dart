import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:gusteau/features/auth/data/models/signin_request_body.dart';
import 'package:gusteau/features/auth/data/repos/signin_repo.dart';
import 'package:gusteau/features/auth/logic/cubits/signin/signin_state.dart';

class SigninCubit extends Cubit<SigninState> {
  final SigninRepo signinRepo;

  SigninCubit(this.signinRepo) : super(const SigninState.initial());

  late TextEditingController emailTextEditingController;
  late TextEditingController passwordTextEditingController;
  late GlobalKey<FormState> formKey;

  void signin() async {
    emit(const SigninState.signinLoading());
    var response = await signinRepo.signin(SigninRequestBody(
      emailTextEditingController.text,
      passwordTextEditingController.text,
    ));
    response.when(success: (userCredential) {
      emit(SigninState.signinSuccess(userCredential));
    }, fail: (error) {
      emit(SigninState.signinFail(error: error.message ?? ''));
    });
  }
}
