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

import 'wallet.pb.dart' as $4;

export 'wallet.pb.dart';

@$pb.GrpcServiceName('hostelhop.v1.Wallets')
class WalletsClient extends $grpc.Client {
  static final _$getWallet = $grpc.ClientMethod<$4.GetWalletRequest, $4.GetWalletResponse>(
      '/hostelhop.v1.Wallets/GetWallet',
      ($4.GetWalletRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetWalletResponse.fromBuffer(value));
  static final _$getWallets = $grpc.ClientMethod<$4.GetWalletsRequest, $4.GetWalletsResponse>(
      '/hostelhop.v1.Wallets/GetWallets',
      ($4.GetWalletsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetWalletsResponse.fromBuffer(value));
  static final _$updateWithdrawableCreditBalance = $grpc.ClientMethod<$4.UpdateWithdrawableCreditBalanceRequest, $4.UpdateWithdrawableCreditBalanceResponse>(
      '/hostelhop.v1.Wallets/UpdateWithdrawableCreditBalance',
      ($4.UpdateWithdrawableCreditBalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateWithdrawableCreditBalanceResponse.fromBuffer(value));
  static final _$updateNonWithdrawableCreditBalance = $grpc.ClientMethod<$4.UpdateNonWithdrawableCreditBalanceRequest, $4.UpdateNonWithdrawableCreditResponse>(
      '/hostelhop.v1.Wallets/UpdateNonWithdrawableCreditBalance',
      ($4.UpdateNonWithdrawableCreditBalanceRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.UpdateNonWithdrawableCreditResponse.fromBuffer(value));

  WalletsClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$4.GetWalletResponse> getWallet($4.GetWalletRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWallet, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetWalletsResponse> getWallets($4.GetWalletsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWallets, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateWithdrawableCreditBalanceResponse> updateWithdrawableCreditBalance($4.UpdateWithdrawableCreditBalanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateWithdrawableCreditBalance, request, options: options);
  }

  $grpc.ResponseFuture<$4.UpdateNonWithdrawableCreditResponse> updateNonWithdrawableCreditBalance($4.UpdateNonWithdrawableCreditBalanceRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateNonWithdrawableCreditBalance, request, options: options);
  }
}

@$pb.GrpcServiceName('hostelhop.v1.Wallets')
abstract class WalletsServiceBase extends $grpc.Service {
  $core.String get $name => 'hostelhop.v1.Wallets';

  WalletsServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.GetWalletRequest, $4.GetWalletResponse>(
        'GetWallet',
        getWallet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetWalletRequest.fromBuffer(value),
        ($4.GetWalletResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetWalletsRequest, $4.GetWalletsResponse>(
        'GetWallets',
        getWallets_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetWalletsRequest.fromBuffer(value),
        ($4.GetWalletsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateWithdrawableCreditBalanceRequest, $4.UpdateWithdrawableCreditBalanceResponse>(
        'UpdateWithdrawableCreditBalance',
        updateWithdrawableCreditBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateWithdrawableCreditBalanceRequest.fromBuffer(value),
        ($4.UpdateWithdrawableCreditBalanceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.UpdateNonWithdrawableCreditBalanceRequest, $4.UpdateNonWithdrawableCreditResponse>(
        'UpdateNonWithdrawableCreditBalance',
        updateNonWithdrawableCreditBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.UpdateNonWithdrawableCreditBalanceRequest.fromBuffer(value),
        ($4.UpdateNonWithdrawableCreditResponse value) => value.writeToBuffer()));
  }

  $async.Future<$4.GetWalletResponse> getWallet_Pre($grpc.ServiceCall call, $async.Future<$4.GetWalletRequest> request) async {
    return getWallet(call, await request);
  }

  $async.Future<$4.GetWalletsResponse> getWallets_Pre($grpc.ServiceCall call, $async.Future<$4.GetWalletsRequest> request) async {
    return getWallets(call, await request);
  }

  $async.Future<$4.UpdateWithdrawableCreditBalanceResponse> updateWithdrawableCreditBalance_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateWithdrawableCreditBalanceRequest> request) async {
    return updateWithdrawableCreditBalance(call, await request);
  }

  $async.Future<$4.UpdateNonWithdrawableCreditResponse> updateNonWithdrawableCreditBalance_Pre($grpc.ServiceCall call, $async.Future<$4.UpdateNonWithdrawableCreditBalanceRequest> request) async {
    return updateNonWithdrawableCreditBalance(call, await request);
  }

  $async.Future<$4.GetWalletResponse> getWallet($grpc.ServiceCall call, $4.GetWalletRequest request);
  $async.Future<$4.GetWalletsResponse> getWallets($grpc.ServiceCall call, $4.GetWalletsRequest request);
  $async.Future<$4.UpdateWithdrawableCreditBalanceResponse> updateWithdrawableCreditBalance($grpc.ServiceCall call, $4.UpdateWithdrawableCreditBalanceRequest request);
  $async.Future<$4.UpdateNonWithdrawableCreditResponse> updateNonWithdrawableCreditBalance($grpc.ServiceCall call, $4.UpdateNonWithdrawableCreditBalanceRequest request);
}
