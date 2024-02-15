library jjspot_api;

import 'package:appwrite/appwrite.dart';
import 'package:jjspot_api/src/providers/admin_provider.dart';
import 'package:jjspot_api/src/providers/auth_provider.dart';
import 'package:jjspot_api/src/providers/locations_provider.dart';
import 'package:jjspot_api/src/providers/storage_provider.dart';
import 'package:jjspot_api/src/providers/user_provider.dart';
import 'src/consts.dart';
import 'src/enums/enums.dart';

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

  late final Client client;
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

  UserProvider get userProvider => UserProvider(databases);

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
}
