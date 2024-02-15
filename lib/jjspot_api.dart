library jjspot_api;

import 'dart:typed_data';

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:dartz/dartz.dart';
import 'src/consts.dart';
import 'src/dto/dtos.dart';
import 'src/models/models.dart';

export './src/consts.dart';
export './src/jjspot_realtime.dart';
export './src/realtime_events.dart';
export './src/dto/dtos.dart';
export './src/enums/enums.dart';
export './src/models/models.dart';
export 'package:dartz/dartz.dart';

class JJspotApi {
  static JJspotApi? _instance;

  JJspotApi._();

  static JJspotApi get instance {
    _instance ??= JJspotApi._();

    return _instance!;
  }

  late final Client client;
  late AppwriteMode runtimeMode;

  AppwriteConfig get appwriteConfig {
    return AppwriteProdConfig();
  }

  Account get account {
    return Account(client);
  }

  Databases get databases {
    return Databases(client);
  }

  Realtime get realtime {
    return Realtime(client);
  }

  Avatars get avatars {
    return Avatars(client);
  }

  Storage get storage {
    return Storage(client);
  }

  Future<void> _initDev() async {
    client =
        Client().setEndpoint(appwriteApiEndpoint).setProject(appwriteProjectId);
  }

  Future<void> _initProd() async {
    client =
        Client().setEndpoint(appwriteApiEndpoint).setProject(appwriteProjectId);
  }

  /// Метод инициализации appwrite
  Future<void> init({
    AppwriteMode mode = AppwriteMode.production,
  }) async {
    runtimeMode = mode;
    switch (mode) {
      case AppwriteMode.debug:
        return await _initDev();
      case AppwriteMode.production:
        return await _initProd();
    }
  }

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
      final list = await databases.listDocuments(
        databaseId: appwriteConfig.databaseId,
        collectionId: appwriteConfig.locationsCollectionId,
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
      final list = await databases.listDocuments(
        databaseId: appwriteConfig.databaseId,
        collectionId: appwriteConfig.locationsCollectionId,
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

  Future<Either<AppwriteException, LocationDto>> createLocation(
    LocationDto location,
  ) async {
    try {
      final doc = await databases.createDocument(
        databaseId: appwriteConfig.databaseId,
        collectionId: appwriteConfig.locationsCollectionId,
        documentId: location.id!,
        data: location.toMap(),
      );

      final locationModel = LocationDtoMapper.fromMap(doc.data);
      return right(locationModel);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }

  /// авторизация по имейлу
  Future<Either<AppwriteException, CreateEmailSessionResponse>>
      createEmailSession(CreateEmailSessionRequest request) async {
    try {
      final session = await account.createEmailSession(
        email: request.email,
        password: request.password,
      );
      final user = await account.get();

      final res = CreateEmailSessionResponse(
        user: user,
        session: session,
      );
      return right(res);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }

  Future<Either<AppwriteException, File>> uploadLocationImage(
    Uint8List bytes,
    String filename, {
    String? contentType,
  }) async {
    try {
      final file = await storage.createFile(
        bucketId: appwriteConfig.locationsBucketId,
        fileId: ID.unique(),
        file: InputFile.fromBytes(
          bytes: bytes,
          filename: filename,
          contentType: contentType,
        ),
      );
      return right(file);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }

  Future<Either<AppwriteException, GetLocationResponse>>
      updateLocationAttribute(UpdateLocationAttributeRequest request) async {
    try {
      final doc = await JJspotApi.instance.databases.updateDocument(
        databaseId: appwriteConfig.databaseId,
        collectionId: appwriteConfig.locationsCollectionId,
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
      await JJspotApi.instance.databases.deleteDocument(
        databaseId: appwriteConfig.databaseId,
        collectionId: appwriteConfig.locationsCollectionId,
        documentId: locationId,
      );
      return right(unit);
    } on AppwriteException catch (e) {
      return left(e);
    }
  }

  Future<Either<AppwriteException, GetLocationResponse>> getLocationById(
      String locationId) async {
    try {
      final doc = await databases.getDocument(
        databaseId: appwriteConfig.databaseId,
        collectionId: appwriteConfig.locationsCollectionId,
        documentId: locationId,
      );
      final location = LocationDtoMapper.fromMap(doc.data);

      final res = GetLocationResponse(location: location);

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
      final doc = await databases.updateDocument(
        databaseId: appwriteConfig.databaseId,
        collectionId: appwriteConfig.locationsCollectionId,
        documentId: request.currentUser.id,
        data: data,
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
      final rateDoc = await databases.createDocument(
        databaseId: appwriteConfig.databaseId,
        collectionId: 'reviews',
        documentId: rateDto.id!,
        data: rateDto.toMap(),
      );

      final createdRate = RateDtoMapper.fromMap(rateDoc.data);

      userDto.addLocationReview(createdRate);

      Map<String, dynamic> userMap = userDto.toMap();

      userMap.removeWhere((key, value) => key != 'reviews');

      final userDoc = await databases.updateDocument(
        databaseId: appwriteConfig.databaseId,
        collectionId: appwriteConfig.usersCollectionId,
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
}

enum AppwriteMode {
  debug,
  production,
}
