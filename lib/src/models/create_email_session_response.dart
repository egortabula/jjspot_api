import 'package:appwrite/models.dart';

class CreateEmailSessionResponse {
  final User user;
  final Session session;

  CreateEmailSessionResponse({
    required this.user,
    required this.session,
  });
}
