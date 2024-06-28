// Database:--------------------------------------------------------------------
final class DatabaseConnectionException implements Exception {
  final String message = "We're having trouble connecting to our servers.";
}

final class DataInsertException implements Exception {
  final String message = 'There was a problem saving your information.';
}

final class DataRetrievalException implements Exception {
  final String message = 'There was a problem retrieving your information.';
}

// Unkown :---------------------------------------------------------------------
final class UnknownException implements Exception {
  static const String message = 'An unknown error occurred, please try again.';
}
