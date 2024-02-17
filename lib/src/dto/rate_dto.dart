import 'package:appwrite/appwrite.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:jjspot_api/src/dto/location_dto.dart';

part './generated/rate_dto.mapper.dart';

@MappableClass(hook: LocationHook())
class RateDto with RateDtoMappable {
  @MappableField(key: r'\$id')
  String? id;
  final int rating;

  final LocationDto? location;

  RateDto({
    required this.id,
    required this.rating,
    required this.location,
  });

  @MappableConstructor()
  RateDto.base({
    required this.id,
    required this.rating,
    required this.location,
  });

  RateDto.draft({required this.rating, required this.location})
      : id = ID.unique();
}

class LocationHook extends MappingHook {
  const LocationHook();

  @override
  Object? afterEncode(Object? value) {
    value = value as Map<String, dynamic>;
    var location = value['location'] as Map<String, dynamic>;

    value['location'] = location[r'$id'];
    return super.afterEncode(value);
  }
}
