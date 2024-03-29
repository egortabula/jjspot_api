import 'package:dart_mappable/dart_mappable.dart';
import 'package:jjspot_api/jjspot_api.dart';

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
    List<dynamic>? reviews = value['reviews'];
    List<dynamic> locations = value['locations'];

    if (reviews != null) {
      reviews = reviews.map((review) => review['\$id']).toList();
      value['reviews'] = reviews;
    }

    locations = locations.map((location) => location['\$id']).toList();

    value['locations'] = locations;
    return super.afterEncode(value);
  }
}
