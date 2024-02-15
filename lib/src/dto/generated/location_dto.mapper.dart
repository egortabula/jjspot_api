// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../location_dto.dart';

class LocationDtoMapper extends ClassMapperBase<LocationDto> {
  LocationDtoMapper._();

  static LocationDtoMapper? _instance;
  static LocationDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LocationDtoMapper._());
      LocationTypeEnumMapper.ensureInitialized();
      LocationFeaturesEnumMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LocationDto';

  static String? _$id(LocationDto v) => v.id;
  static const Field<LocationDto, String> _f$id =
      Field('id', _$id, key: '\$id');
  static String _$name(LocationDto v) => v.name;
  static const Field<LocationDto, String> _f$name = Field('name', _$name);
  static String? _$description(LocationDto v) => v.description;
  static const Field<LocationDto, String> _f$description =
      Field('description', _$description);
  static List<String> _$images(LocationDto v) => v.images;
  static const Field<LocationDto, List<String>> _f$images =
      Field('images', _$images);
  static String _$address(LocationDto v) => v.address;
  static const Field<LocationDto, String> _f$address =
      Field('address', _$address);
  static double _$lat(LocationDto v) => v.lat;
  static const Field<LocationDto, double> _f$lat = Field('lat', _$lat);
  static double _$lng(LocationDto v) => v.lng;
  static const Field<LocationDto, double> _f$lng = Field('lng', _$lng);
  static LocationTypeEnum? _$type(LocationDto v) => v.type;
  static const Field<LocationDto, LocationTypeEnum> _f$type =
      Field('type', _$type);
  static bool _$isHide(LocationDto v) => v.isHide;
  static const Field<LocationDto, bool> _f$isHide = Field('isHide', _$isHide);
  static List<LocationFeaturesEnum> _$features(LocationDto v) => v.features;
  static const Field<LocationDto, List<LocationFeaturesEnum>> _f$features =
      Field('features', _$features);
  static double _$rating(LocationDto v) => v.rating;
  static const Field<LocationDto, double> _f$rating = Field('rating', _$rating);

  @override
  final MappableFields<LocationDto> fields = const {
    #id: _f$id,
    #name: _f$name,
    #description: _f$description,
    #images: _f$images,
    #address: _f$address,
    #lat: _f$lat,
    #lng: _f$lng,
    #type: _f$type,
    #isHide: _f$isHide,
    #features: _f$features,
    #rating: _f$rating,
  };

  @override
  final MappingHook hook = const LocationDtoHook();
  static LocationDto _instantiate(DecodingData data) {
    return LocationDto.base(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        images: data.dec(_f$images),
        address: data.dec(_f$address),
        lat: data.dec(_f$lat),
        lng: data.dec(_f$lng),
        type: data.dec(_f$type),
        isHide: data.dec(_f$isHide),
        features: data.dec(_f$features),
        rating: data.dec(_f$rating));
  }

  @override
  final Function instantiate = _instantiate;

  static LocationDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LocationDto>(map);
  }

  static LocationDto fromJson(String json) {
    return ensureInitialized().decodeJson<LocationDto>(json);
  }
}

mixin LocationDtoMappable {
  String toJson() {
    return LocationDtoMapper.ensureInitialized()
        .encodeJson<LocationDto>(this as LocationDto);
  }

  Map<String, dynamic> toMap() {
    return LocationDtoMapper.ensureInitialized()
        .encodeMap<LocationDto>(this as LocationDto);
  }

  LocationDtoCopyWith<LocationDto, LocationDto, LocationDto> get copyWith =>
      _LocationDtoCopyWithImpl(this as LocationDto, $identity, $identity);
  @override
  String toString() {
    return LocationDtoMapper.ensureInitialized()
        .stringifyValue(this as LocationDto);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            LocationDtoMapper.ensureInitialized()
                .isValueEqual(this as LocationDto, other));
  }

  @override
  int get hashCode {
    return LocationDtoMapper.ensureInitialized().hashValue(this as LocationDto);
  }
}

extension LocationDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LocationDto, $Out> {
  LocationDtoCopyWith<$R, LocationDto, $Out> get $asLocationDto =>
      $base.as((v, t, t2) => _LocationDtoCopyWithImpl(v, t, t2));
}

abstract class LocationDtoCopyWith<$R, $In extends LocationDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get images;
  ListCopyWith<$R, LocationFeaturesEnum,
          ObjectCopyWith<$R, LocationFeaturesEnum, LocationFeaturesEnum>>
      get features;
  $R call(
      {String? id,
      String? name,
      String? description,
      List<String>? images,
      String? address,
      double? lat,
      double? lng,
      LocationTypeEnum? type,
      bool? isHide,
      List<LocationFeaturesEnum>? features,
      double? rating});
  LocationDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LocationDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LocationDto, $Out>
    implements LocationDtoCopyWith<$R, LocationDto, $Out> {
  _LocationDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LocationDto> $mapper =
      LocationDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get images =>
      ListCopyWith($value.images, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(images: v));
  @override
  ListCopyWith<$R, LocationFeaturesEnum,
          ObjectCopyWith<$R, LocationFeaturesEnum, LocationFeaturesEnum>>
      get features => ListCopyWith($value.features,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(features: v));
  @override
  $R call(
          {Object? id = $none,
          String? name,
          Object? description = $none,
          List<String>? images,
          String? address,
          double? lat,
          double? lng,
          Object? type = $none,
          bool? isHide,
          List<LocationFeaturesEnum>? features,
          double? rating}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (name != null) #name: name,
        if (description != $none) #description: description,
        if (images != null) #images: images,
        if (address != null) #address: address,
        if (lat != null) #lat: lat,
        if (lng != null) #lng: lng,
        if (type != $none) #type: type,
        if (isHide != null) #isHide: isHide,
        if (features != null) #features: features,
        if (rating != null) #rating: rating
      }));
  @override
  LocationDto $make(CopyWithData data) => LocationDto.base(
      id: data.get(#id, or: $value.id),
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      images: data.get(#images, or: $value.images),
      address: data.get(#address, or: $value.address),
      lat: data.get(#lat, or: $value.lat),
      lng: data.get(#lng, or: $value.lng),
      type: data.get(#type, or: $value.type),
      isHide: data.get(#isHide, or: $value.isHide),
      features: data.get(#features, or: $value.features),
      rating: data.get(#rating, or: $value.rating));

  @override
  LocationDtoCopyWith<$R2, LocationDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LocationDtoCopyWithImpl($value, $cast, t);
}
