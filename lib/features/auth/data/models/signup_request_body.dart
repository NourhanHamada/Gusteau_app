class SignupRequestBody {
  String email;
  String password;
  String? displayName;

  SignupRequestBody(this.email, this.password, this.displayName);
}