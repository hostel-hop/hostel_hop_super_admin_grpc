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

import 'wallet.pb.dart' as $5;

export 'wallet.pb.dart';

@$pb.GrpcServiceName('hostelhop.v1.Wallets')
class WalletsClient extends $grpc.Client {
  static final _$getWallet = $grpc.ClientMethod<$5.GetWalletRequest, $5.GetWalletResponse>(
      '/hostelhop.v1.Wallets/GetWallet',
      ($5.GetWalletRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetWalletResponse.fromBuffer(value));
  static final _$getWallets = $grpc.ClientMethod<$5.GetWalletsRequest, $5.GetWalletsResponse>(
      '/hostelhop.v1.Wallets/GetWallets',
      ($5.GetWalletsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.GetWalletsResponse.fromBuffer(value));
  static final _$updateWithdrawableCreditBalance = $grpc.ClientMethod<$5.UpdateWithdrawableCreditBalanceRequest, $5.UpdateWithdrawableCreditBalanceResponse>(
      '/hostelhop.v1.Wallets/UpdateWithdrawableCreditBalance',
      ($5.UpdateWithdrawableCreditBalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateWithdrawableCreditBalanceResponse.fromBuffer(value));
  static final _$updateNonWithdrawableCreditBalance = $grpc.ClientMethod<$5.UpdateNonWithdrawableCreditBalanceRequest, $5.UpdateNonWithdrawableCreditResponse>(
      '/hostelhop.v1.Wallets/UpdateNonWithdrawableCreditBalance',
      ($5.UpdateNonWithdrawableCreditBalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.UpdateNonWithdrawableCreditResponse.fromBuffer(value));

  WalletsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$5.GetWalletResponse> getWallet($5.GetWalletRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWallet, request, options: options);
  }

  $grpc.ResponseFuture<$5.GetWalletsResponse> getWallets($5.GetWalletsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWallets, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateWithdrawableCreditBalanceResponse> updateWithdrawableCreditBalance($5.UpdateWithdrawableCreditBalanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateWithdrawableCreditBalance, request, options: options);
  }

  $grpc.ResponseFuture<$5.UpdateNonWithdrawableCreditResponse> updateNonWithdrawableCreditBalance($5.UpdateNonWithdrawableCreditBalanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateNonWithdrawableCreditBalance, request, options: options);
  }
}

@$pb.GrpcServiceName('hostelhop.v1.Wallets')
abstract class WalletsServiceBase extends $grpc.Service {
  $core.String get $name => 'hostelhop.v1.Wallets';

  WalletsServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.GetWalletRequest, $5.GetWalletResponse>(
        'GetWallet',
        getWallet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetWalletRequest.fromBuffer(value),
        ($5.GetWalletResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetWalletsRequest, $5.GetWalletsResponse>(
        'GetWallets',
        getWallets_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetWalletsRequest.fromBuffer(value),
        ($5.GetWalletsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateWithdrawableCreditBalanceRequest, $5.UpdateWithdrawableCreditBalanceResponse>(
        'UpdateWithdrawableCreditBalance',
        updateWithdrawableCreditBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateWithdrawableCreditBalanceRequest.fromBuffer(value),
        ($5.UpdateWithdrawableCreditBalanceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateNonWithdrawableCreditBalanceRequest, $5.UpdateNonWithdrawableCreditResponse>(
        'UpdateNonWithdrawableCreditBalance',
        updateNonWithdrawableCreditBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.UpdateNonWithdrawableCreditBalanceRequest.fromBuffer(value),
        ($5.UpdateNonWithdrawableCreditResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.GetWalletResponse> getWallet_Pre($grpc.ServiceCall call, $async.Future<$5.GetWalletRequest> request) async {
    return getWallet(call, await request);
  }

  $async.Future<$5.GetWalletsResponse> getWallets_Pre($grpc.ServiceCall call, $async.Future<$5.GetWalletsRequest> request) async {
    return getWallets(call, await request);
  }

  $async.Future<$5.UpdateWithdrawableCreditBalanceResponse> updateWithdrawableCreditBalance_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateWithdrawableCreditBalanceRequest> request) async {
    return updateWithdrawableCreditBalance(call, await request);
  }

  $async.Future<$5.UpdateNonWithdrawableCreditResponse> updateNonWithdrawableCreditBalance_Pre($grpc.ServiceCall call, $async.Future<$5.UpdateNonWithdrawableCreditBalanceRequest> request) async {
    return updateNonWithdrawableCreditBalance(call, await request);
  }

  $async.Future<$5.GetWalletResponse> getWallet($grpc.ServiceCall call, $5.GetWalletRequest request);
  $async.Future<$5.GetWalletsResponse> getWallets($grpc.ServiceCall call, $5.GetWalletsRequest request);
  $async.Future<$5.UpdateWithdrawableCreditBalanceResponse> updateWithdrawableCreditBalance($grpc.ServiceCall call, $5.UpdateWithdrawableCreditBalanceRequest request);
  $async.Future<$5.UpdateNonWithdrawableCreditResponse> updateNonWithdrawableCreditBalance($grpc.ServiceCall call, $5.UpdateNonWithdrawableCreditBalanceRequest request);
}
