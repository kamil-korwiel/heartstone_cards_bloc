class NetworkException implements Exception {
  final String errorMessage;
  final int statusCode;
  NetworkException({
    required this.errorMessage,
    required this.statusCode,
  });
}
