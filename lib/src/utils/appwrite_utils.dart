import 'package:jjspot_api/jjspot_api.dart';

class AppwriteUtils {
  static String translateAppwriteException(
    String type, {
    required int code,
    required String message,
  }) {
    if (type == 'user_invalid_credentials' && code == 401) {
      return 'Неверные учетные данные. Проверьте email и пароль.';
    } else {
      return message;
    }
  }

  static String getImageUrl(String imageId) {
    final url = '$appwriteApiEndpoint/storage/buckets/'
        '${JJspotApi.instance.appwriteConfig.locationsBucketId}/files/'
        '$imageId/view?project=$appwriteProjectId';
    return url;
  }
}
