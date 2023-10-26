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
      LatLngModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LocationModel';

  static String _$name(LocationModel v) => v.name;
  static const Field<LocationModel, String> _f$name = Field('name', _$name);
  static String _$description(LocationModel v) => v.description;
  static const Field<LocationModel, String> _f$description =
      Field('description', _$description);
  static List<String> _$images(LocationModel v) => v.images;
  static const Field<LocationModel, List<String>> _f$images =
      Field('images', _$images);
  static String _$address(LocationModel v) => v.address;
  static const Field<LocationModel, String> _f$address =
      Field('address', _$address);
  static LatLngModel _$latLng(LocationModel v) => v.latLng;
  static const Field<LocationModel, LatLngModel> _f$latLng =
      Field('latLng', _$latLng);

  @override
  final Map<Symbol, Field<LocationModel, dynamic>> fields = const {
    #name: _f$name,
    #description: _f$description,
    #images: _f$images,
    #address: _f$address,
    #latLng: _f$latLng,
  };

  static LocationModel _instantiate(DecodingData data) {
    return LocationModel(
        name: data.dec(_f$name),
        description: data.dec(_f$description),
        images: data.dec(_f$images),
        address: data.dec(_f$address),
        latLng: data.dec(_f$latLng));
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
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get images;
  LatLngModelCopyWith<$R, LatLngModel, LatLngModel> get latLng;
  $R call(
      {String? name,
      String? description,
      List<String>? images,
      String? address,
      LatLngModel? latLng});
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
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get images =>
      ListCopyWith($value.images, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(images: v));
  @override
  LatLngModelCopyWith<$R, LatLngModel, LatLngModel> get latLng =>
      $value.latLng.copyWith.$chain((v) => call(latLng: v));
  @override
  $R call(
          {String? name,
          String? description,
          List<String>? images,
          String? address,
          LatLngModel? latLng}) =>
      $apply(FieldCopyWithData({
        if (name != null) #name: name,
        if (description != null) #description: description,
        if (images != null) #images: images,
        if (address != null) #address: address,
        if (latLng != null) #latLng: latLng
      }));
  @override
  LocationModel $make(CopyWithData data) => LocationModel(
      name: data.get(#name, or: $value.name),
      description: data.get(#description, or: $value.description),
      images: data.get(#images, or: $value.images),
      address: data.get(#address, or: $value.address),
      latLng: data.get(#latLng, or: $value.latLng));

  @override
  LocationModelCopyWith<$R2, LocationModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LocationModelCopyWithImpl($value, $cast, t);
}
