import 'package:dartz/dartz.dart';
import 'package:hostel_hop_super_admin/src/generated/ambassador.pb.dart';
import 'package:hostel_hop_super_admin/src/shared/util/failure.dart';

abstract interface class IAmbassadorsRepository {
  Future<Either<Failure, GetReferralsResponse>> list([String query = '']);

  Future<Either<Failure, ChangeAmbassadorStatusResponse>> changeStatus(
      {required String id, required int type});
}
