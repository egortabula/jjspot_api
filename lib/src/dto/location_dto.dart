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

  LocationDto.demo({
    this.id = 'demo',
    this.name = 'Набережная «Ривьера»',
    this.description = 'Пока сама набережная «Ривьера» закрыта на реконструкцию, '
        'советуем заглянуть в парк неподалеку. Просторные деревянные скамейки, '
        'ухоженные дорожки и стильная каменная лестница извилистой формы. '
        'Поднявшись, можно сделать несколько кадров с видом на море.',
    this.lat = 43.587079,
    this.lng = 39.713692,
    this.isHide = false,
    this.images = const [
      '65c8be4cdfed24119a78',
      '65c8be7c7c167344eb76',
      '65c8be7c98fee66d38d1',
      '65c8be7cab56d10653e5',
      '65c8be7ccd833e43c105',
    ],
    this.type = LocationTypeEnum.location,
    this.features = const [
      LocationFeaturesEnum.park,
      LocationFeaturesEnum.seafront
    ],
    this.rating = 0.0,
    this.address = 'Ривьерский переулок, 7 ',
  });

  bool get isDemo => id == 'demo';
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
