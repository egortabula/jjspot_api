const String appwriteProjectId = '654420232f9e61d35731';
const String appwriteApiEndpoint = 'https://appwrite.jjspot.ru/v1';
const String appName = 'jj.spot админ';

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

class AppwriteProdConfig extends AppwriteConfig {
  AppwriteProdConfig();
  @override
  String get databaseId => '654420dc8f7d6fb2e959';

  @override
  String get locationCollectionId => '654420eb61ec78a7424e';

  @override
  String get usersCollectionId => '654420e3028cb5bdca3e';

  @override
  String get locationBucketId => '6544cab81f9ab838bb9a';

  @override
  String get userBucketId => '6544caec7d776bf1fa0e';
}

//TODO: add prod appwrite configuration
