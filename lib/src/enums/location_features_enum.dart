import 'package:dart_mappable/dart_mappable.dart';
part './generated/location_features_enum.mapper.dart';

@MappableEnum(defaultValue: LocationFeaturesEnum.undefined)
enum LocationFeaturesEnum {
  @MappableValue('Дом')
  house,
  @MappableValue('Парковка')
  parking,
  @MappableValue('Набережная')
  seafront,
  @MappableValue('Парк')
  park,
  @MappableValue('Светлая-локация')
  lightLocation,
  @MappableValue('Темная-локация')
  darkLocation,
  @MappableValue('Минимализм')
  minimalistic,
  @MappableValue('undefined')
  undefined,
}
