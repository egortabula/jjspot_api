import 'package:dart_mappable/dart_mappable.dart';
part './generated/promocode_duration_enum.mapper.dart';

@MappableEnum(defaultValue: PromocodeDurationEnum.undefined)
enum PromocodeDurationEnum {
  @MappableValue('1-день')
  daily,

  @MappableValue('3-дня')
  threeDays,

  @MappableValue('7-дней')
  sevenDays,

  @MappableValue('14-дней')
  fourteenDays,

  @MappableValue('21-день')
  twentyOneDays,

  @MappableValue('1-месяц')
  monthly,

  @MappableValue('3-месяца')
  threeMonth,

  @MappableValue('6-месяцев')
  sixMonth,

  @MappableValue('1-год')
  yearly,

  undefined,
}
