import 'package:grpc/grpc.dart';
import 'package:grpc/src/server/call.dart';
import 'package:hostel_hop_grpc/src/generated/role.pbgrpc.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase/supabase.dart';

@singleton
class RoleService extends RoleServiceBase {
  final SupabaseClient _supabaseClient;

  RoleService(this._supabaseClient);

  @override
  Future<UpdateUserRoleResponse> updateUserRole(
      ServiceCall call, UpdateUserRoleRequest request) async {
    final userId = request.userId;
    final role = request.role;

    await _supabaseClient.from('user_roles').insert({
      'user_id': userId,
      'role': role,
    });

    return UpdateUserRoleResponse();
  }

  @override
  Future<AuthorizeResponse> authorize(
    ServiceCall call,
    AuthorizeRequest request,
  ) async {
    final userId = request.userId;
    final role = request.role;

    final data = await _supabaseClient
        .from('user_roles')
        .select()
        .eq('user_id', userId)
        .eq('role', role);

    if (data.isEmpty) {
      return AuthorizeResponse(
        authorized: false,
      );
    }

    return AuthorizeResponse(
      authorized: true,
    );
  }
}
