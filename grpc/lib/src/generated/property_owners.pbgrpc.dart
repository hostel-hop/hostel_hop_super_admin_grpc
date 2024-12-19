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

import 'property_owners.pb.dart' as $3;

export 'property_owners.pb.dart';

@$pb.GrpcServiceName('hostelhop.v1.PropertyOwners')
class PropertyOwnersClient extends $grpc.Client {
  static final _$getPropertyOwners = $grpc.ClientMethod<$3.GetPropertyOwnersRequest, $3.GetPropertyOwnersResponse>(
      '/hostelhop.v1.PropertyOwners/GetPropertyOwners',
      ($3.GetPropertyOwnersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetPropertyOwnersResponse.fromBuffer(value));
  static final _$updatePropertyOwner = $grpc.ClientMethod<$3.UpdatePropertyOwnerRequest, $3.UpdatePropertyOwnerResponse>(
      '/hostelhop.v1.PropertyOwners/UpdatePropertyOwner',
      ($3.UpdatePropertyOwnerRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdatePropertyOwnerResponse.fromBuffer(value));
  static final _$updatePropertyOwnerPassword = $grpc.ClientMethod<$3.UpdatePropertyOwnerPasswordRequest, $3.UpdatePropertyOwnerPasswordResponse>(
      '/hostelhop.v1.PropertyOwners/UpdatePropertyOwnerPassword',
      ($3.UpdatePropertyOwnerPasswordRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdatePropertyOwnerPasswordResponse.fromBuffer(value));
  static final _$updatePropertyOwnerEmail = $grpc.ClientMethod<$3.UpdatePropertyOwnerEmailRequest, $3.UpdatePropertyOwnerEmailResponse>(
      '/hostelhop.v1.PropertyOwners/UpdatePropertyOwnerEmail',
      ($3.UpdatePropertyOwnerEmailRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdatePropertyOwnerEmailResponse.fromBuffer(value));

  PropertyOwnersClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.GetPropertyOwnersResponse> getPropertyOwners($3.GetPropertyOwnersRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPropertyOwners, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdatePropertyOwnerResponse> updatePropertyOwner($3.UpdatePropertyOwnerRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePropertyOwner, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdatePropertyOwnerPasswordResponse> updatePropertyOwnerPassword($3.UpdatePropertyOwnerPasswordRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePropertyOwnerPassword, request, options: options);
  }

  $grpc.ResponseFuture<$3.UpdatePropertyOwnerEmailResponse> updatePropertyOwnerEmail($3.UpdatePropertyOwnerEmailRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updatePropertyOwnerEmail, request, options: options);
  }
}

@$pb.GrpcServiceName('hostelhop.v1.PropertyOwners')
abstract class PropertyOwnersServiceBase extends $grpc.Service {
  $core.String get $name => 'hostelhop.v1.PropertyOwners';

  PropertyOwnersServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.GetPropertyOwnersRequest, $3.GetPropertyOwnersResponse>(
        'GetPropertyOwners',
        getPropertyOwners_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetPropertyOwnersRequest.fromBuffer(value),
        ($3.GetPropertyOwnersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdatePropertyOwnerRequest, $3.UpdatePropertyOwnerResponse>(
        'UpdatePropertyOwner',
        updatePropertyOwner_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdatePropertyOwnerRequest.fromBuffer(value),
        ($3.UpdatePropertyOwnerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdatePropertyOwnerPasswordRequest, $3.UpdatePropertyOwnerPasswordResponse>(
        'UpdatePropertyOwnerPassword',
        updatePropertyOwnerPassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdatePropertyOwnerPasswordRequest.fromBuffer(value),
        ($3.UpdatePropertyOwnerPasswordResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdatePropertyOwnerEmailRequest, $3.UpdatePropertyOwnerEmailResponse>(
        'UpdatePropertyOwnerEmail',
        updatePropertyOwnerEmail_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdatePropertyOwnerEmailRequest.fromBuffer(value),
        ($3.UpdatePropertyOwnerEmailResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.GetPropertyOwnersResponse> getPropertyOwners_Pre($grpc.ServiceCall call, $async.Future<$3.GetPropertyOwnersRequest> request) async {
    return getPropertyOwners(call, await request);
  }

  $async.Future<$3.UpdatePropertyOwnerResponse> updatePropertyOwner_Pre($grpc.ServiceCall call, $async.Future<$3.UpdatePropertyOwnerRequest> request) async {
    return updatePropertyOwner(call, await request);
  }

  $async.Future<$3.UpdatePropertyOwnerPasswordResponse> updatePropertyOwnerPassword_Pre($grpc.ServiceCall call, $async.Future<$3.UpdatePropertyOwnerPasswordRequest> request) async {
    return updatePropertyOwnerPassword(call, await request);
  }

  $async.Future<$3.UpdatePropertyOwnerEmailResponse> updatePropertyOwnerEmail_Pre($grpc.ServiceCall call, $async.Future<$3.UpdatePropertyOwnerEmailRequest> request) async {
    return updatePropertyOwnerEmail(call, await request);
  }

  $async.Future<$3.GetPropertyOwnersResponse> getPropertyOwners($grpc.ServiceCall call, $3.GetPropertyOwnersRequest request);
  $async.Future<$3.UpdatePropertyOwnerResponse> updatePropertyOwner($grpc.ServiceCall call, $3.UpdatePropertyOwnerRequest request);
  $async.Future<$3.UpdatePropertyOwnerPasswordResponse> updatePropertyOwnerPassword($grpc.ServiceCall call, $3.UpdatePropertyOwnerPasswordRequest request);
  $async.Future<$3.UpdatePropertyOwnerEmailResponse> updatePropertyOwnerEmail($grpc.ServiceCall call, $3.UpdatePropertyOwnerEmailRequest request);
}
