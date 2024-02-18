import 'package:appwrite/appwrite.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:jjspot_api/jjspot_api.dart';
part './generated/promocode_dto.mapper.dart';

@MappableClass()
class PromocodeDto with PromocodeDtoMappable {
  @MappableField(key: r'\$id')
  final String id;

  final String code;

  final PromocodeDurationEnum duration;

  PromocodeDto({
    required this.id,
    required this.code,
    required this.duration,
  });

  PromocodeDto.draft({
    this.code = '',
    this.duration = PromocodeDurationEnum.undefined,
  }) : id = ID.unique();
}
