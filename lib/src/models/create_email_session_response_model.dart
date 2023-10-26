import 'package:appwrite/models.dart';
import 'package:jjspot_api/src/models/jj_spot_api_exception.dart';

class CreateEmailSessionResponseModel {
  final User? user;
  final Session? session;
  final JjSpotApiException exception;

  CreateEmailSessionResponseModel({
    required this.user,
    required this.session,
    required this.exception,
  });
}
