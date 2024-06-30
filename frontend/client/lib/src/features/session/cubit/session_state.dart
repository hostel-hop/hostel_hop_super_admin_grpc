part of 'session_cubit.dart';

@immutable
sealed class SessionState {}

final class SessionInitial extends SessionState {}

final class SessionLoading extends SessionState {}

final class SessionLoaded extends SessionState {
  final User user;

  SessionLoaded(this.user);
}

final class SessionError extends SessionState {
  final String message;

  SessionError(this.message);
}

final class SessionLogout extends SessionState {}
