import 'package:jjspot_api/src/dto/location_dto.dart';

class GetLocationsListResponse {
  final List<LocationDto> locations;
  final int total;

  GetLocationsListResponse({
    required this.locations,
    required this.total,
  });
}
