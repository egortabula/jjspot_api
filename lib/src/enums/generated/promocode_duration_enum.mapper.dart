// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../promocode_duration_enum.dart';

class PromocodeDurationEnumMapper extends EnumMapper<PromocodeDurationEnum> {
  PromocodeDurationEnumMapper._();

  static PromocodeDurationEnumMapper? _instance;
  static PromocodeDurationEnumMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PromocodeDurationEnumMapper._());
    }
    return _instance!;
  }

  static PromocodeDurationEnum fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  PromocodeDurationEnum decode(dynamic value) {
    switch (value) {
      case '1-день':
        return PromocodeDurationEnum.daily;
      case '3-дня':
        return PromocodeDurationEnum.threeDays;
      case '7-дней':
        return PromocodeDurationEnum.sevenDays;
      case '14-дней':
        return PromocodeDurationEnum.fourteenDays;
      case '21-день':
        return PromocodeDurationEnum.twentyOneDays;
      case '1-месяц':
        return PromocodeDurationEnum.monthly;
      case '3-месяца':
        return PromocodeDurationEnum.threeMonth;
      case '6-месяцев':
        return PromocodeDurationEnum.sixMonth;
      case '1-год':
        return PromocodeDurationEnum.yearly;
      case 'undefined':
        return PromocodeDurationEnum.undefined;
      default:
        return PromocodeDurationEnum.values[9];
    }
  }

  @override
  dynamic encode(PromocodeDurationEnum self) {
    switch (self) {
      case PromocodeDurationEnum.daily:
        return '1-день';
      case PromocodeDurationEnum.threeDays:
        return '3-дня';
      case PromocodeDurationEnum.sevenDays:
        return '7-дней';
      case PromocodeDurationEnum.fourteenDays:
        return '14-дней';
      case PromocodeDurationEnum.twentyOneDays:
        return '21-день';
      case PromocodeDurationEnum.monthly:
        return '1-месяц';
      case PromocodeDurationEnum.threeMonth:
        return '3-месяца';
      case PromocodeDurationEnum.sixMonth:
        return '6-месяцев';
      case PromocodeDurationEnum.yearly:
        return '1-год';
      case PromocodeDurationEnum.undefined:
        return 'undefined';
    }
  }
}

extension PromocodeDurationEnumMapperExtension on PromocodeDurationEnum {
  dynamic toValue() {
    PromocodeDurationEnumMapper.ensureInitialized();
    return MapperContainer.globals.toValue<PromocodeDurationEnum>(this);
  }
}
