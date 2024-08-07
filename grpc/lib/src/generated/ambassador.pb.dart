//
//  Generated code. Do not modify.
//  source: ambassador.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetReferralsRequest extends $pb.GeneratedMessage {
  factory GetReferralsRequest({
    $core.String? query,
  }) {
    final $result = create();
    if (query != null) {
      $result.query = query;
    }
    return $result;
  }
  GetReferralsRequest._() : super();
  factory GetReferralsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetReferralsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetReferralsRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetReferralsRequest clone() => GetReferralsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetReferralsRequest copyWith(void Function(GetReferralsRequest) updates) => super.copyWith((message) => updates(message as GetReferralsRequest)) as GetReferralsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetReferralsRequest create() => GetReferralsRequest._();
  GetReferralsRequest createEmptyInstance() => create();
  static $pb.PbList<GetReferralsRequest> createRepeated() => $pb.PbList<GetReferralsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetReferralsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetReferralsRequest>(create);
  static GetReferralsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);
}

class GetReferralsResponse extends $pb.GeneratedMessage {
  factory GetReferralsResponse({
    $core.Iterable<Referral>? referrals,
  }) {
    final $result = create();
    if (referrals != null) {
      $result.referrals.addAll(referrals);
    }
    return $result;
  }
  GetReferralsResponse._() : super();
  factory GetReferralsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetReferralsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetReferralsResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..pc<Referral>(1, _omitFieldNames ? '' : 'referrals', $pb.PbFieldType.PM, subBuilder: Referral.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetReferralsResponse clone() => GetReferralsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetReferralsResponse copyWith(void Function(GetReferralsResponse) updates) => super.copyWith((message) => updates(message as GetReferralsResponse)) as GetReferralsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetReferralsResponse create() => GetReferralsResponse._();
  GetReferralsResponse createEmptyInstance() => create();
  static $pb.PbList<GetReferralsResponse> createRepeated() => $pb.PbList<GetReferralsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetReferralsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetReferralsResponse>(create);
  static GetReferralsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Referral> get referrals => $_getList(0);
}

class Referral extends $pb.GeneratedMessage {
  factory Referral({
    $core.String? backpackerId,
    $core.String? code,
    $core.int? type,
    $core.String? username,
  }) {
    final $result = create();
    if (backpackerId != null) {
      $result.backpackerId = backpackerId;
    }
    if (code != null) {
      $result.code = code;
    }
    if (type != null) {
      $result.type = type;
    }
    if (username != null) {
      $result.username = username;
    }
    return $result;
  }
  Referral._() : super();
  factory Referral.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Referral.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Referral', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'backpackerId')
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'username')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Referral clone() => Referral()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Referral copyWith(void Function(Referral) updates) => super.copyWith((message) => updates(message as Referral)) as Referral;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Referral create() => Referral._();
  Referral createEmptyInstance() => create();
  static $pb.PbList<Referral> createRepeated() => $pb.PbList<Referral>();
  @$core.pragma('dart2js:noInline')
  static Referral getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Referral>(create);
  static Referral? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get backpackerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set backpackerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBackpackerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBackpackerId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get username => $_getSZ(3);
  @$pb.TagNumber(4)
  set username($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUsername() => $_has(3);
  @$pb.TagNumber(4)
  void clearUsername() => clearField(4);
}

class ChangeAmbassadorStatusRequest extends $pb.GeneratedMessage {
  factory ChangeAmbassadorStatusRequest({
    $core.String? backpackerId,
    $core.int? type,
  }) {
    final $result = create();
    if (backpackerId != null) {
      $result.backpackerId = backpackerId;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  ChangeAmbassadorStatusRequest._() : super();
  factory ChangeAmbassadorStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangeAmbassadorStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChangeAmbassadorStatusRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'backpackerId')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChangeAmbassadorStatusRequest clone() => ChangeAmbassadorStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChangeAmbassadorStatusRequest copyWith(void Function(ChangeAmbassadorStatusRequest) updates) => super.copyWith((message) => updates(message as ChangeAmbassadorStatusRequest)) as ChangeAmbassadorStatusRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangeAmbassadorStatusRequest create() => ChangeAmbassadorStatusRequest._();
  ChangeAmbassadorStatusRequest createEmptyInstance() => create();
  static $pb.PbList<ChangeAmbassadorStatusRequest> createRepeated() => $pb.PbList<ChangeAmbassadorStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static ChangeAmbassadorStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangeAmbassadorStatusRequest>(create);
  static ChangeAmbassadorStatusRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get backpackerId => $_getSZ(0);
  @$pb.TagNumber(1)
  set backpackerId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBackpackerId() => $_has(0);
  @$pb.TagNumber(1)
  void clearBackpackerId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get type => $_getIZ(1);
  @$pb.TagNumber(2)
  set type($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class ChangeAmbassadorStatusResponse extends $pb.GeneratedMessage {
  factory ChangeAmbassadorStatusResponse() => create();
  ChangeAmbassadorStatusResponse._() : super();
  factory ChangeAmbassadorStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChangeAmbassadorStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ChangeAmbassadorStatusResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChangeAmbassadorStatusResponse clone() => ChangeAmbassadorStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChangeAmbassadorStatusResponse copyWith(void Function(ChangeAmbassadorStatusResponse) updates) => super.copyWith((message) => updates(message as ChangeAmbassadorStatusResponse)) as ChangeAmbassadorStatusResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChangeAmbassadorStatusResponse create() => ChangeAmbassadorStatusResponse._();
  ChangeAmbassadorStatusResponse createEmptyInstance() => create();
  static $pb.PbList<ChangeAmbassadorStatusResponse> createRepeated() => $pb.PbList<ChangeAmbassadorStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static ChangeAmbassadorStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChangeAmbassadorStatusResponse>(create);
  static ChangeAmbassadorStatusResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
