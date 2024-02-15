import 'package:appwrite/appwrite.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:jjspot_api/src/enums/location_features_enum.dart';
import 'package:jjspot_api/src/enums/location_type_enum.dart';
part './generated/location_dto.mapper.dart';

@MappableClass(
  hook: LocationDtoHook(),
)
class LocationDto with LocationDtoMappable {
  @MappableField(key: r'\$id')
  final String? id;
  String name;
  String? description;

  List<String> images;
  String address;
  LocationTypeEnum? type;
  List<LocationFeaturesEnum> features;
  final double rating;
  double lat;
  double lng;
  bool isHide;

  LocationDto.base({
    required this.id,
    required this.name,
    required this.description,
    required this.images,
    required this.address,
    required this.lat,
    required this.lng,
    required this.type,
    required this.isHide,
    required this.features,
    required this.rating,
  });

  LocationDto.draft({
    required this.name,
    required this.address,
    required this.description,
    required this.lat,
    required this.images,
    required this.lng,
    required this.type,
    required this.isHide,
    required this.features,
  })  : id = ID.unique(),
        rating = 0;
}

class LocationDtoHook extends MappingHook {
  const LocationDtoHook();

  @override
  Object? afterEncode(Object? value) {
    value = value as Map<String, dynamic>;
    value.remove(r'$id');
    return super.afterEncode(value);
  }
}
