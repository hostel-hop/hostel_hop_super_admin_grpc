//
//  Generated code. Do not modify.
//  source: wallet.proto
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

import 'wallet.pb.dart' as $2;

export 'wallet.pb.dart';

@$pb.GrpcServiceName('hostelhop.v1.Wallets')
class WalletsClient extends $grpc.Client {
  static final _$getWallet = $grpc.ClientMethod<$2.GetWalletRequest, $2.GetWalletResponse>(
      '/hostelhop.v1.Wallets/GetWallet',
      ($2.GetWalletRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetWalletResponse.fromBuffer(value));

  WalletsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.GetWalletResponse> getWallet($2.GetWalletRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWallet, request, options: options);
  }
}

@$pb.GrpcServiceName('hostelhop.v1.Wallets')
abstract class WalletsServiceBase extends $grpc.Service {
  $core.String get $name => 'hostelhop.v1.Wallets';

  WalletsServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.GetWalletRequest, $2.GetWalletResponse>(
        'GetWallet',
        getWallet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetWalletRequest.fromBuffer(value),
        ($2.GetWalletResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.GetWalletResponse> getWallet_Pre($grpc.ServiceCall call, $async.Future<$2.GetWalletRequest> request) async {
    return getWallet(call, await request);
  }

  $async.Future<$2.GetWalletResponse> getWallet($grpc.ServiceCall call, $2.GetWalletRequest request);
}
