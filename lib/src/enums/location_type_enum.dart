import 'package:dart_mappable/dart_mappable.dart';
part './generated/location_type_enum.mapper.dart';

@MappableEnum()
enum LocationTypeEnum {
  @MappableValue('Выбрать тип')
  undifuned,
  @MappableValue('Локация')
  location,
  @MappableValue('Студия')
  studio,
  @MappableValue('Ресторан')
  restaurant,
  @MappableValue('Отель')
  hotel,
}
