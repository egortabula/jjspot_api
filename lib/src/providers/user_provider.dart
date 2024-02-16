import 'package:appwrite/appwrite.dart';
import 'package:dartz/dartz.dart';

import '../consts.dart';
import '../dto/dtos.dart';
import '../models/models.dart';

class UserProvider {
  const UserProvider(this._databases);

  final Databases _databases;

  Future<Either<AppwriteException, UserDto>> getUserById(String userId) async {
    try {
      final doc = await _databases.getDocument(
        databaseId: databaseId,
        collectionId: usersCollectionId,
        documentId: userId,
      );

      final res = UserDtoMapper.fromMap(doc.data);
      return right(res);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }

  Future<Either<AppwriteException, CreateLocationRateResponse>>
      createLocationRate({
    required RateDto rateDto,
    required UserDto userDto,
  }) async {
    try {
      final rateDoc = await _databases.createDocument(
        databaseId: databaseId,
        collectionId: 'reviews',
        documentId: rateDto.id!,
        data: rateDto.toMap(),
      );

      final createdRate = RateDtoMapper.fromMap(rateDoc.data);

      userDto.addLocationReview(createdRate);

      Map<String, dynamic> userMap = userDto.toMap();

      userMap.removeWhere((key, value) => key != 'reviews');

      final userDoc = await _databases.updateDocument(
        databaseId: databaseId,
        collectionId: usersCollectionId,
        documentId: userDto.id,
        data: userMap,
      );

      final updatedUser = UserDtoMapper.fromMap(userDoc.data);

      final res = CreateLocationRateResponse(
        rate: createdRate,
        user: updatedUser,
      );
      return right(res);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }

  Future<Either<AppwriteException, UserDto>> updateFavoriteLocationsList(
    UpdateFavoriteLocationsRequest request,
  ) async {
    try {
      Map<String, dynamic> data = request.currentUser.toMap();

      data.removeWhere((key, value) => key != 'locations');
      final doc = await _databases.updateDocument(
        databaseId: databaseId,
        collectionId: usersCollectionId,
        documentId: request.currentUser.id,
        data: data,
      );
      final res = UserDtoMapper.fromMap(doc.data);
      return right(res);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }
}
