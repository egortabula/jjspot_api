// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../rate_dto.dart';

class RateDtoMapper extends ClassMapperBase<RateDto> {
  RateDtoMapper._();

  static RateDtoMapper? _instance;
  static RateDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RateDtoMapper._());
      LocationDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RateDto';

  static String? _$id(RateDto v) => v.id;
  static const Field<RateDto, String> _f$id = Field('id', _$id, key: '\$id');
  static double _$rating(RateDto v) => v.rating;
  static const Field<RateDto, double> _f$rating = Field('rating', _$rating);
  static LocationDto? _$location(RateDto v) => v.location;
  static const Field<RateDto, LocationDto> _f$location =
      Field('location', _$location);

  @override
  final MappableFields<RateDto> fields = const {
    #id: _f$id,
    #rating: _f$rating,
    #location: _f$location,
  };

  @override
  final MappingHook hook = const LocationHook();
  static RateDto _instantiate(DecodingData data) {
    return RateDto.base(
        id: data.dec(_f$id),
        rating: data.dec(_f$rating),
        location: data.dec(_f$location));
  }

  @override
  final Function instantiate = _instantiate;

  static RateDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RateDto>(map);
  }

  static RateDto fromJson(String json) {
    return ensureInitialized().decodeJson<RateDto>(json);
  }
}

mixin RateDtoMappable {
  String toJson() {
    return RateDtoMapper.ensureInitialized()
        .encodeJson<RateDto>(this as RateDto);
  }

  Map<String, dynamic> toMap() {
    return RateDtoMapper.ensureInitialized()
        .encodeMap<RateDto>(this as RateDto);
  }

  RateDtoCopyWith<RateDto, RateDto, RateDto> get copyWith =>
      _RateDtoCopyWithImpl(this as RateDto, $identity, $identity);
  @override
  String toString() {
    return RateDtoMapper.ensureInitialized().stringifyValue(this as RateDto);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            RateDtoMapper.ensureInitialized()
                .isValueEqual(this as RateDto, other));
  }

  @override
  int get hashCode {
    return RateDtoMapper.ensureInitialized().hashValue(this as RateDto);
  }
}

extension RateDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, RateDto, $Out> {
  RateDtoCopyWith<$R, RateDto, $Out> get $asRateDto =>
      $base.as((v, t, t2) => _RateDtoCopyWithImpl(v, t, t2));
}

abstract class RateDtoCopyWith<$R, $In extends RateDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  LocationDtoCopyWith<$R, LocationDto, LocationDto>? get location;
  $R call({String? id, double? rating, LocationDto? location});
  RateDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RateDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RateDto, $Out>
    implements RateDtoCopyWith<$R, RateDto, $Out> {
  _RateDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RateDto> $mapper =
      RateDtoMapper.ensureInitialized();
  @override
  LocationDtoCopyWith<$R, LocationDto, LocationDto>? get location =>
      $value.location?.copyWith.$chain((v) => call(location: v));
  @override
  $R call({Object? id = $none, double? rating, Object? location = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (rating != null) #rating: rating,
        if (location != $none) #location: location
      }));
  @override
  RateDto $make(CopyWithData data) => RateDto.base(
      id: data.get(#id, or: $value.id),
      rating: data.get(#rating, or: $value.rating),
      location: data.get(#location, or: $value.location));

  @override
  RateDtoCopyWith<$R2, RateDto, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RateDtoCopyWithImpl($value, $cast, t);
}
