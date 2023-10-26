library jjspot_api;

import 'package:appwrite/appwrite.dart';

import 'src/consts.dart';
import 'src/models/create_email_session_request_model.dart';
import 'src/models/create_email_session_response_model.dart';
import 'src/models/jj_spot_api_exception.dart';

export './src/consts.dart';
export './src/models/lat_lng_model.dart';
export './src/models/location_model.dart';
export './src/models/create_email_session_request_model.dart';
export './src/models/create_email_session_response_model.dart';
export './src/models/jj_spot_api_exception.dart';

class JJspotApi {
  static JJspotApi? _instance;

  JJspotApi._();

  static JJspotApi get instance {
    _instance ??= JJspotApi._();

    return _instance!;
  }

  late final Client client;

  Account get account {
    return Account(client);
  }

  Databases get databases {
    return Databases(client);
  }

  Avatars get avatars {
    return Avatars(client);
  }

  Future<void> _initDev() async {
    client.setEndpoint(appwriteApiEndpoint).setProject(appwriteProjectId);
  }

  Future<void> _initProd() async {
    client = Client();
    //TODO: create initProd
  }

  /// Метод инициализации appwrite
  Future<void> init({
    AppwriteMode mode = AppwriteMode.production,
  }) async {
    switch (mode) {
      case AppwriteMode.debug:
        return await _initDev();
      case AppwriteMode.production:
        return await _initProd();
    }
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
      return CreateEmailSessionResponseModel(
        user: null,
        session: null,
        exception: JjSpotApiException(
          message: e.message!,
          code: e.code!,
          hasError: true,
        ),
      );
    }
  }
}

enum AppwriteMode {
  debug,
  production,
}
