// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '../user_dto.dart';

class UserDtoMapper extends ClassMapperBase<UserDto> {
  UserDtoMapper._();

  static UserDtoMapper? _instance;
  static UserDtoMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserDtoMapper._());
      RateDtoMapper.ensureInitialized();
      LocationDtoMapper.ensureInitialized();
      PromocodeDtoMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserDto';

  static String _$id(UserDto v) => v.id;
  static const Field<UserDto, String> _f$id = Field('id', _$id, key: '\$id');
  static String _$email(UserDto v) => v.email;
  static const Field<UserDto, String> _f$email = Field('email', _$email);
  static List<RateDto> _$locationsReview(UserDto v) => v.locationsReview;
  static const Field<UserDto, List<RateDto>> _f$locationsReview =
      Field('locationsReview', _$locationsReview, key: 'reviews');
  static List<LocationDto> _$favoriteLocationsList(UserDto v) =>
      v.favoriteLocationsList;
  static const Field<UserDto, List<LocationDto>> _f$favoriteLocationsList =
      Field('favoriteLocationsList', _$favoriteLocationsList, key: 'locations');
  static List<PromocodeDto> _$promoCodesList(UserDto v) => v.promoCodesList;
  static const Field<UserDto, List<PromocodeDto>> _f$promoCodesList =
      Field('promoCodesList', _$promoCodesList, key: 'promoCodes');

  @override
  final MappableFields<UserDto> fields = const {
    #id: _f$id,
    #email: _f$email,
    #locationsReview: _f$locationsReview,
    #favoriteLocationsList: _f$favoriteLocationsList,
    #promoCodesList: _f$promoCodesList,
  };

  @override
  final MappingHook hook = const UserDtoHook();
  static UserDto _instantiate(DecodingData data) {
    return UserDto(
        id: data.dec(_f$id),
        email: data.dec(_f$email),
        locationsReview: data.dec(_f$locationsReview),
        favoriteLocationsList: data.dec(_f$favoriteLocationsList),
        promoCodesList: data.dec(_f$promoCodesList));
  }

  @override
  final Function instantiate = _instantiate;

  static UserDto fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserDto>(map);
  }

  static UserDto fromJson(String json) {
    return ensureInitialized().decodeJson<UserDto>(json);
  }
}

mixin UserDtoMappable {
  String toJson() {
    return UserDtoMapper.ensureInitialized()
        .encodeJson<UserDto>(this as UserDto);
  }

  Map<String, dynamic> toMap() {
    return UserDtoMapper.ensureInitialized()
        .encodeMap<UserDto>(this as UserDto);
  }

  UserDtoCopyWith<UserDto, UserDto, UserDto> get copyWith =>
      _UserDtoCopyWithImpl(this as UserDto, $identity, $identity);
  @override
  String toString() {
    return UserDtoMapper.ensureInitialized().stringifyValue(this as UserDto);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            UserDtoMapper.ensureInitialized()
                .isValueEqual(this as UserDto, other));
  }

  @override
  int get hashCode {
    return UserDtoMapper.ensureInitialized().hashValue(this as UserDto);
  }
}

extension UserDtoValueCopy<$R, $Out> on ObjectCopyWith<$R, UserDto, $Out> {
  UserDtoCopyWith<$R, UserDto, $Out> get $asUserDto =>
      $base.as((v, t, t2) => _UserDtoCopyWithImpl(v, t, t2));
}

abstract class UserDtoCopyWith<$R, $In extends UserDto, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, RateDto, RateDtoCopyWith<$R, RateDto, RateDto>>
      get locationsReview;
  ListCopyWith<$R, LocationDto,
          LocationDtoCopyWith<$R, LocationDto, LocationDto>>
      get favoriteLocationsList;
  ListCopyWith<$R, PromocodeDto,
      PromocodeDtoCopyWith<$R, PromocodeDto, PromocodeDto>> get promoCodesList;
  $R call(
      {String? id,
      String? email,
      List<RateDto>? locationsReview,
      List<LocationDto>? favoriteLocationsList,
      List<PromocodeDto>? promoCodesList});
  UserDtoCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserDtoCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserDto, $Out>
    implements UserDtoCopyWith<$R, UserDto, $Out> {
  _UserDtoCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserDto> $mapper =
      UserDtoMapper.ensureInitialized();
  @override
  ListCopyWith<$R, RateDto, RateDtoCopyWith<$R, RateDto, RateDto>>
      get locationsReview => ListCopyWith($value.locationsReview,
          (v, t) => v.copyWith.$chain(t), (v) => call(locationsReview: v));
  @override
  ListCopyWith<$R, LocationDto,
          LocationDtoCopyWith<$R, LocationDto, LocationDto>>
      get favoriteLocationsList => ListCopyWith(
          $value.favoriteLocationsList,
          (v, t) => v.copyWith.$chain(t),
          (v) => call(favoriteLocationsList: v));
  @override
  ListCopyWith<$R, PromocodeDto,
          PromocodeDtoCopyWith<$R, PromocodeDto, PromocodeDto>>
      get promoCodesList => ListCopyWith($value.promoCodesList,
          (v, t) => v.copyWith.$chain(t), (v) => call(promoCodesList: v));
  @override
  $R call(
          {String? id,
          String? email,
          List<RateDto>? locationsReview,
          List<LocationDto>? favoriteLocationsList,
          List<PromocodeDto>? promoCodesList}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (email != null) #email: email,
        if (locationsReview != null) #locationsReview: locationsReview,
        if (favoriteLocationsList != null)
          #favoriteLocationsList: favoriteLocationsList,
        if (promoCodesList != null) #promoCodesList: promoCodesList
      }));
  @override
  UserDto $make(CopyWithData data) => UserDto(
      id: data.get(#id, or: $value.id),
      email: data.get(#email, or: $value.email),
      locationsReview: data.get(#locationsReview, or: $value.locationsReview),
      favoriteLocationsList:
          data.get(#favoriteLocationsList, or: $value.favoriteLocationsList),
      promoCodesList: data.get(#promoCodesList, or: $value.promoCodesList));

  @override
  UserDtoCopyWith<$R2, UserDto, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UserDtoCopyWithImpl($value, $cast, t);
}
