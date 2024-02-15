// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../location_features_enum.dart';

class LocationFeaturesEnumMapper extends EnumMapper<LocationFeaturesEnum> {
  LocationFeaturesEnumMapper._();

  static LocationFeaturesEnumMapper? _instance;
  static LocationFeaturesEnumMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LocationFeaturesEnumMapper._());
    }
    return _instance!;
  }

  static LocationFeaturesEnum fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  LocationFeaturesEnum decode(dynamic value) {
    switch (value) {
      case 'Дом':
        return LocationFeaturesEnum.house;
      case 'Парковка':
        return LocationFeaturesEnum.parking;
      case 'Набережная':
        return LocationFeaturesEnum.seafront;
      case 'Парк':
        return LocationFeaturesEnum.park;
      case 'Светлая-локация':
        return LocationFeaturesEnum.lightLocation;
      case 'Темная-локация':
        return LocationFeaturesEnum.darkLocation;
      case 'Минимализм':
        return LocationFeaturesEnum.minimalistic;
      case 'undefined':
        return LocationFeaturesEnum.undefined;
      default:
        return LocationFeaturesEnum.values[7];
    }
  }

  @override
  dynamic encode(LocationFeaturesEnum self) {
    switch (self) {
      case LocationFeaturesEnum.house:
        return 'Дом';
      case LocationFeaturesEnum.parking:
        return 'Парковка';
      case LocationFeaturesEnum.seafront:
        return 'Набережная';
      case LocationFeaturesEnum.park:
        return 'Парк';
      case LocationFeaturesEnum.lightLocation:
        return 'Светлая-локация';
      case LocationFeaturesEnum.darkLocation:
        return 'Темная-локация';
      case LocationFeaturesEnum.minimalistic:
        return 'Минимализм';
      case LocationFeaturesEnum.undefined:
        return 'undefined';
    }
  }
}

extension LocationFeaturesEnumMapperExtension on LocationFeaturesEnum {
  dynamic toValue() {
    LocationFeaturesEnumMapper.ensureInitialized();
    return MapperContainer.globals.toValue<LocationFeaturesEnum>(this);
  }
}
