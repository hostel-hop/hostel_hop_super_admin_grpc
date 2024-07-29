//
//  Generated code. Do not modify.
//  source: wallet.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetWalletsRequest extends $pb.GeneratedMessage {
  factory GetWalletsRequest({
    $core.String? query,
  }) {
    final $result = create();
    if (query != null) {
      $result.query = query;
    }
    return $result;
  }
  GetWalletsRequest._() : super();
  factory GetWalletsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWalletsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWalletsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWalletsRequest clone() => GetWalletsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWalletsRequest copyWith(void Function(GetWalletsRequest) updates) => super.copyWith((message) => updates(message as GetWalletsRequest)) as GetWalletsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWalletsRequest create() => GetWalletsRequest._();
  GetWalletsRequest createEmptyInstance() => create();
  static $pb.PbList<GetWalletsRequest> createRepeated() => $pb.PbList<GetWalletsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetWalletsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWalletsRequest>(create);
  static GetWalletsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);
}

class GetWalletsResponse extends $pb.GeneratedMessage {
  factory GetWalletsResponse({
    $core.Iterable<Wallet>? wallets,
  }) {
    final $result = create();
    if (wallets != null) {
      $result.wallets.addAll(wallets);
    }
    return $result;
  }
  GetWalletsResponse._() : super();
  factory GetWalletsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWalletsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWalletsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..pc<Wallet>(1, _omitFieldNames ? '' : 'wallets', $pb.PbFieldType.PM, subBuilder: Wallet.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWalletsResponse clone() => GetWalletsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWalletsResponse copyWith(void Function(GetWalletsResponse) updates) => super.copyWith((message) => updates(message as GetWalletsResponse)) as GetWalletsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWalletsResponse create() => GetWalletsResponse._();
  GetWalletsResponse createEmptyInstance() => create();
  static $pb.PbList<GetWalletsResponse> createRepeated() => $pb.PbList<GetWalletsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetWalletsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWalletsResponse>(create);
  static GetWalletsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Wallet> get wallets => $_getList(0);
}

class GetWalletRequest extends $pb.GeneratedMessage {
  factory GetWalletRequest({
    $core.String? backpackerId,
  }) {
    final $result = create();
    if (backpackerId != null) {
      $result.backpackerId = backpackerId;
    }
    return $result;
  }
  GetWalletRequest._() : super();
  factory GetWalletRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWalletRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWalletRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'backpackerId', protoName: 'backpackerId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWalletRequest clone() => GetWalletRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWalletRequest copyWith(void Function(GetWalletRequest) updates) => super.copyWith((message) => updates(message as GetWalletRequest)) as GetWalletRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWalletRequest create() => GetWalletRequest._();
  GetWalletRequest createEmptyInstance() => create();
  static $pb.PbList<GetWalletRequest> createRepeated() => $pb.PbList<GetWalletRequest>();
  @$core.pragma('dart2js:noInline')
  static GetWalletRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWalletRequest>(create);
  static GetWalletRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get backpackerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set backpackerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBackpackerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBackpackerId() => clearField(1);
}

class GetWalletResponse extends $pb.GeneratedMessage {
  factory GetWalletResponse({
    Wallet? wallet,
  }) {
    final $result = create();
    if (wallet != null) {
      $result.wallet = wallet;
    }
    return $result;
  }
  GetWalletResponse._() : super();
  factory GetWalletResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWalletResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetWalletResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..aOM<Wallet>(1, _omitFieldNames ? '' : 'wallet', subBuilder: Wallet.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWalletResponse clone() => GetWalletResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWalletResponse copyWith(void Function(GetWalletResponse) updates) => super.copyWith((message) => updates(message as GetWalletResponse)) as GetWalletResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetWalletResponse create() => GetWalletResponse._();
  GetWalletResponse createEmptyInstance() => create();
  static $pb.PbList<GetWalletResponse> createRepeated() => $pb.PbList<GetWalletResponse>();
  @$core.pragma('dart2js:noInline')
  static GetWalletResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWalletResponse>(create);
  static GetWalletResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Wallet get wallet => $_getN(0);
  @$pb.TagNumber(1)
  set wallet(Wallet v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasWallet() => $_has(0);
  @$pb.TagNumber(1)
  void clearWallet() => clearField(1);
  @$pb.TagNumber(1)
  Wallet ensureWallet() => $_ensure(0);
}

class UpdateWithdrawableCreditBalanceRequest extends $pb.GeneratedMessage {
  factory UpdateWithdrawableCreditBalanceRequest({
    $core.int? addedCredits,
    $core.String? backpackerId,
  }) {
    final $result = create();
    if (addedCredits != null) {
      $result.addedCredits = addedCredits;
    }
    if (backpackerId != null) {
      $result.backpackerId = backpackerId;
    }
    return $result;
  }
  UpdateWithdrawableCreditBalanceRequest._() : super();
  factory UpdateWithdrawableCreditBalanceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateWithdrawableCreditBalanceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateWithdrawableCreditBalanceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'addedCredits', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'backpackerId', protoName: 'backpackerId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateWithdrawableCreditBalanceRequest clone() => UpdateWithdrawableCreditBalanceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateWithdrawableCreditBalanceRequest copyWith(void Function(UpdateWithdrawableCreditBalanceRequest) updates) => super.copyWith((message) => updates(message as UpdateWithdrawableCreditBalanceRequest)) as UpdateWithdrawableCreditBalanceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateWithdrawableCreditBalanceRequest create() => UpdateWithdrawableCreditBalanceRequest._();
  UpdateWithdrawableCreditBalanceRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateWithdrawableCreditBalanceRequest> createRepeated() => $pb.PbList<UpdateWithdrawableCreditBalanceRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateWithdrawableCreditBalanceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateWithdrawableCreditBalanceRequest>(create);
  static UpdateWithdrawableCreditBalanceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get addedCredits => $_getIZ(0);
  @$pb.TagNumber(1)
  set addedCredits($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddedCredits() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddedCredits() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get backpackerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set backpackerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBackpackerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBackpackerId() => clearField(2);
}

class UpdateNonWithdrawableCreditBalanceRequest extends $pb.GeneratedMessage {
  factory UpdateNonWithdrawableCreditBalanceRequest({
    $core.int? addedCredits,
    $core.String? backpackerId,
  }) {
    final $result = create();
    if (addedCredits != null) {
      $result.addedCredits = addedCredits;
    }
    if (backpackerId != null) {
      $result.backpackerId = backpackerId;
    }
    return $result;
  }
  UpdateNonWithdrawableCreditBalanceRequest._() : super();
  factory UpdateNonWithdrawableCreditBalanceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateNonWithdrawableCreditBalanceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateNonWithdrawableCreditBalanceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'addedCredits', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'backpackerId', protoName: 'backpackerId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateNonWithdrawableCreditBalanceRequest clone() => UpdateNonWithdrawableCreditBalanceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateNonWithdrawableCreditBalanceRequest copyWith(void Function(UpdateNonWithdrawableCreditBalanceRequest) updates) => super.copyWith((message) => updates(message as UpdateNonWithdrawableCreditBalanceRequest)) as UpdateNonWithdrawableCreditBalanceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateNonWithdrawableCreditBalanceRequest create() => UpdateNonWithdrawableCreditBalanceRequest._();
  UpdateNonWithdrawableCreditBalanceRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateNonWithdrawableCreditBalanceRequest> createRepeated() => $pb.PbList<UpdateNonWithdrawableCreditBalanceRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateNonWithdrawableCreditBalanceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateNonWithdrawableCreditBalanceRequest>(create);
  static UpdateNonWithdrawableCreditBalanceRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get addedCredits => $_getIZ(0);
  @$pb.TagNumber(1)
  set addedCredits($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddedCredits() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddedCredits() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get backpackerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set backpackerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBackpackerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearBackpackerId() => clearField(2);
}

class UpdateNonWithdrawableCreditResponse extends $pb.GeneratedMessage {
  factory UpdateNonWithdrawableCreditResponse() => create();
  UpdateNonWithdrawableCreditResponse._() : super();
  factory UpdateNonWithdrawableCreditResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateNonWithdrawableCreditResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateNonWithdrawableCreditResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateNonWithdrawableCreditResponse clone() => UpdateNonWithdrawableCreditResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateNonWithdrawableCreditResponse copyWith(void Function(UpdateNonWithdrawableCreditResponse) updates) => super.copyWith((message) => updates(message as UpdateNonWithdrawableCreditResponse)) as UpdateNonWithdrawableCreditResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateNonWithdrawableCreditResponse create() => UpdateNonWithdrawableCreditResponse._();
  UpdateNonWithdrawableCreditResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateNonWithdrawableCreditResponse> createRepeated() => $pb.PbList<UpdateNonWithdrawableCreditResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateNonWithdrawableCreditResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateNonWithdrawableCreditResponse>(create);
  static UpdateNonWithdrawableCreditResponse? _defaultInstance;
}

class UpdateWithdrawableCreditBalanceResponse extends $pb.GeneratedMessage {
  factory UpdateWithdrawableCreditBalanceResponse() => create();
  UpdateWithdrawableCreditBalanceResponse._() : super();
  factory UpdateWithdrawableCreditBalanceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateWithdrawableCreditBalanceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateWithdrawableCreditBalanceResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateWithdrawableCreditBalanceResponse clone() => UpdateWithdrawableCreditBalanceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateWithdrawableCreditBalanceResponse copyWith(void Function(UpdateWithdrawableCreditBalanceResponse) updates) => super.copyWith((message) => updates(message as UpdateWithdrawableCreditBalanceResponse)) as UpdateWithdrawableCreditBalanceResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateWithdrawableCreditBalanceResponse create() => UpdateWithdrawableCreditBalanceResponse._();
  UpdateWithdrawableCreditBalanceResponse createEmptyInstance() => create();
  static $pb.PbList<UpdateWithdrawableCreditBalanceResponse> createRepeated() => $pb.PbList<UpdateWithdrawableCreditBalanceResponse>();
  @$core.pragma('dart2js:noInline')
  static UpdateWithdrawableCreditBalanceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateWithdrawableCreditBalanceResponse>(create);
  static UpdateWithdrawableCreditBalanceResponse? _defaultInstance;
}

class Wallet extends $pb.GeneratedMessage {
  factory Wallet({
    $core.String? backpackerId,
    $core.String? username,
    $core.int? balanceOfWithdrawableCredits,
    $core.int? balanceOfNonWithdrawableCredits,
    $core.int? balanceOfPendingWithdrawableCredits,
    $core.int? balanceOfPendingNonWithdrawableCredits,
  }) {
    final $result = create();
    if (backpackerId != null) {
      $result.backpackerId = backpackerId;
    }
    if (username != null) {
      $result.username = username;
    }
    if (balanceOfWithdrawableCredits != null) {
      $result.balanceOfWithdrawableCredits = balanceOfWithdrawableCredits;
    }
    if (balanceOfNonWithdrawableCredits != null) {
      $result.balanceOfNonWithdrawableCredits = balanceOfNonWithdrawableCredits;
    }
    if (balanceOfPendingWithdrawableCredits != null) {
      $result.balanceOfPendingWithdrawableCredits = balanceOfPendingWithdrawableCredits;
    }
    if (balanceOfPendingNonWithdrawableCredits != null) {
      $result.balanceOfPendingNonWithdrawableCredits = balanceOfPendingNonWithdrawableCredits;
    }
    return $result;
  }
  Wallet._() : super();
  factory Wallet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Wallet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Wallet', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'backpackerId')
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'balanceOfWithdrawableCredits', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'balanceOfNonWithdrawableCredits', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'balanceOfPendingWithdrawableCredits', $pb.PbFieldType.O3)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'balanceOfPendingNonWithdrawableCredits', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Wallet clone() => Wallet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Wallet copyWith(void Function(Wallet) updates) => super.copyWith((message) => updates(message as Wallet)) as Wallet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Wallet create() => Wallet._();
  Wallet createEmptyInstance() => create();
  static $pb.PbList<Wallet> createRepeated() => $pb.PbList<Wallet>();
  @$core.pragma('dart2js:noInline')
  static Wallet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Wallet>(create);
  static Wallet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get backpackerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set backpackerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBackpackerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBackpackerId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get balanceOfWithdrawableCredits => $_getIZ(2);
  @$pb.TagNumber(3)
  set balanceOfWithdrawableCredits($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBalanceOfWithdrawableCredits() => $_has(2);
  @$pb.TagNumber(3)
  void clearBalanceOfWithdrawableCredits() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get balanceOfNonWithdrawableCredits => $_getIZ(3);
  @$pb.TagNumber(4)
  set balanceOfNonWithdrawableCredits($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBalanceOfNonWithdrawableCredits() => $_has(3);
  @$pb.TagNumber(4)
  void clearBalanceOfNonWithdrawableCredits() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get balanceOfPendingWithdrawableCredits => $_getIZ(4);
  @$pb.TagNumber(5)
  set balanceOfPendingWithdrawableCredits($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBalanceOfPendingWithdrawableCredits() => $_has(4);
  @$pb.TagNumber(5)
  void clearBalanceOfPendingWithdrawableCredits() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get balanceOfPendingNonWithdrawableCredits => $_getIZ(5);
  @$pb.TagNumber(6)
  set balanceOfPendingNonWithdrawableCredits($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBalanceOfPendingNonWithdrawableCredits() => $_has(5);
  @$pb.TagNumber(6)
  void clearBalanceOfPendingNonWithdrawableCredits() => clearField(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
