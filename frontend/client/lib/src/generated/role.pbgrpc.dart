//
//  Generated code. Do not modify.
//  source: role.proto
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

import 'role.pb.dart' as $3;

export 'role.pb.dart';

@$pb.GrpcServiceName('hostelhop.v1.Role')
class RoleClient extends $grpc.Client {
  static final _$updateUserRole = $grpc.ClientMethod<$3.UpdateUserRoleRequest, $3.UpdateUserRoleResponse>(
      '/hostelhop.v1.Role/UpdateUserRole',
      ($3.UpdateUserRoleRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.UpdateUserRoleResponse.fromBuffer(value));
  static final _$authorize = $grpc.ClientMethod<$3.AuthorizeRequest, $3.AuthorizeResponse>(
      '/hostelhop.v1.Role/Authorize',
      ($3.AuthorizeRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.AuthorizeResponse.fromBuffer(value));

  RoleClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.UpdateUserRoleResponse> updateUserRole($3.UpdateUserRoleRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateUserRole, request, options: options);
  }

  $grpc.ResponseFuture<$3.AuthorizeResponse> authorize($3.AuthorizeRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authorize, request, options: options);
  }
}

@$pb.GrpcServiceName('hostelhop.v1.Role')
abstract class RoleServiceBase extends $grpc.Service {
  $core.String get $name => 'hostelhop.v1.Role';

  RoleServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.UpdateUserRoleRequest, $3.UpdateUserRoleResponse>(
        'UpdateUserRole',
        updateUserRole_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateUserRoleRequest.fromBuffer(value),
        ($3.UpdateUserRoleResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.AuthorizeRequest, $3.AuthorizeResponse>(
        'Authorize',
        authorize_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.AuthorizeRequest.fromBuffer(value),
        ($3.AuthorizeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.UpdateUserRoleResponse> updateUserRole_Pre($grpc.ServiceCall call, $async.Future<$3.UpdateUserRoleRequest> request) async {
    return updateUserRole(call, await request);
  }

  $async.Future<$3.AuthorizeResponse> authorize_Pre($grpc.ServiceCall call, $async.Future<$3.AuthorizeRequest> request) async {
    return authorize(call, await request);
  }

  $async.Future<$3.UpdateUserRoleResponse> updateUserRole($grpc.ServiceCall call, $3.UpdateUserRoleRequest request);
  $async.Future<$3.AuthorizeResponse> authorize($grpc.ServiceCall call, $3.AuthorizeRequest request);
}
