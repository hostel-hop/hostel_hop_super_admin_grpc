import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hostel_hop_super_admin/src/repository/authentication/authentication_repository.dart';
import 'package:hostel_hop_super_admin/src/repository/authentication/i_authentication_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'session_state.dart';

@singleton
class SessionCubit extends Cubit<SessionState> {
  SessionCubit(
    @Named.from(AuthenticationRepository) this._authenticationRepository,
  ) : super(SessionInitial()) {
    _authStateChangesSubscription =
        _authenticationRepository.onAuthStateChange.listen((user) {
      if (user == null) {
        emit(SessionLogout());
      } else {
        emit(SessionLoaded(user));
      }
    });
  }

  late final StreamSubscription<User?> _authStateChangesSubscription;

  final IAuthenticationRepository _authenticationRepository;

  @override
  Future<void> close() {
    _authStateChangesSubscription.cancel();
    return super.close();
  }
}
