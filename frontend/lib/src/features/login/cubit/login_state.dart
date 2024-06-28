part of 'login_cubit.dart';

enum LoginStatus {
  initial,
  loading,
  success,
  error,
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(LoginStatus.initial) LoginStatus status,
    String? error,
  }) = _LoginState;
}
