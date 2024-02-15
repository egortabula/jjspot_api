// import 'package:appwrite/models.dart';
// import 'package:dart_mappable/dart_mappable.dart';
// import 'package:jjspot/app/core/helpers/utils_helper.dart';
// import 'package:jjspot/app/data/services/appwrite_service.dart';

// @MappableClass()
// class LocationModel {
//   @MappableField(key: r'$id')
//   final String id;
//   final String name;
//   final String description;
//   final String address;
//   final List<dynamic> images;
//   final double lat;
//   final double lng;
//   final double? rating;
//   bool? isLiked;

//   LocationModel({
//     required this.id,
//     required this.name,
//     required this.description,
//     required this.address,
//     required this.images,
//     required this.lat,
//     required this.lng,
//     required this.rating,
//     this.isLiked,
//   });

//   factory LocationModel.fromDocument(Document doc) {
//     final data = doc.data;
//     final List<dynamic> likesRaw = data['likes'];

//     final List<String> usersLike =
//         likesRaw.map((e) => e['\$id'].toString()).toList();

//     return LocationModel(
//       id: doc.$id,
//       name: data['name'],
//       description: data['description'],
//       address: data['address'],
//       images: (data['images'] as List<dynamic>)
//           .map((e) => UtilsHelper.getImageUrl(e))
//           .toList(),
//       lat: data['lat'],
//       lng: data['lng'],
//       rating: data['rating'],
//       isLiked: usersLike.contains(AppwriteService.to.user.value!.$id),
//     );
//   }

//   factory LocationModel.fromUserMap(Map<String, dynamic> map) {
//     return LocationModel(
//       id: map['\$id'],
//       name: map['name'],
//       description: map['description'],
//       address: map['address'],
//       images: map['images'],
//       lat: map['lat'],
//       lng: map['lng'],
//       rating: map['rating'],
//       isLiked: true,
//     );
//   }
//   factory LocationModel.fromMap(Map<dynamic, dynamic> map) {
//     return LocationModel(
//       id: map['id'],
//       name: map['name'],
//       description: map['description'],
//       address: map['address'],
//       images: map['images'],
//       lat: map['lat'],
//       lng: map['lng'],
//       rating: map['ratings'],
//       isLiked: null,
//     );
//   }
// }
//TODO: remove