class JjSpotApiException implements Exception {
  final String message;
  final int code;
  final bool hasError;

  JjSpotApiException({
    required this.message,
    required this.code,
    required this.hasError,
  });

  factory JjSpotApiException.noError() {
    return JjSpotApiException(
      message: '',
      code: 200,
      hasError: false,
    );
  }
}
