import 'package:jjspot_api/src/dto/rate_dto.dart';
import 'package:jjspot_api/src/dto/user_dto.dart';

class CreateLocationRateResponse {
  final RateDto rate;
  final UserDto user;

  CreateLocationRateResponse({
    required this.rate,
    required this.user,
  });
}
