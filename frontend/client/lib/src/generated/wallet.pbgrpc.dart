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

import 'wallet.pb.dart' as $3;

export 'wallet.pb.dart';

@$pb.GrpcServiceName('hostelhop.v1.Wallets')
class WalletsClient extends $grpc.Client {
  static final _$getWallet = $grpc.ClientMethod<$3.GetWalletRequest, $3.GetWalletResponse>(
      '/hostelhop.v1.Wallets/GetWallet',
      ($3.GetWalletRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetWalletResponse.fromBuffer(value));
  static final _$getWallets = $grpc.ClientMethod<$3.GetWalletsRequest, $3.GetWalletsResponse>(
      '/hostelhop.v1.Wallets/GetWallets',
      ($2.GetWalletsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetWalletsResponse.fromBuffer(value));
  static final _$updateWithdrawableCreditBalance = $grpc.ClientMethod<$2.UpdateWithdrawableCreditBalanceRequest, $2.UpdateWithdrawableCreditBalanceResponse>(
      '/hostelhop.v1.Wallets/UpdateWithdrawableCreditBalance',
      ($2.UpdateWithdrawableCreditBalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateWithdrawableCreditBalanceResponse.fromBuffer(value));
  static final _$updateNonWithdrawableCreditBalance = $grpc.ClientMethod<$2.UpdateNonWithdrawableCreditBalanceRequest, $2.UpdateNonWithdrawableCreditResponse>(
      '/hostelhop.v1.Wallets/UpdateNonWithdrawableCreditBalance',
      ($2.UpdateNonWithdrawableCreditBalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.UpdateNonWithdrawableCreditResponse.fromBuffer(value));

  WalletsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$3.GetWalletResponse> getWallet($3.GetWalletRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWallet, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetWalletsResponse> getWallets($3.GetWalletsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWallets, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateWithdrawableCreditBalanceResponse> updateWithdrawableCreditBalance($2.UpdateWithdrawableCreditBalanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateWithdrawableCreditBalance, request, options: options);
  }

  $grpc.ResponseFuture<$2.UpdateNonWithdrawableCreditResponse> updateNonWithdrawableCreditBalance($2.UpdateNonWithdrawableCreditBalanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateNonWithdrawableCreditBalance, request, options: options);
  }
}

@$pb.GrpcServiceName('hostelhop.v1.Wallets')
abstract class WalletsServiceBase extends $grpc.Service {
  $core.String get $name => 'hostelhop.v1.Wallets';

  WalletsServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.GetWalletRequest, $3.GetWalletResponse>(
        'GetWallet',
        getWallet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetWalletRequest.fromBuffer(value),
        ($3.GetWalletResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetWalletsRequest, $3.GetWalletsResponse>(
        'GetWallets',
        getWallets_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetWalletsRequest.fromBuffer(value),
        ($2.GetWalletsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateWithdrawableCreditBalanceRequest, $2.UpdateWithdrawableCreditBalanceResponse>(
        'UpdateWithdrawableCreditBalance',
        updateWithdrawableCreditBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateWithdrawableCreditBalanceRequest.fromBuffer(value),
        ($2.UpdateWithdrawableCreditBalanceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.UpdateNonWithdrawableCreditBalanceRequest, $2.UpdateNonWithdrawableCreditResponse>(
        'UpdateNonWithdrawableCreditBalance',
        updateNonWithdrawableCreditBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.UpdateNonWithdrawableCreditBalanceRequest.fromBuffer(value),
        ($2.UpdateNonWithdrawableCreditResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.GetWalletResponse> getWallet_Pre($grpc.ServiceCall call, $async.Future<$3.GetWalletRequest> request) async {
    return getWallet(call, await request);
  }

  $async.Future<$3.GetWalletsResponse> getWallets_Pre($grpc.ServiceCall call, $async.Future<$3.GetWalletsRequest> request) async {
    return getWallets(call, await request);
  }

  $async.Future<$2.UpdateWithdrawableCreditBalanceResponse> updateWithdrawableCreditBalance_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateWithdrawableCreditBalanceRequest> request) async {
    return updateWithdrawableCreditBalance(call, await request);
  }

  $async.Future<$2.UpdateNonWithdrawableCreditResponse> updateNonWithdrawableCreditBalance_Pre($grpc.ServiceCall call, $async.Future<$2.UpdateNonWithdrawableCreditBalanceRequest> request) async {
    return updateNonWithdrawableCreditBalance(call, await request);
  }

  $async.Future<$2.GetWalletResponse> getWallet($grpc.ServiceCall call, $2.GetWalletRequest request);
  $async.Future<$2.GetWalletsResponse> getWallets($grpc.ServiceCall call, $2.GetWalletsRequest request);
  $async.Future<$2.UpdateWithdrawableCreditBalanceResponse> updateWithdrawableCreditBalance($grpc.ServiceCall call, $2.UpdateWithdrawableCreditBalanceRequest request);
  $async.Future<$2.UpdateNonWithdrawableCreditResponse> updateNonWithdrawableCreditBalance($grpc.ServiceCall call, $2.UpdateNonWithdrawableCreditBalanceRequest request);
}
