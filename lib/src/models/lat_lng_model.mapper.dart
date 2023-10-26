// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'lat_lng_model.dart';

class LatLngModelMapper extends ClassMapperBase<LatLngModel> {
  LatLngModelMapper._();

  static LatLngModelMapper? _instance;
  static LatLngModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LatLngModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'LatLngModel';

  static double _$latitude(LatLngModel v) => v.latitude;
  static const Field<LatLngModel, double> _f$latitude =
      Field('latitude', _$latitude);
  static double _$longitude(LatLngModel v) => v.longitude;
  static const Field<LatLngModel, double> _f$longitude =
      Field('longitude', _$longitude);

  @override
  final Map<Symbol, Field<LatLngModel, dynamic>> fields = const {
    #latitude: _f$latitude,
    #longitude: _f$longitude,
  };

  static LatLngModel _instantiate(DecodingData data) {
    return LatLngModel(
        latitude: data.dec(_f$latitude), longitude: data.dec(_f$longitude));
  }

  @override
  final Function instantiate = _instantiate;

  static LatLngModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LatLngModel>(map);
  }

  static LatLngModel fromJson(String json) {
    return ensureInitialized().decodeJson<LatLngModel>(json);
  }
}

mixin LatLngModelMappable {
  String toJson() {
    return LatLngModelMapper.ensureInitialized()
        .encodeJson<LatLngModel>(this as LatLngModel);
  }

  Map<String, dynamic> toMap() {
    return LatLngModelMapper.ensureInitialized()
        .encodeMap<LatLngModel>(this as LatLngModel);
  }

  LatLngModelCopyWith<LatLngModel, LatLngModel, LatLngModel> get copyWith =>
      _LatLngModelCopyWithImpl(this as LatLngModel, $identity, $identity);
  @override
  String toString() {
    return LatLngModelMapper.ensureInitialized()
        .stringifyValue(this as LatLngModel);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            LatLngModelMapper.ensureInitialized()
                .isValueEqual(this as LatLngModel, other));
  }

  @override
  int get hashCode {
    return LatLngModelMapper.ensureInitialized().hashValue(this as LatLngModel);
  }
}

extension LatLngModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LatLngModel, $Out> {
  LatLngModelCopyWith<$R, LatLngModel, $Out> get $asLatLngModel =>
      $base.as((v, t, t2) => _LatLngModelCopyWithImpl(v, t, t2));
}

abstract class LatLngModelCopyWith<$R, $In extends LatLngModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? latitude, double? longitude});
  LatLngModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LatLngModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LatLngModel, $Out>
    implements LatLngModelCopyWith<$R, LatLngModel, $Out> {
  _LatLngModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LatLngModel> $mapper =
      LatLngModelMapper.ensureInitialized();
  @override
  $R call({double? latitude, double? longitude}) => $apply(FieldCopyWithData({
        if (latitude != null) #latitude: latitude,
        if (longitude != null) #longitude: longitude
      }));
  @override
  LatLngModel $make(CopyWithData data) => LatLngModel(
      latitude: data.get(#latitude, or: $value.latitude),
      longitude: data.get(#longitude, or: $value.longitude));

  @override
  LatLngModelCopyWith<$R2, LatLngModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LatLngModelCopyWithImpl($value, $cast, t);
}
