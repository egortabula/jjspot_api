import 'package:dart_mappable/dart_mappable.dart';
part 'location_model.mapper.dart';

@MappableClass(hook: UnmappedPropertiesHook('unmappedProps'))
class LocationModel with LocationModelMappable {
  Map<String, dynamic>? unmappedProps;
  String name;
  String description;
  List<dynamic> images;
  String address;

  double lat;
  double lng;
  bool isHide;

  LocationModel(
    this.unmappedProps, {
    required this.name,
    required this.description,
    required this.images,
    required this.address,
    required this.lat,
    required this.lng,
    required this.isHide,
  });

  LocationModel.toAppwrite({
    required this.name,
    required this.address,
    required this.description,
    required this.lat,
    required this.images,
    required this.lng,
    required this.isHide,
  });

  String get locationId => unmappedProps?['\$id'];
}
