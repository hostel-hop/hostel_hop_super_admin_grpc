import 'package:dartz/dartz.dart';
import 'package:hostel_hop_super_admin/src/generated/role.pbgrpc.dart';
import 'package:hostel_hop_super_admin/src/module/register_module.dart';
import 'package:hostel_hop_super_admin/src/repository/authentication/i_authentication_repository.dart';
import 'package:hostel_hop_super_admin/src/shared/util/failure.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart'
    show OAuthProvider, User;

@named
@LazySingleton(as: IAuthenticationRepository)
class AuthenticationRepository implements IAuthenticationRepository {
  AuthenticationRepository(
    this._supabaseAuthClient,
    this._roleClient,
  );

  final SupabaseAuthClient _supabaseAuthClient;
  final RoleClient _roleClient;

  @override
  Future<Either<AuthenticatedFailure, User>> signInWithGoogle(
    String idToken,
  ) async {
    try {
      final authResponse = await _supabaseAuthClient.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: idToken,
      );

      final user = authResponse.user;

      if (user == null) {
        return left(
          const AuthenticatedFailure(message: 'User is null'),
        );
      }

      return right(user);
    } catch (e) {
      return left(
        AuthenticatedFailure(message: e.toString()),
      );
    }
  }

  @override
  Future<Either<AuthenticatedFailure, Unit>> signOut() async {
    try {
      await _supabaseAuthClient.signOut();
      return right(unit);
    } catch (e) {
      return left(
        AuthenticatedFailure(message: e.toString()),
      );
    }
  }

  @override
  Stream<User?> get onAuthStateChange =>
      _supabaseAuthClient.onAuthStateChange.map(
        (event) => event.session?.user,
      );

  @override
  Future<Either<AuthenticatedFailure, bool>> authorize(
      {required String userId, required String role}) async {
    try {
      final response = await _roleClient.authorize(
        AuthorizeRequest()
          ..userId = userId
          ..role = role,
      );

      return right(response.authorized);
    } catch (e) {
      return left(
        AuthenticatedFailure(message: e.toString()),
      );
    }
  }
}
