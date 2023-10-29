class AppwriteUtils {
  static String translateAppwriteException(
    String type, {
    required int code,
    required String message,
  }) {
    if (type == 'user_invalid_credentials' && code == 401) {
      return 'Неверные учетные данные. Проверьте email и пароль.';
    }  else {
      return message;
    }
  }
}
