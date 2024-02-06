library jjspot_api;

import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';
import 'package:flutter/foundation.dart';
import 'package:jjspot_api/src/models/location_model.dart';
import 'package:jjspot_api/src/utils/appwrite_utils.dart';

import 'src/consts.dart';
import 'src/models/create_email_session_request_model.dart';
import 'src/models/create_email_session_response_model.dart';
import 'src/models/jj_spot_api_exception.dart';

export './src/consts.dart';
export './src/models/location_model.dart';
export './src/models/create_email_session_request_model.dart';
export './src/models/create_email_session_response_model.dart';
export './src/models/jj_spot_api_exception.dart';
export './src/jjspot_realtime.dart';
export './src/realtime_events.dart';

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
    return runtimeMode == AppwriteMode.debug
        ? AppwriteDevConfig()
        : AppwriteProdConfig();
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
  Future<List<LocationModel>> fetchLocations(
    bool isInitialFetch, {
    String? lastId,
  }) async {
    DocumentList res;
    if (isInitialFetch) {
      res = await databases.listDocuments(
        databaseId: appwriteConfig.databaseId,
        collectionId: appwriteConfig.locationCollectionId,
        queries: [
          Query.equal('isHide', false),
          Query.orderDesc('\$createdAt'),
          Query.limit(15000),
        ],
      );
    } else {
      res = await databases.listDocuments(
        databaseId: appwriteConfig.databaseId,
        collectionId: appwriteConfig.locationCollectionId,
        queries: [
          Query.equal('isHide', false),
          Query.orderDesc('\$createdAt'),
          Query.cursorAfter(lastId!),
          Query.limit(15000),
        ],
      );
    }

    final resList =
        res.documents.map((e) => LocationModelMapper.fromMap(e.data)).toList();

    return resList;
  }

  Future<void> createLocation(LocationModel location) async {
    await JJspotApi.instance.databases.createDocument(
      databaseId: appwriteConfig.databaseId,
      collectionId: appwriteConfig.locationCollectionId,
      documentId: ID.unique(),
      data: location.toMap(),
    );
  }

  /// авторизация по имейлу
  Future<CreateEmailSessionResponseModel> loginWithEmail(
      CreateEmailSessionRequestModel request) async {
    try {
      final currentSession = await account.createEmailSession(
        email: request.email,
        password: request.password,
      );
      final loggedUser = await account.get();

      return CreateEmailSessionResponseModel(
        user: loggedUser,
        session: currentSession,
        exception: JjSpotApiException.noError(),
      );
    } on AppwriteException catch (e) {
      debugPrint(e.message);
      return CreateEmailSessionResponseModel(
        user: null,
        session: null,
        exception: JjSpotApiException(
          message: AppwriteUtils.translateAppwriteException(
            e.type!,
            code: e.code!,
            message: e.message!,
          ),
          code: e.code!,
          hasError: true,
        ),
      );
    }
  }

  Future<String> uploadImage(
    Uint8List bytes,
    String filename, {
    String? contentType,
  }) async {
    final file = await storage.createFile(
      bucketId: appwriteConfig.locationBucketId,
      fileId: ID.unique(),
      file: InputFile.fromBytes(
        bytes: bytes,
        filename: filename,
        contentType: contentType,
      ),
    );
    return file.$id;
  }

  Future<bool> updateLocation({
    required Map<String, dynamic> data,
    required String docId,
  }) async {
    try {
      await JJspotApi.instance.databases.updateDocument(
        databaseId: appwriteConfig.databaseId,
        collectionId: appwriteConfig.locationCollectionId,
        documentId: docId,
        data: data,
      );
      return true;
    } on AppwriteException catch (e) {
      debugPrint(e.message);
      return false;
    }
  }

  /// Удалить локацию из базы данных
  Future<void> deleteLocation(String locationId) async {
    await JJspotApi.instance.databases.deleteDocument(
      databaseId: appwriteConfig.databaseId,
      collectionId: appwriteConfig.locationCollectionId,
      documentId: locationId,
    );
  }
}

enum AppwriteMode {
  debug,
  production,
}
