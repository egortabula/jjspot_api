import 'package:dart_mappable/dart_mappable.dart';

part './generated/filter_item_dto.mapper.dart';

@MappableClass()
class FilterItemDto with FilterItemDtoMappable {
  final String label;
  final String featureKey;
  final String featureValue;

  FilterItemDto({
    required this.label,
    required this.featureKey,
    required this.featureValue,
  });
}
