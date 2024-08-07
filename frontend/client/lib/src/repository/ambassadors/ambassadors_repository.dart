import 'package:dartz/dartz.dart';
import 'package:hostel_hop_super_admin/src/generated/ambassador.pbgrpc.dart';
import 'package:hostel_hop_super_admin/src/repository/ambassadors/i_ambassadors_repository.dart';
import 'package:hostel_hop_super_admin/src/shared/util/failure.dart';
import 'package:injectable/injectable.dart';

@named
@Singleton(as: IAmbassadorsRepository)
class AmbassadorsRepository implements IAmbassadorsRepository {
  final AmbassadorsClient _client;

  AmbassadorsRepository(this._client);

  @override
  Future<Either<Failure, GetReferralsResponse>> list([String query = '']) async {
    try {
      final response = await _client.getReferrals(GetReferralsRequest(
        query: query,
      ));
      return right(response);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, ChangeAmbassadorStatusResponse>> changeStatus(
      {required String id, required int type}) async {
    try {
      final response = await _client.changeAmbassadorStatus(ChangeAmbassadorStatusRequest(
        backpackerId: id,
        type: type,
      ));
      return right(response);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}
