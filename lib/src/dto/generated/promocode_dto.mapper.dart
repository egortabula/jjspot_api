// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../promocode_dto.dart';

class PromocodeDtoMapper extends ClassMapperBase<PromocodeDto> {
  PromocodeDtoMapper._();

  static PromocodeDtoMapper? _instance;
  static PromocodeDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PromocodeDtoMapper._());
      PromocodeDurationEnumMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PromocodeDto';

  static String _$id(PromocodeDto v) => v.id;
  static const Field<PromocodeDto, String> _f$id =
      Field('id', _$id, key: '\$id');
  static String _$code(PromocodeDto v) => v.code;
  static const Field<PromocodeDto, String> _f$code = Field('code', _$code);
  static PromocodeDurationEnum _$duration(PromocodeDto v) => v.duration;
  static const Field<PromocodeDto, PromocodeDurationEnum> _f$duration =
      Field('duration', _$duration);

  @override
  final MappableFields<PromocodeDto> fields = const {
    #id: _f$id,
    #code: _f$code,
    #duration: _f$duration,
  };

  static PromocodeDto _instantiate(DecodingData data) {
    return PromocodeDto(
        id: data.dec(_f$id),
        code: data.dec(_f$code),
        duration: data.dec(_f$duration));
  }

  @override
  final Function instantiate = _instantiate;

  static PromocodeDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PromocodeDto>(map);
  }

  static PromocodeDto fromJson(String json) {
    return ensureInitialized().decodeJson<PromocodeDto>(json);
  }
}

mixin PromocodeDtoMappable {
  String toJson() {
    return PromocodeDtoMapper.ensureInitialized()
        .encodeJson<PromocodeDto>(this as PromocodeDto);
  }

  Map<String, dynamic> toMap() {
    return PromocodeDtoMapper.ensureInitialized()
        .encodeMap<PromocodeDto>(this as PromocodeDto);
  }

  PromocodeDtoCopyWith<PromocodeDto, PromocodeDto, PromocodeDto> get copyWith =>
      _PromocodeDtoCopyWithImpl(this as PromocodeDto, $identity, $identity);
  @override
  String toString() {
    return PromocodeDtoMapper.ensureInitialized()
        .stringifyValue(this as PromocodeDto);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            PromocodeDtoMapper.ensureInitialized()
                .isValueEqual(this as PromocodeDto, other));
  }

  @override
  int get hashCode {
    return PromocodeDtoMapper.ensureInitialized()
        .hashValue(this as PromocodeDto);
  }
}

extension PromocodeDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PromocodeDto, $Out> {
  PromocodeDtoCopyWith<$R, PromocodeDto, $Out> get $asPromocodeDto =>
      $base.as((v, t, t2) => _PromocodeDtoCopyWithImpl(v, t, t2));
}

abstract class PromocodeDtoCopyWith<$R, $In extends PromocodeDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? id, String? code, PromocodeDurationEnum? duration});
  PromocodeDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PromocodeDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PromocodeDto, $Out>
    implements PromocodeDtoCopyWith<$R, PromocodeDto, $Out> {
  _PromocodeDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PromocodeDto> $mapper =
      PromocodeDtoMapper.ensureInitialized();
  @override
  $R call({String? id, String? code, PromocodeDurationEnum? duration}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (code != null) #code: code,
        if (duration != null) #duration: duration
      }));
  @override
  PromocodeDto $make(CopyWithData data) => PromocodeDto(
      id: data.get(#id, or: $value.id),
      code: data.get(#code, or: $value.code),
      duration: data.get(#duration, or: $value.duration));

  @override
  PromocodeDtoCopyWith<$R2, PromocodeDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PromocodeDtoCopyWithImpl($value, $cast, t);
}
