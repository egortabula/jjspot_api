library jjspot_api;

import 'package:appwrite/appwrite.dart';
import 'src/consts.dart';
import 'src/enums/enums.dart';
import 'package:dart_appwrite/dart_appwrite.dart' as dart_appwrite;

import 'src/providers/providers.dart';

export './src/consts.dart';
export './src/jjspot_realtime.dart';
export './src/realtime_events.dart';
export './src/dto/dtos.dart';
export './src/enums/enums.dart';
export './src/models/models.dart';
export './src/providers/providers.dart';

class JJspotApi {
  static JJspotApi? _instance;

  JJspotApi._();

  static JJspotApi get instance {
    _instance ??= JJspotApi._();

    return _instance!;
  }

  late final dynamic client;
  late AppwriteMode runtimeMode;

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

  Functions get functions => Functions(client);

  AdminProvider get adminProvider => AdminProvider(databases);

  AuthProvider get authProvider => AuthProvider(account, functions);

  LocationsProvider get locationsProvider => LocationsProvider(databases);

  StorageProvider get storageProvader => StorageProvider(storage);

  UserProvider get userProvider => UserProvider(databases, account);

  PromocodesProvider get promocodesProvider => PromocodesProvider(databases);

  Future<void> _initDev() async {
    client =
        Client().setEndpoint(appwriteApiEndpoint).setProject(appwriteProjectId);
  }

  Future<void> _initProd() async {
    client =
        Client().setEndpoint(appwriteApiEndpoint).setProject(appwriteProjectId);
  }

  Future<void> _initServerProd(String apiKey) async {
    client = dart_appwrite.Client()
        .setEndpoint(appwriteApiEndpoint)
        .setEndpoint(appwriteProjectId)
        .setKey(apiKey);
  }

  /// Метод инициализации appwrite
  Future<void> init({
    AppwriteMode mode = AppwriteMode.production,
    String? apiKey,
  }) async {
    runtimeMode = mode;
    switch (mode) {
      case AppwriteMode.debug:
        return await _initDev();
      case AppwriteMode.production:
        return await _initProd();
      case AppwriteMode.server:
        return await _initServerProd(apiKey!);
    }
  }
}
