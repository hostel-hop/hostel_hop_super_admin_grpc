//
//  Generated code. Do not modify.
//  source: ota_reservation_push.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ListOtaReservationPushesRequest extends $pb.GeneratedMessage {
  factory ListOtaReservationPushesRequest({
    $core.String? query,
  }) {
    final $result = create();
    if (query != null) {
      $result.query = query;
    }
    return $result;
  }
  ListOtaReservationPushesRequest._() : super();
  factory ListOtaReservationPushesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListOtaReservationPushesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListOtaReservationPushesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'query')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListOtaReservationPushesRequest clone() => ListOtaReservationPushesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListOtaReservationPushesRequest copyWith(void Function(ListOtaReservationPushesRequest) updates) => super.copyWith((message) => updates(message as ListOtaReservationPushesRequest)) as ListOtaReservationPushesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListOtaReservationPushesRequest create() => ListOtaReservationPushesRequest._();
  ListOtaReservationPushesRequest createEmptyInstance() => create();
  static $pb.PbList<ListOtaReservationPushesRequest> createRepeated() => $pb.PbList<ListOtaReservationPushesRequest>();
  @$core.pragma('dart2js:noInline')
  static ListOtaReservationPushesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListOtaReservationPushesRequest>(create);
  static ListOtaReservationPushesRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get query => $_getSZ(0);
  @$pb.TagNumber(1)
  set query($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuery() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuery() => clearField(1);
}

class ListOtaReservationPushesResponse extends $pb.GeneratedMessage {
  factory ListOtaReservationPushesResponse({
    $core.Iterable<OtaReservationPushData>? otaReservationPushes,
  }) {
    final $result = create();
    if (otaReservationPushes != null) {
      $result.otaReservationPushes.addAll(otaReservationPushes);
    }
    return $result;
  }
  ListOtaReservationPushesResponse._() : super();
  factory ListOtaReservationPushesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListOtaReservationPushesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListOtaReservationPushesResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..pc<OtaReservationPushData>(1, _omitFieldNames ? '' : 'otaReservationPushes', $pb.PbFieldType.PM, subBuilder: OtaReservationPushData.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListOtaReservationPushesResponse clone() => ListOtaReservationPushesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListOtaReservationPushesResponse copyWith(void Function(ListOtaReservationPushesResponse) updates) => super.copyWith((message) => updates(message as ListOtaReservationPushesResponse)) as ListOtaReservationPushesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListOtaReservationPushesResponse create() => ListOtaReservationPushesResponse._();
  ListOtaReservationPushesResponse createEmptyInstance() => create();
  static $pb.PbList<ListOtaReservationPushesResponse> createRepeated() => $pb.PbList<ListOtaReservationPushesResponse>();
  @$core.pragma('dart2js:noInline')
  static ListOtaReservationPushesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListOtaReservationPushesResponse>(create);
  static ListOtaReservationPushesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<OtaReservationPushData> get otaReservationPushes => $_getList(0);
}

class OtaReservationPushData extends $pb.GeneratedMessage {
  factory OtaReservationPushData({
    $core.String? id,
    $core.String? property,
    $core.String? channelManager,
    $core.String? reservation,
    $core.String? type,
    $core.String? status,
    $core.String? createdAt,
    $core.String? updatedAt,
    $core.String? lastAttemptedAt,
    $core.String? retries,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (property != null) {
      $result.property = property;
    }
    if (channelManager != null) {
      $result.channelManager = channelManager;
    }
    if (reservation != null) {
      $result.reservation = reservation;
    }
    if (type != null) {
      $result.type = type;
    }
    if (status != null) {
      $result.status = status;
    }
    if (createdAt != null) {
      $result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      $result.updatedAt = updatedAt;
    }
    if (lastAttemptedAt != null) {
      $result.lastAttemptedAt = lastAttemptedAt;
    }
    if (retries != null) {
      $result.retries = retries;
    }
    return $result;
  }
  OtaReservationPushData._() : super();
  factory OtaReservationPushData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OtaReservationPushData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OtaReservationPushData', package: const $pb.PackageName(_omitMessageNames ? '' : 'hostelhop.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'property')
    ..aOS(3, _omitFieldNames ? '' : 'channelManager')
    ..aOS(4, _omitFieldNames ? '' : 'reservation')
    ..aOS(5, _omitFieldNames ? '' : 'type')
    ..aOS(6, _omitFieldNames ? '' : 'status')
    ..aOS(7, _omitFieldNames ? '' : 'createdAt')
    ..aOS(8, _omitFieldNames ? '' : 'updatedAt')
    ..aOS(9, _omitFieldNames ? '' : 'lastAttemptedAt')
    ..aOS(10, _omitFieldNames ? '' : 'retries')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OtaReservationPushData clone() => OtaReservationPushData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OtaReservationPushData copyWith(void Function(OtaReservationPushData) updates) => super.copyWith((message) => updates(message as OtaReservationPushData)) as OtaReservationPushData;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OtaReservationPushData create() => OtaReservationPushData._();
  OtaReservationPushData createEmptyInstance() => create();
  static $pb.PbList<OtaReservationPushData> createRepeated() => $pb.PbList<OtaReservationPushData>();
  @$core.pragma('dart2js:noInline')
  static OtaReservationPushData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OtaReservationPushData>(create);
  static OtaReservationPushData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get property => $_getSZ(1);
  @$pb.TagNumber(2)
  set property($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProperty() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperty() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get channelManager => $_getSZ(2);
  @$pb.TagNumber(3)
  set channelManager($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChannelManager() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannelManager() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get reservation => $_getSZ(3);
  @$pb.TagNumber(4)
  set reservation($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReservation() => $_has(3);
  @$pb.TagNumber(4)
  void clearReservation() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get type => $_getSZ(4);
  @$pb.TagNumber(5)
  set type($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get status => $_getSZ(5);
  @$pb.TagNumber(6)
  set status($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get createdAt => $_getSZ(6);
  @$pb.TagNumber(7)
  set createdAt($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreatedAt() => $_has(6);
  @$pb.TagNumber(7)
  void clearCreatedAt() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get updatedAt => $_getSZ(7);
  @$pb.TagNumber(8)
  set updatedAt($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUpdatedAt() => $_has(7);
  @$pb.TagNumber(8)
  void clearUpdatedAt() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get lastAttemptedAt => $_getSZ(8);
  @$pb.TagNumber(9)
  set lastAttemptedAt($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLastAttemptedAt() => $_has(8);
  @$pb.TagNumber(9)
  void clearLastAttemptedAt() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get retries => $_getSZ(9);
  @$pb.TagNumber(10)
  set retries($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRetries() => $_has(9);
  @$pb.TagNumber(10)
  void clearRetries() => clearField(10);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
