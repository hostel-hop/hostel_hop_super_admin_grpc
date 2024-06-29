import 'package:hostel_hop_super_admin/src/generated/property_owners.pbgrpc.dart';
import 'package:injectable/injectable.dart';

@singleton
class PropertyOwnerRepository {
  final PropertyOwnersClient _client;

  PropertyOwnerRepository(this._client);

  Future<GetPropertyOwnersResponse> list() async {
    try {
      final response =
          await _client.getPropertyOwners(GetPropertyOwnersRequest());

      return response;
    } catch (e) {
      return Future.error(e);
    }
  }
}
