//
//  Generated code. Do not modify.
//  source: property_owner.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'property_owner.pb.dart' as $1;

export 'property_owner.pb.dart';

@$pb.GrpcServiceName('hostelhop.v1.PropertyOwners')
class PropertyOwnersClient extends $grpc.Client {
  static final _$getPropertyOwners = $grpc.ClientMethod<$1.GetPropertyOwnersRequest, $1.GetPropertyOwnersResponse>(
      '/hostelhop.v1.PropertyOwners/GetPropertyOwners',
      ($1.GetPropertyOwnersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetPropertyOwnersResponse.fromBuffer(value));

  PropertyOwnersClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.GetPropertyOwnersResponse> getPropertyOwners($1.GetPropertyOwnersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPropertyOwners, request, options: options);
  }
}

@$pb.GrpcServiceName('hostelhop.v1.PropertyOwners')
abstract class PropertyOwnersServiceBase extends $grpc.Service {
  $core.String get $name => 'hostelhop.v1.PropertyOwners';

  PropertyOwnersServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GetPropertyOwnersRequest, $1.GetPropertyOwnersResponse>(
        'GetPropertyOwners',
        getPropertyOwners_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetPropertyOwnersRequest.fromBuffer(value),
        ($1.GetPropertyOwnersResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.GetPropertyOwnersResponse> getPropertyOwners_Pre($grpc.ServiceCall call, $async.Future<$1.GetPropertyOwnersRequest> request) async {
    return getPropertyOwners(call, await request);
  }

  $async.Future<$1.GetPropertyOwnersResponse> getPropertyOwners($grpc.ServiceCall call, $1.GetPropertyOwnersRequest request);
}
