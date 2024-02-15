// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../filter_item_dto.dart';

class FilterItemDtoMapper extends ClassMapperBase<FilterItemDto> {
  FilterItemDtoMapper._();

  static FilterItemDtoMapper? _instance;
  static FilterItemDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = FilterItemDtoMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'FilterItemDto';

  static String _$label(FilterItemDto v) => v.label;
  static const Field<FilterItemDto, String> _f$label = Field('label', _$label);
  static String _$featureKey(FilterItemDto v) => v.featureKey;
  static const Field<FilterItemDto, String> _f$featureKey =
      Field('featureKey', _$featureKey);
  static String _$featureValue(FilterItemDto v) => v.featureValue;
  static const Field<FilterItemDto, String> _f$featureValue =
      Field('featureValue', _$featureValue);

  @override
  final MappableFields<FilterItemDto> fields = const {
    #label: _f$label,
    #featureKey: _f$featureKey,
    #featureValue: _f$featureValue,
  };

  static FilterItemDto _instantiate(DecodingData data) {
    return FilterItemDto(
        label: data.dec(_f$label),
        featureKey: data.dec(_f$featureKey),
        featureValue: data.dec(_f$featureValue));
  }

  @override
  final Function instantiate = _instantiate;

  static FilterItemDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<FilterItemDto>(map);
  }

  static FilterItemDto fromJson(String json) {
    return ensureInitialized().decodeJson<FilterItemDto>(json);
  }
}

mixin FilterItemDtoMappable {
  String toJson() {
    return FilterItemDtoMapper.ensureInitialized()
        .encodeJson<FilterItemDto>(this as FilterItemDto);
  }

  Map<String, dynamic> toMap() {
    return FilterItemDtoMapper.ensureInitialized()
        .encodeMap<FilterItemDto>(this as FilterItemDto);
  }

  FilterItemDtoCopyWith<FilterItemDto, FilterItemDto, FilterItemDto>
      get copyWith => _FilterItemDtoCopyWithImpl(
          this as FilterItemDto, $identity, $identity);
  @override
  String toString() {
    return FilterItemDtoMapper.ensureInitialized()
        .stringifyValue(this as FilterItemDto);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            FilterItemDtoMapper.ensureInitialized()
                .isValueEqual(this as FilterItemDto, other));
  }

  @override
  int get hashCode {
    return FilterItemDtoMapper.ensureInitialized()
        .hashValue(this as FilterItemDto);
  }
}

extension FilterItemDtoValueCopy<$R, $Out>
    on ObjectCopyWith<$R, FilterItemDto, $Out> {
  FilterItemDtoCopyWith<$R, FilterItemDto, $Out> get $asFilterItemDto =>
      $base.as((v, t, t2) => _FilterItemDtoCopyWithImpl(v, t, t2));
}

abstract class FilterItemDtoCopyWith<$R, $In extends FilterItemDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? label, String? featureKey, String? featureValue});
  FilterItemDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FilterItemDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, FilterItemDto, $Out>
    implements FilterItemDtoCopyWith<$R, FilterItemDto, $Out> {
  _FilterItemDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<FilterItemDto> $mapper =
      FilterItemDtoMapper.ensureInitialized();
  @override
  $R call({String? label, String? featureKey, String? featureValue}) =>
      $apply(FieldCopyWithData({
        if (label != null) #label: label,
        if (featureKey != null) #featureKey: featureKey,
        if (featureValue != null) #featureValue: featureValue
      }));
  @override
  FilterItemDto $make(CopyWithData data) => FilterItemDto(
      label: data.get(#label, or: $value.label),
      featureKey: data.get(#featureKey, or: $value.featureKey),
      featureValue: data.get(#featureValue, or: $value.featureValue));

  @override
  FilterItemDtoCopyWith<$R2, FilterItemDto, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _FilterItemDtoCopyWithImpl($value, $cast, t);
}
