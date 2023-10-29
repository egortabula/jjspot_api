// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'location_model.dart';

class LocationModelMapper extends ClassMapperBase<LocationModel> {
  LocationModelMapper._();

  static LocationModelMapper? _instance;
  static LocationModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LocationModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LocationModel';

  static Map<String, dynamic>? _$unmappedProps(LocationModel v) =>
      v.unmappedProps;
  static const Field<LocationModel, Map<String, dynamic>> _f$unmappedProps =
      Field('unmappedProps', _$unmappedProps);
  static String _$name(LocationModel v) => v.name;
  static const Field<LocationModel, String> _f$name = Field('name', _$name);
  static String _$description(LocationModel v) => v.description;
  static const Field<LocationModel, String> _f$description =
      Field('description', _$description);
  static List<dynamic> _$images(LocationModel v) => v.images;
  static const Field<LocationModel, List<dynamic>> _f$images =
      Field('images', _$images);
  static String _$address(LocationModel v) => v.address;
  static const Field<LocationModel, String> _f$address =
      Field('address', _$address);
  static double _$lat(LocationModel v) => v.lat;
  static const Field<LocationModel, double> _f$lat = Field('lat', _$lat);
  static double _$lng(LocationModel v) => v.lng;
  static const Field<LocationModel, double> _f$lng = Field('lng', _$lng);
  static bool _$isHide(LocationModel v) => v.isHide;
  static const Field<LocationModel, bool> _f$isHide = Field('isHide', _$isHide);

  @override
  final Map<Symbol, Field<LocationModel, dynamic>> fields = const {
    #unmappedProps: _f$unmappedProps,
    #name: _f$name,
    #description: _f$description,
    #images: _f$images,
    #address: _f$address,
    #lat: _f$lat,
    #lng: _f$lng,
    #isHide: _f$isHide,
  };

  @override
  final MappingHook hook = const UnmappedPropertiesHook('unmappedProps');
  static LocationModel _instantiate(DecodingData data) {
    return LocationModel(data.dec(_f$unmappedProps),
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        images: data.dec(_f$images),
        address: data.dec(_f$address),
        lat: data.dec(_f$lat),
        lng: data.dec(_f$lng),
        isHide: data.dec(_f$isHide));
  }

  @override
  final Function instantiate = _instantiate;

  static LocationModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LocationModel>(map);
  }

  static LocationModel fromJson(String json) {
    return ensureInitialized().decodeJson<LocationModel>(json);
  }
}

mixin LocationModelMappable {
  String toJson() {
    return LocationModelMapper.ensureInitialized()
        .encodeJson<LocationModel>(this as LocationModel);
  }

  Map<String, dynamic> toMap() {
    return LocationModelMapper.ensureInitialized()
        .encodeMap<LocationModel>(this as LocationModel);
  }

  LocationModelCopyWith<LocationModel, LocationModel, LocationModel>
      get copyWith => _LocationModelCopyWithImpl(
          this as LocationModel, $identity, $identity);
  @override
  String toString() {
    return LocationModelMapper.ensureInitialized()
        .stringifyValue(this as LocationModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            LocationModelMapper.ensureInitialized()
                .isValueEqual(this as LocationModel, other));
  }

  @override
  int get hashCode {
    return LocationModelMapper.ensureInitialized()
        .hashValue(this as LocationModel);
  }
}

extension LocationModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LocationModel, $Out> {
  LocationModelCopyWith<$R, LocationModel, $Out> get $asLocationModel =>
      $base.as((v, t, t2) => _LocationModelCopyWithImpl(v, t, t2));
}

abstract class LocationModelCopyWith<$R, $In extends LocationModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get unmappedProps;
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get images;
  $R call(
      {Map<String, dynamic>? unmappedProps,
      String? name,
      String? description,
      List<dynamic>? images,
      String? address,
      double? lat,
      double? lng,
      bool? isHide});
  LocationModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LocationModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LocationModel, $Out>
    implements LocationModelCopyWith<$R, LocationModel, $Out> {
  _LocationModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LocationModel> $mapper =
      LocationModelMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>?
      get unmappedProps => $value.unmappedProps != null
          ? MapCopyWith(
              $value.unmappedProps!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(unmappedProps: v))
          : null;
  @override
  ListCopyWith<$R, dynamic, ObjectCopyWith<$R, dynamic, dynamic>> get images =>
      ListCopyWith($value.images, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(images: v));
  @override
  $R call(
          {Object? unmappedProps = $none,
          String? name,
          String? description,
          List<dynamic>? images,
          String? address,
          double? lat,
          double? lng,
          bool? isHide}) =>
      $apply(FieldCopyWithData({
        if (unmappedProps != $none) #unmappedProps: unmappedProps,
        if (name != null) #name: name,
        if (description != null) #description: description,
        if (images != null) #images: images,
        if (address != null) #address: address,
        if (lat != null) #lat: lat,
        if (lng != null) #lng: lng,
        if (isHide != null) #isHide: isHide
      }));
  @override
  LocationModel $make(CopyWithData data) =>
      LocationModel(data.get(#unmappedProps, or: $value.unmappedProps),
          name: data.get(#name, or: $value.name),
          description: data.get(#description, or: $value.description),
          images: data.get(#images, or: $value.images),
          address: data.get(#address, or: $value.address),
          lat: data.get(#lat, or: $value.lat),
          lng: data.get(#lng, or: $value.lng),
          isHide: data.get(#isHide, or: $value.isHide));

  @override
  LocationModelCopyWith<$R2, LocationModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LocationModelCopyWithImpl($value, $cast, t);
}
