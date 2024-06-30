sealed class Failure {
  const Failure({
    required this.message,
  });

  final String message;
}

class ServerFailure extends Failure {
  const ServerFailure({
    required super.message,
  });
}

class AuthenticatedFailure extends Failure {
  const AuthenticatedFailure({
    required super.message,
  });
}
