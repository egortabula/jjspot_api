import 'package:dart_mappable/dart_mappable.dart';
import 'package:jjspot_api/jjspot_api.dart';
import 'package:jjspot_api/src/enums/promocode_duration_enum.dart';

@MappableClass()
class PromocodeDto {
  @MappableField(key: r'\$id')
  final String id;

  final String code;

  final DateTime validUntil;

  final PromocodeDurationEnum duration;

  List<UserDto> usedBy;

  PromocodeDto({
    required this.id,
    required this.code,
    required this.validUntil,
    required this.duration,
    required this.usedBy,
  });

  
}

class PromocodeHook extends MappingHook {
  const PromocodeHook();
  @override
  Object? afterEncode(Object? value) {
    value = value as Map<String, dynamic>;
    List<dynamic> usedBy = value['usedBy'];

    usedBy = usedBy.map((user) => user['\$id']).toList();

    value['usedBy'] = usedBy;

    return super.afterEncode(value);
  }
}