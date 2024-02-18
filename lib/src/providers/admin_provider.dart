import 'package:appwrite/appwrite.dart';
import 'package:dartz/dartz.dart';
import 'package:jjspot_api/src/dto/dtos.dart';

import '../consts.dart';
import '../models/models.dart';

class AdminProvider {
  const AdminProvider(this._databases);

  final Databases _databases;

  Future<Either<AppwriteException, LocationDto>> createLocation(
    LocationDto location,
  ) async {
    try {
      Map<String, dynamic> data = location.toMap();

      data.remove('\$id');
      final doc = await _databases.createDocument(
        databaseId: databaseId,
        collectionId: locationsCollectionId,
        documentId: location.id!,
        data: data,
      );

      final locationModel = LocationDtoMapper.fromMap(doc.data);
      return right(locationModel);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }

  Future<Either<AppwriteException, GetLocationResponse>>
      updateLocationAttribute(UpdateLocationAttributeRequest request) async {
    try {
      final doc = await _databases.updateDocument(
        databaseId: databaseId,
        collectionId: locationsCollectionId,
        documentId: request.locationId,
        data: request.toMap(),
      );
      final location = LocationDtoMapper.fromMap(doc.data);
      final res = GetLocationResponse(location: location);
      return right(res);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }

  /// Удалить локацию из базы данных
  Future<Either<AppwriteException, Unit>> deleteLocation(
      String locationId) async {
    try {
      await _databases.deleteDocument(
        databaseId: databaseId,
        collectionId: locationsCollectionId,
        documentId: locationId,
      );
      return right(unit);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }
}
