import 'package:appwrite/appwrite.dart';
import 'package:dartz/dartz.dart';

import '../consts.dart';
import '../models/models.dart';

class AuthProvider {
  const AuthProvider(this._account);

  final Account _account;

  Future<Either<AppwriteException, CreateAccountResponse>> createAccount(
      CreateAccountRequest request) async {
    try {
      final user = await _account.create(
        userId: ID.unique(),
        email: request.email,
        password: request.password,
      );

      final res = CreateAccountResponse(user: user);
      return right(res);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }

  /// авторизация по имейлу
  Future<Either<AppwriteException, CreateEmailSessionResponse>>
      createEmailSession(CreateEmailSessionRequest request) async {
    try {
      final session = await _account.createEmailSession(
        email: request.email,
        password: request.password,
      );
      final user = await _account.get();

      final res = CreateEmailSessionResponse(
        user: user,
        session: session,
      );
      return right(res);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }

  Future<Either<AppwriteException, CreatePasswordRecoveryResponse>>
      createPasswordRecovery(String email) async {
    try {
      final token = await _account.createRecovery(
        email: email,
        url: passwordRecoveryRedirectUrl,
      );
      final res = CreatePasswordRecoveryResponse(token: token);
      return right(res);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }

  Future<Either<AppwriteException, Unit>> updatePasswordRecovery(
    UpdateRecoveryRequest req,
  ) async {
    try {
      await _account.updateRecovery(
        userId: req.userId,
        secret: req.secret,
        password: req.password,
        passwordAgain: req.passwordAgain,
      );
      return right(unit);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }
}
