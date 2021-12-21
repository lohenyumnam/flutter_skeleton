class ErrorResponseException implements Exception {
  ErrorResponseException({
    required this.statusCode,
    required this.message,
  });

  final String statusCode;
  final String message;

  @override
  String toString() => message;
}
