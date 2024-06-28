import 'package:grpc/src/server/call.dart';
import 'package:hostel_hop_grpc/src/generated/property_owner.pbgrpc.dart';
import 'package:hostel_hop_grpc/src/mixins/skyflow_generate_bearer_token.dart';
import 'package:injectable/injectable.dart';
import 'package:mongo_dart/mongo_dart.dart';

@singleton
class PropertyOwnersService extends PropertyOwnersServiceBase
    with SkyflowGenerateBearerToken {
  final Db _db;

  PropertyOwnersService(this._db);

  DbCollection get _propertyOwners => _db.collection('propertyowners');

  @override
  Future<GetPropertyOwnersResponse> getPropertyOwners(
      ServiceCall call, GetPropertyOwnersRequest request) {
    // TODO: implement getPropertyOwners
    throw UnimplementedError();
  }
}
