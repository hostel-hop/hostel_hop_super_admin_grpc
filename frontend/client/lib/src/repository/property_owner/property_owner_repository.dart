import 'package:dartz/dartz.dart';
import 'package:hostel_hop_super_admin/src/generated/property_owners.pbgrpc.dart';
import 'package:hostel_hop_super_admin/src/repository/property_owner/i_property_owner_repository.dart';
import 'package:hostel_hop_super_admin/src/shared/util/failure.dart';
import 'package:injectable/injectable.dart';

@named
@Singleton(as: IPropertyOwnerRepository)
class PropertyOwnerRepository implements IPropertyOwnerRepository {
  final PropertyOwnersClient _client;

  PropertyOwnerRepository(this._client);

  @override
  Future<Either<Failure, GetPropertyOwnersResponse>> list(
      [String query = '']) async {
    try {
      final response = await _client.getPropertyOwners(GetPropertyOwnersRequest(
        query: query,
      ));

      return right(response);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UpdatePropertyOwnerPasswordResponse>> updatePassword(
    String id,
    String password,
  ) async {
    try {
      final response = await _client.updatePropertyOwnerPassword(
        UpdatePropertyOwnerPasswordRequest(
          hostelHopId: id,
          password: password,
        ),
      );

      return right(response);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, UpdatePropertyOwnerResponse>> updatePropertyOwner(
    String skyflowId,
    String firstName,
    String lastName,
    String email,
  ) async {
    try {
      final response = await _client.updatePropertyOwner(
        UpdatePropertyOwnerRequest(
          skyflowId: skyflowId,
          firstName: firstName,
          lastName: lastName,
          email: email,
        ),
      );

      return right(response);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}
