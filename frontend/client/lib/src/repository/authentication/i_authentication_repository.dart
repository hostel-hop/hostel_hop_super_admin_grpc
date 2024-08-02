import 'package:dartz/dartz.dart';
import 'package:hostel_hop_super_admin/src/shared/util/failure.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class IAuthenticationRepository {
  Future<Either<AuthenticatedFailure, User>> signInWithGoogle(
    String idToken,
  );
  Future<Either<AuthenticatedFailure, Unit>> signOut();

  Future<Either<AuthenticatedFailure, bool>> authorize({
    required String userId,
    required String role,
  });

  Stream<User?> get onAuthStateChange;
}
