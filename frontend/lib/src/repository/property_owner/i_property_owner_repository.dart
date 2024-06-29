import 'package:dartz/dartz.dart';
import 'package:hostel_hop_super_admin/src/generated/property_owners.pbgrpc.dart';
import 'package:hostel_hop_super_admin/src/shared/util/failure.dart';

abstract interface class IPropertyOwnerRepository {
  Future<Either<Failure, GetPropertyOwnersResponse>> list([String query = '']);

  Future<Either<Failure, UpdatePropertyOwnerPasswordResponse>> updatePassword(
    String id,
    String password,
  );
  Future<Either<Failure, UpdatePropertyOwnerResponse>> updatePropertyOwner(
    String skyflowId,
    String name,
    String email,
  );
}
