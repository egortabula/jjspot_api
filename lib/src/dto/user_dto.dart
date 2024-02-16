import 'package:dart_mappable/dart_mappable.dart';
import 'package:jjspot_api/src/dto/location_dto.dart';
import 'package:jjspot_api/src/dto/rate_dto.dart';

part './generated/user_dto.mapper.dart';

@MappableClass(hook: UserDtoHook())
class UserDto with UserDtoMappable {
  @MappableField(key: r'\$id')
  final String id;

  final String email;

  @MappableField(key: 'reviews')
  List<RateDto> locationsReview;

  @MappableField(key: 'locations')
  List<LocationDto> favoriteLocationsList;

  UserDto({
    required this.id,
    required this.email,
    required this.locationsReview,
    required this.favoriteLocationsList,
  });

  void addLocationReview(RateDto review) {
    locationsReview.add(review);
  }

  void addFavoriteLocation(LocationDto location) {
    favoriteLocationsList.add(location);
  }

  void removeFavoriteLocation(LocationDto location) {
    favoriteLocationsList.remove(location);
  }

  bool isLocationFavorite(LocationDto location) {
    return favoriteLocationsList.contains(location);
  }

  bool isLocationRated(LocationDto location) {
    try {
      final list = locationsReview.firstWhere((el) => el.location == location);
      return true;
    } on StateError catch (e) {
      return false;
    }
  }
}

class UserDtoHook extends MappingHook {
  const UserDtoHook();
  @override
  Object? afterEncode(Object? value) {
    value = value as Map<String, dynamic>;
    List<dynamic> reviews = value['reviews'];
    List<dynamic> locations = value['locations'];

    reviews = reviews.map((review) => review[r'\$id']).toList();
    locations = locations.map((location) => location[r'\$id']).toList();
    value['reviews'] = reviews;
    value['locations'] = locations;
    value.remove(r'\$id');
    return super.afterEncode(value);
  }
}
