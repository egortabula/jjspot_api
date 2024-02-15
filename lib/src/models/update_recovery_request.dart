class UpdateRecoveryRequest {
  final String userId;
  final String secret;
  final String password;
  final String passwordAgain;

  UpdateRecoveryRequest({
    required this.userId,
    required this.secret,
    required this.password,
    required this.passwordAgain,
  });
}
