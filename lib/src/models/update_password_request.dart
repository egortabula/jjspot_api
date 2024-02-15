class UpdatePasswordRequest {
  final String password;
  final String oldPassword;

  UpdatePasswordRequest({
    required this.password,
    required this.oldPassword,
  });
}
