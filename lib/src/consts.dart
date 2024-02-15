const String appwriteProjectId = '654420232f9e61d35731';
const String appwriteApiEndpoint = 'https://appwrite.jjspot.ru/v1';
const String appName = 'jj.spot админ';
const String passwordRecoveryRedirectUrl =
    'https://jjspot.web.app/reset-password';

abstract class AppwriteConfig {
  final String databaseId = throw UnimplementedError();

  final String locationsCollectionId = throw UnimplementedError();

  final String usersCollectionId = throw UnimplementedError();

  final String locationsBucketId = throw UnimplementedError();

  final String usersBucketId = throw UnimplementedError();
}

class AppwriteProdConfig implements AppwriteConfig {
  AppwriteProdConfig();
  @override
  String get databaseId => '654420dc8f7d6fb2e959';

  @override
  String get usersCollectionId => '654420e3028cb5bdca3e';

  @override
  String get locationsBucketId => '654420eb61ec78a7424e';

  @override
  String get locationsCollectionId => '6544cab81f9ab838bb9a';

  @override
  String get usersBucketId => '6544caec7d776bf1fa0e';
}
