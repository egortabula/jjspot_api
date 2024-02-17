import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:dartz/dartz.dart';
import 'package:jjspot_api/jjspot_api.dart';

class UserProvider {
  const UserProvider(this._databases, this._account);

  final Databases _databases;
  final Account _account;

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
        data: rateDto.toMap().remove('\$id'),
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

  Future<Either<AppwriteException, User>> applyPromocode(
      {required String code}) async {
    try {
      final searchPromocodesResult = await _databases.listDocuments(
        databaseId: databaseId,
        collectionId: 'promoCodes',
        queries: [Query.equal('code', code)],
      );

      if (searchPromocodesResult.total == 0) {
        return left(AppwriteException('Промокод не существует', 999));
      }

      Preferences prefs = await _account.getPrefs();

      Map<String, dynamic> data = prefs.data;

      if (data.containsKey('code') && data['code'] == code) {
        return left(
          AppwriteException('Вы уже использовали этот промокод', 999),
        );
      }

      final promocode = PromocodeDtoMapper.fromMap(
          searchPromocodesResult.documents.last.data);

      int promocodeDurationInMinutes;

      switch (promocode.duration) {
        case PromocodeDurationEnum.daily:
          promocodeDurationInMinutes = 1 * 24 * 60;

        case PromocodeDurationEnum.threeDays:
          promocodeDurationInMinutes = 3 * 24 * 60;
        case PromocodeDurationEnum.sevenDays:
          promocodeDurationInMinutes = 7 * 24 * 60;
        case PromocodeDurationEnum.fourteenDays:
          promocodeDurationInMinutes = 14 * 24 * 60;
        case PromocodeDurationEnum.twentyOneDays:
          promocodeDurationInMinutes = 21 * 24 * 60;
        case PromocodeDurationEnum.monthly:
          promocodeDurationInMinutes = 30 * 24 * 60;
        case PromocodeDurationEnum.threeMonth:
          promocodeDurationInMinutes = 90 * 24 * 60;
        case PromocodeDurationEnum.sixMonth:
          promocodeDurationInMinutes = 180 * 24 * 60;
        case PromocodeDurationEnum.yearly:
          promocodeDurationInMinutes = 365 * 24 * 60;
        case PromocodeDurationEnum.undefined:
          throw Exception(
            'PromocodeDurationEnum '
            '${promocode.duration.toValue()} not supported',
          );
      }

      String promocodeValidUntil = DateTime.now()
          .add(Duration(minutes: promocodeDurationInMinutes))
          .toIso8601String();

      data['code'] = code;
      data['promocodeValidUntil'] = promocodeValidUntil;

      final user = await _account.updatePrefs(
        prefs: data,
      );

      return right(user);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }
}
