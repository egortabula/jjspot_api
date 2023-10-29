const String appwriteProjectId = '653a4fa4cafcc5db0c60';
const String appwriteApiEndpoint = 'https://appwrite.jjspot.ru/v1';
const String appName = 'jjspot админ';

class AppwriteDevConfig extends AppwriteConfig {
  AppwriteDevConfig();
  @override
  String get databaseId => '653a8611692b8e5295fb';

  @override
  String get locationCollectionId => '653a861a3c04186b1fee';

  @override
  String get usersCollectionId => '653aa2241903d4a68f2a';

  @override
  String get locationBucketId => '653aa1ee426730d75224';

  @override
  String get userBucketId => '653aa208b45ae9f64a48';
}

abstract class AppwriteConfig {
  final String _databaseId = '';
  String get databaseId => _databaseId;

  final String _locationsCollectionId = '';
  String get locationCollectionId => _locationsCollectionId;

  final String _usersCollectionId = '';
  String get usersCollectionId => _usersCollectionId;

  final String _locationsBucketId = '';
  String get locationBucketId => _locationsBucketId;

  final String _usersBucketId = '';
  String get userBucketId => _usersBucketId;
}

class AppwriteProdConfig extends AppwriteConfig {}

//TODO: add prod appwrite configuration
