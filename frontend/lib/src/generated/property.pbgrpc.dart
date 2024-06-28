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

import 'property.pb.dart' as $0;

export 'property.pb.dart';

@$pb.GrpcServiceName('hostelhop.v1.Properties')
class PropertiesClient extends $grpc.Client {
  static final _$getProperties = $grpc.ClientMethod<$0.GetPropertiesRequest, $0.GetPropertiesResponse>(
      '/hostelhop.v1.Properties/GetProperties',
      ($0.GetPropertiesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetPropertiesResponse.fromBuffer(value));

  PropertiesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetPropertiesResponse> getProperties($0.GetPropertiesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProperties, request, options: options);
  }
}

@$pb.GrpcServiceName('hostelhop.v1.Properties')
abstract class PropertiesServiceBase extends $grpc.Service {
  $core.String get $name => 'hostelhop.v1.Properties';

  PropertiesServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetPropertiesRequest, $0.GetPropertiesResponse>(
        'GetProperties',
        getProperties_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetPropertiesRequest.fromBuffer(value),
        ($0.GetPropertiesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetPropertiesResponse> getProperties_Pre($grpc.ServiceCall call, $async.Future<$0.GetPropertiesRequest> request) async {
    return getProperties(call, await request);
  }

  $async.Future<$0.GetPropertiesResponse> getProperties($grpc.ServiceCall call, $0.GetPropertiesRequest request);
}
