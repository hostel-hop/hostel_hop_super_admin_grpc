import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in_platform_interface/google_sign_in_platform_interface.dart';
import 'package:hostel_hop_super_admin/src/repository/authentication/authentication_repository.dart';
import 'package:hostel_hop_super_admin/src/repository/authentication/i_authentication_repository.dart';
import 'package:injectable/injectable.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(
    @Named.from(AuthenticationRepository) this._authenticationRepository,
  ) : super(const LoginState());

  final IAuthenticationRepository _authenticationRepository;

  Future<void> signIn(GoogleSignInUserData data) async {
    try {
      emit(state.copyWith(status: LoginStatus.loading));

      final idToken = data.idToken;

      if (idToken == null) {
        emit(
          state.copyWith(
            status: LoginStatus.error,
            error: 'Invalid idToken',
          ),
        );
        return;
      }

      final userResponse =
          await _authenticationRepository.signInWithGoogle(idToken);

      return userResponse.fold(
        (l) =>
            emit(state.copyWith(status: LoginStatus.error, error: l.message)),
        (user) async {
          final isAuthorizedResult = await _authenticationRepository.authorize(
            userId: user.id,
            role: 'super_admin',
          );

          return isAuthorizedResult.fold(
              (l) => emit(
                    state.copyWith(status: LoginStatus.error, error: l.message),
                  ), (isAuthorized) {
            if (isAuthorized) {
              emit(state.copyWith(status: LoginStatus.success));
            } else {
              emit(
                state.copyWith(
                  status: LoginStatus.error,
                  error: 'User is not authorized',
                ),
              );
            }
          });
        },
      );
    } catch (e) {
      emit(state.copyWith(status: LoginStatus.error, error: e.toString()));
    }
  }
}
