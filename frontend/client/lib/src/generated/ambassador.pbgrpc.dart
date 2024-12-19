//
//  Generated code. Do not modify.
//  source: ambassador.proto
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

import 'ambassador.pb.dart' as $0;

export 'ambassador.pb.dart';

@$pb.GrpcServiceName('hostelhop.v1.Ambassadors')
class AmbassadorsClient extends $grpc.Client {
  static final _$getReferrals = $grpc.ClientMethod<$0.GetReferralsRequest, $0.GetReferralsResponse>(
      '/hostelhop.v1.Ambassadors/GetReferrals',
      ($0.GetReferralsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetReferralsResponse.fromBuffer(value));
  static final _$changeAmbassadorStatus = $grpc.ClientMethod<$0.ChangeAmbassadorStatusRequest, $0.ChangeAmbassadorStatusResponse>(
      '/hostelhop.v1.Ambassadors/ChangeAmbassadorStatus',
      ($0.ChangeAmbassadorStatusRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.ChangeAmbassadorStatusResponse.fromBuffer(value));
  static final _$getAmbassadorCsv = $grpc.ClientMethod<$0.CsvRequest, $0.CsvResponse>(
      '/hostelhop.v1.Ambassadors/GetAmbassadorCsv',
      ($0.CsvRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CsvResponse.fromBuffer(value));
  static final _$getBackpackersCsv = $grpc.ClientMethod<$0.CsvRequest, $0.CsvResponse>(
      '/hostelhop.v1.Ambassadors/GetBackpackersCsv',
      ($0.CsvRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CsvResponse.fromBuffer(value));

  AmbassadorsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetReferralsResponse> getReferrals($0.GetReferralsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getReferrals, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChangeAmbassadorStatusResponse> changeAmbassadorStatus($0.ChangeAmbassadorStatusRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changeAmbassadorStatus, request, options: options);
  }

  $grpc.ResponseFuture<$0.CsvResponse> getAmbassadorCsv($0.CsvRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAmbassadorCsv, request, options: options);
  }

  $grpc.ResponseFuture<$0.CsvResponse> getBackpackersCsv($0.CsvRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBackpackersCsv, request, options: options);
  }
}

@$pb.GrpcServiceName('hostelhop.v1.Ambassadors')
abstract class AmbassadorsServiceBase extends $grpc.Service {
  $core.String get $name => 'hostelhop.v1.Ambassadors';

  AmbassadorsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetReferralsRequest, $0.GetReferralsResponse>(
        'GetReferrals',
        getReferrals_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetReferralsRequest.fromBuffer(value),
        ($0.GetReferralsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChangeAmbassadorStatusRequest, $0.ChangeAmbassadorStatusResponse>(
        'ChangeAmbassadorStatus',
        changeAmbassadorStatus_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChangeAmbassadorStatusRequest.fromBuffer(value),
        ($0.ChangeAmbassadorStatusResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CsvRequest, $0.CsvResponse>(
        'GetAmbassadorCsv',
        getAmbassadorCsv_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CsvRequest.fromBuffer(value),
        ($0.CsvResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CsvRequest, $0.CsvResponse>(
        'GetBackpackersCsv',
        getBackpackersCsv_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CsvRequest.fromBuffer(value),
        ($0.CsvResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetReferralsResponse> getReferrals_Pre($grpc.ServiceCall call, $async.Future<$0.GetReferralsRequest> request) async {
    return getReferrals(call, await request);
  }

  $async.Future<$0.ChangeAmbassadorStatusResponse> changeAmbassadorStatus_Pre($grpc.ServiceCall call, $async.Future<$0.ChangeAmbassadorStatusRequest> request) async {
    return changeAmbassadorStatus(call, await request);
  }

  $async.Future<$0.CsvResponse> getAmbassadorCsv_Pre($grpc.ServiceCall call, $async.Future<$0.CsvRequest> request) async {
    return getAmbassadorCsv(call, await request);
  }

  $async.Future<$0.CsvResponse> getBackpackersCsv_Pre($grpc.ServiceCall call, $async.Future<$0.CsvRequest> request) async {
    return getBackpackersCsv(call, await request);
  }

  $async.Future<$0.GetReferralsResponse> getReferrals($grpc.ServiceCall call, $0.GetReferralsRequest request);
  $async.Future<$0.ChangeAmbassadorStatusResponse> changeAmbassadorStatus($grpc.ServiceCall call, $0.ChangeAmbassadorStatusRequest request);
  $async.Future<$0.CsvResponse> getAmbassadorCsv($grpc.ServiceCall call, $0.CsvRequest request);
  $async.Future<$0.CsvResponse> getBackpackersCsv($grpc.ServiceCall call, $0.CsvRequest request);
}
