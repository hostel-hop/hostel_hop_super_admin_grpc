//
//  Generated code. Do not modify.
//  source: ota_reservation_push.proto
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

import 'ota_reservation_push.pb.dart' as $1;

export 'ota_reservation_push.pb.dart';

@$pb.GrpcServiceName('hostelhop.v1.OtaReservationPush')
class OtaReservationPushClient extends $grpc.Client {
  static final _$listOtaReservationPushes = $grpc.ClientMethod<$1.ListOtaReservationPushesRequest, $1.ListOtaReservationPushesResponse>(
      '/hostelhop.v1.OtaReservationPush/ListOtaReservationPushes',
      ($1.ListOtaReservationPushesRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.ListOtaReservationPushesResponse.fromBuffer(value));

  OtaReservationPushClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.ListOtaReservationPushesResponse> listOtaReservationPushes($1.ListOtaReservationPushesRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listOtaReservationPushes, request, options: options);
  }
}

@$pb.GrpcServiceName('hostelhop.v1.OtaReservationPush')
abstract class OtaReservationPushServiceBase extends $grpc.Service {
  $core.String get $name => 'hostelhop.v1.OtaReservationPush';

  OtaReservationPushServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.ListOtaReservationPushesRequest, $1.ListOtaReservationPushesResponse>(
        'ListOtaReservationPushes',
        listOtaReservationPushes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.ListOtaReservationPushesRequest.fromBuffer(value),
        ($1.ListOtaReservationPushesResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.ListOtaReservationPushesResponse> listOtaReservationPushes_Pre($grpc.ServiceCall call, $async.Future<$1.ListOtaReservationPushesRequest> request) async {
    return listOtaReservationPushes(call, await request);
  }

  $async.Future<$1.ListOtaReservationPushesResponse> listOtaReservationPushes($grpc.ServiceCall call, $1.ListOtaReservationPushesRequest request);
}
