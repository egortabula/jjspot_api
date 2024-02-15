import 'package:appwrite/appwrite.dart';
import 'package:dartz/dartz.dart';

import '../consts.dart';
import '../dto/dtos.dart';
import '../models/models.dart';

class LocationsProvider {
  const LocationsProvider(this._databases);


  final Databases _databases;

  /// Метод для получения списка локаций
  /// Получает первые 200 локаций
  Future<Either<AppwriteException, GetLocationsListResponse>> getLocationsList({
    String? lastId,
  }) async {
    List<String> queries = [
      Query.equal('isHide', false),
      Query.orderDesc('\$createdAt'),
      Query.limit(200)
    ];

    try {
      final list = await _databases.listDocuments(
        databaseId: databaseId,
        collectionId: locationsCollectionId,
        queries: queries,
      );

      final List<LocationDto> locations = list.documents
          .map((doc) => LocationDtoMapper.fromMap(doc.data))
          .toList();

      final res = GetLocationsListResponse(
        locations: locations,
        total: list.total,
      );

      return right(res);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }

  /// Метод поиска локаций.
  /// Возвращает до 20 локаций за раз
  Future<Either<AppwriteException, GetLocationsListResponse>> searchLocations({
    String searchQuery = '',
  }) async {
    List<String> queries = [
      Query.equal('isHide', false),
      Query.orderDesc('\$createdAt'),
      Query.limit(20)
    ];

    if (searchQuery.isNotEmpty) {
      queries.add(Query.search('name', searchQuery));
    }

    try {
      final list = await _databases.listDocuments(
        databaseId: databaseId,
        collectionId: locationsCollectionId,
        queries: queries,
      );

      final locations = list.documents
          .map((doc) => LocationDtoMapper.fromMap(doc.data))
          .toList();

      final res = GetLocationsListResponse(
        locations: locations,
        total: list.total,
      );

      return right(res);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }

  Future<Either<AppwriteException, GetLocationResponse>> getLocationById(
      String locationId) async {
    try {
      final doc = await _databases.getDocument(
        databaseId: databaseId,
        collectionId: locationsCollectionId,
        documentId: locationId,
      );
      final location = LocationDtoMapper.fromMap(doc.data);

      final res = GetLocationResponse(location: location);

      return right(res);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }
}
