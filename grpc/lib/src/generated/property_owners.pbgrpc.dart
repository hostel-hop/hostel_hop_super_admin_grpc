//
//  Generated code. Do not modify.
//  source: property_owners.proto
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

import 'property_owners.pb.dart' as $2;

export 'property_owners.pb.dart';

@$pb.GrpcServiceName('hostelhop.v1.PropertyOwners')
class PropertyOwnersClient extends $grpc.Client {
  static final _$getPropertyOwners = $grpc.ClientMethod<$2.GetPropertyOwnersRequest, $2.GetPropertyOwnersResponse>(
      '/hostelhop.v1.PropertyOwners/GetPropertyOwners',
      ($2.GetPropertyOwnersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetPropertyOwnersResponse.fromBuffer(value));
  static final _$updatePropertyOwner = $grpc.ClientMethod<$2.UpdatePropertyOwnerRequest, $2.UpdatePropertyOwnerResponse>(
      '/hostelhop.v1.PropertyOwners/UpdatePropertyOwner',
      ($2.UpdatePropertyOwnerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdatePropertyOwnerResponse.fromBuffer(value));
  static final _$updatePropertyOwnerPassword = $grpc.ClientMethod<$2.UpdatePropertyOwnerPasswordRequest, $2.UpdatePropertyOwnerPasswordResponse>(
      '/hostelhop.v1.PropertyOwners/UpdatePropertyOwnerPassword',
      ($2.UpdatePropertyOwnerPasswordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdatePropertyOwnerPasswordResponse.fromBuffer(value));
  static final _$updatePropertyOwnerEmail = $grpc.ClientMethod<$2.UpdatePropertyOwnerEmailRequest, $2.UpdatePropertyOwnerEmailResponse>(
      '/hostelhop.v1.PropertyOwners/UpdatePropertyOwnerEmail',
      ($2.UpdatePropertyOwnerEmailRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdatePropertyOwnerEmailResponse.fromBuffer(value));

  PropertyOwnersClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.GetPropertyOwnersResponse> getPropertyOwners($2.GetPropertyOwnersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPropertyOwners, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdatePropertyOwnerResponse> updatePropertyOwner($2.UpdatePropertyOwnerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePropertyOwner, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdatePropertyOwnerPasswordResponse> updatePropertyOwnerPassword($2.UpdatePropertyOwnerPasswordRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePropertyOwnerPassword, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdatePropertyOwnerEmailResponse> updatePropertyOwnerEmail($2.UpdatePropertyOwnerEmailRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePropertyOwnerEmail, request, options: options);
  }
}

@$pb.GrpcServiceName('hostelhop.v1.PropertyOwners')
abstract class PropertyOwnersServiceBase extends $grpc.Service {
  $core.String get $name => 'hostelhop.v1.PropertyOwners';

  PropertyOwnersServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.GetPropertyOwnersRequest, $2.GetPropertyOwnersResponse>(
        'GetPropertyOwners',
        getPropertyOwners_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetPropertyOwnersRequest.fromBuffer(value),
        ($2.GetPropertyOwnersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdatePropertyOwnerRequest, $2.UpdatePropertyOwnerResponse>(
        'UpdatePropertyOwner',
        updatePropertyOwner_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdatePropertyOwnerRequest.fromBuffer(value),
        ($2.UpdatePropertyOwnerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdatePropertyOwnerPasswordRequest, $2.UpdatePropertyOwnerPasswordResponse>(
        'UpdatePropertyOwnerPassword',
        updatePropertyOwnerPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdatePropertyOwnerPasswordRequest.fromBuffer(value),
        ($2.UpdatePropertyOwnerPasswordResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdatePropertyOwnerEmailRequest, $2.UpdatePropertyOwnerEmailResponse>(
        'UpdatePropertyOwnerEmail',
        updatePropertyOwnerEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdatePropertyOwnerEmailRequest.fromBuffer(value),
        ($2.UpdatePropertyOwnerEmailResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.GetPropertyOwnersResponse> getPropertyOwners_Pre($grpc.ServiceCall call, $async.Future<$2.GetPropertyOwnersRequest> request) async {
    return getPropertyOwners(call, await request);
  }

  $async.Future<$2.UpdatePropertyOwnerResponse> updatePropertyOwner_Pre($grpc.ServiceCall call, $async.Future<$2.UpdatePropertyOwnerRequest> request) async {
    return updatePropertyOwner(call, await request);
  }

  $async.Future<$2.UpdatePropertyOwnerPasswordResponse> updatePropertyOwnerPassword_Pre($grpc.ServiceCall call, $async.Future<$2.UpdatePropertyOwnerPasswordRequest> request) async {
    return updatePropertyOwnerPassword(call, await request);
  }

  $async.Future<$2.UpdatePropertyOwnerEmailResponse> updatePropertyOwnerEmail_Pre($grpc.ServiceCall call, $async.Future<$2.UpdatePropertyOwnerEmailRequest> request) async {
    return updatePropertyOwnerEmail(call, await request);
  }

  $async.Future<$2.GetPropertyOwnersResponse> getPropertyOwners($grpc.ServiceCall call, $2.GetPropertyOwnersRequest request);
  $async.Future<$2.UpdatePropertyOwnerResponse> updatePropertyOwner($grpc.ServiceCall call, $2.UpdatePropertyOwnerRequest request);
  $async.Future<$2.UpdatePropertyOwnerPasswordResponse> updatePropertyOwnerPassword($grpc.ServiceCall call, $2.UpdatePropertyOwnerPasswordRequest request);
  $async.Future<$2.UpdatePropertyOwnerEmailResponse> updatePropertyOwnerEmail($grpc.ServiceCall call, $2.UpdatePropertyOwnerEmailRequest request);
}
