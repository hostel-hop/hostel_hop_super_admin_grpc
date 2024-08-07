//
//  Generated code. Do not modify.
//  source: property.proto
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

import 'property.pb.dart' as $1;

export 'property.pb.dart';

@$pb.GrpcServiceName('hostelhop.v1.Properties')
class PropertiesClient extends $grpc.Client {
  static final _$getProperties = $grpc.ClientMethod<$1.GetPropertiesRequest, $1.GetPropertiesResponse>(
      '/hostelhop.v1.Properties/GetProperties',
      ($1.GetPropertiesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.GetPropertiesResponse.fromBuffer(value));

  PropertiesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.GetPropertiesResponse> getProperties($1.GetPropertiesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProperties, request, options: options);
  }
}

@$pb.GrpcServiceName('hostelhop.v1.Properties')
abstract class PropertiesServiceBase extends $grpc.Service {
  $core.String get $name => 'hostelhop.v1.Properties';

  PropertiesServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GetPropertiesRequest, $1.GetPropertiesResponse>(
        'GetProperties',
        getProperties_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GetPropertiesRequest.fromBuffer(value),
        ($1.GetPropertiesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.GetPropertiesResponse> getProperties_Pre($grpc.ServiceCall call, $async.Future<$1.GetPropertiesRequest> request) async {
    return getProperties(call, await request);
  }

  $async.Future<$1.GetPropertiesResponse> getProperties($grpc.ServiceCall call, $1.GetPropertiesRequest request);
}
