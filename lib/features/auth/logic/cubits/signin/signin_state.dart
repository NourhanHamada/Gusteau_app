import 'package:freezed_annotation/freezed_annotation.dart';

part 'signin_state.freezed.dart';

@freezed
class SigninState<T> with _$SigninState<T>{
  const factory SigninState.initial() = _Initial;

  const factory SigninState.signinLoading() = SigninLoading;

  const factory SigninState.signinSuccess(T data) = SigninSuccess<T>;

  const factory SigninState.signinFail({required String error}) = SigninFail;
}

