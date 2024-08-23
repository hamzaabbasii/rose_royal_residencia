class APIExceptions implements Exception {
  final String message;
  final int statusCode;
  const APIExceptions({required this.message, required this.statusCode});
}
