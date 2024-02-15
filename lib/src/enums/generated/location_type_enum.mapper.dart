// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../location_type_enum.dart';

class LocationTypeEnumMapper extends EnumMapper<LocationTypeEnum> {
  LocationTypeEnumMapper._();

  static LocationTypeEnumMapper? _instance;
  static LocationTypeEnumMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LocationTypeEnumMapper._());
    }
    return _instance!;
  }

  static LocationTypeEnum fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  LocationTypeEnum decode(dynamic value) {
    switch (value) {
      case 'Выбрать тип':
        return LocationTypeEnum.undifuned;
      case 'Локация':
        return LocationTypeEnum.location;
      case 'Студия':
        return LocationTypeEnum.studio;
      case 'Ресторан':
        return LocationTypeEnum.restaurant;
      case 'Отель':
        return LocationTypeEnum.hotel;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(LocationTypeEnum self) {
    switch (self) {
      case LocationTypeEnum.undifuned:
        return 'Выбрать тип';
      case LocationTypeEnum.location:
        return 'Локация';
      case LocationTypeEnum.studio:
        return 'Студия';
      case LocationTypeEnum.restaurant:
        return 'Ресторан';
      case LocationTypeEnum.hotel:
        return 'Отель';
    }
  }
}

extension LocationTypeEnumMapperExtension on LocationTypeEnum {
  dynamic toValue() {
    LocationTypeEnumMapper.ensureInitialized();
    return MapperContainer.globals.toValue<LocationTypeEnum>(this);
  }
}
